<?php
namespace App\Controller;

use App\Controller\AppController;
use Cake\Core\Configure;
use Cake\ORM\TableRegistry;
use Cake\Http\Response; 
/**
 * Games Controller
 *
 * @property \App\Model\Table\GamesTable $Games
 *
 * @method \App\Model\Entity\Game[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class GamesController extends AppController {

    public function initialize() {
        parent::initialize();
        $this->loadComponent('RequestHandler');
    }   

    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index() {  
        $games = $this->paginate($this->Games);

        $this->set(compact('games'));
    }

    /**
     * View method
     *
     * @param string|null $id Game id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $game = $this->Games->get($id, [
            'contain' => ['GamePlayers'],
        ]);

        $this->set('game', $game);
    } 

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $game = $this->Games->newEntity(); 

        if ($this->request->is('post')) { 
            $game = $this->Games->patchEntity($game, $this->request->getData());  
            if ($this->Games->save($game)) { 

                // get last insert id
                $game_id = $game->id;

                // call the cards from bootstrap
                $cardConfig = Configure::read('cardConfig');

                // make it random
                shuffle($cardConfig);  
                $total_player = $game->total_player;
                $distribute = $this->divideArray($cardConfig, $total_player);

                

                // using for loop to insert distributed card by number of player
                $players = array();
                $number = 1;
                for($i = 0; $i < count($distribute); $i++) {
                    $card = implode(',', $distribute[$i]);  
                    $players[] = [ 
                            'name' => 'Player ' . $number,
                            'game_id' => $game_id,
                            'card' => $card 
                        ];
                    $number++;
                } 

                $gamePlayers  = TableRegistry::get('GamePlayers');
                $entities = $gamePlayers->newEntities($players);

                //Now, we have transformed our array into entities on $entities, this is the variable we need to save
                if(!$gamePlayers->saveMany($entities)) {
                    $this->Flash->error(__('The game could not be saved.')); 
                } 
                $this->Flash->success(__('The game has been saved.')); 
                return $this->redirect(['action' => 'index']);
                
            }
            $this->Flash->error(__('The game could not be saved. Please, try again.'));
        }
        $this->set(compact('game'));
    }

    /**
     * Private method
     * to divide the cards based on number of players
     * return Array
     */ 
    private function divideArray(array $cards, int $total_player, $preserve = null): array {
        // round the number of cards
        $distribute = (int)ceil(count($cards) / $total_player);

        if ($distribute > 0) {
            return array_chunk($cards, $distribute, $preserve);
        }

        return $cards;
    } 
}
