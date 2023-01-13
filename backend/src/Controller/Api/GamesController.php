<?php

namespace App\Controller\Api;

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

    /*
    *   The cards will be distribute when total player more than 0
    *   If total players is more than 52, the 53rd player and so on will not receive any card without error
    */

    public function apiAdd() {   
        //$this->request->allowMethod(['post', 'put']);  
        $this->autoRender = false;
        $json['ok'] = false;

        if ($this->request->is('post')) {   
            if($this->request->getData('total_player') > 0) {
                // Find last game to generate running number name
                $query = $this->Games->find('all', [
                    'order' => ['Games.id' => 'DESC']
                ]);
                $row = $query->first();
                if($row) {
                    $number = $row->id + 1;
                } else {
                    $number = 1;
                }
                 
                $game = $this->Games->newEntity();
                $game = $this->Games->patchEntity($game, $this->request->getData());  
                $game->name = "Game $number";

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
                    $error = 0;
                    for($i = 0; $i < count($distribute); $i++) {
                        // array to comma separated string
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
                        $error++;     
                    }  

                    if($error > 0) {
                        // when error, delete all
                        $this->GamePlayers->deleteAll(['game_id' => $game_id]);
                        $this->Games->delete($game_id);

                        $json['message'] = 'Unable to process request. Please contact administrator';
                    } else {
                        $json['ok'] = true;
                        $json['game_id'] = $game_id;
                        $json['message'] = 'Game has been saved';
                    }
                    
                } else {
                    $json['message'] = 'Game could not be saved';
                }
            } else {
                $json['message'] = 'Player must be greater than 0';
            }   
        }   

        $this->jsonResponse($json);
    }

    public function apiIndex() {   
        $this->response = $this->response->withCharset('UTF-8');  
        $this->paginate = [
            'order' => [
                'Games.id' => 'desc'
            ]
        ];
        $games = $this->paginate($this->Games);

        $this->jsonResponse($games);
    } 

    public function apiView($id = null) {
        $json['game'] = $this->Games->get($id);
        $json['players'] = array();
        $this->loadModel('GamePlayers'); 
        $players = $this->GamePlayers->find()
        ->where(['game_id' => $id]);

        foreach($players as $player) {
            // split separated by comma into array
            $explodes = explode(',', $player->card);
            $cards = array();
            // explode - into array
            foreach($explodes as $card) {
                $cards[] = explode('-', $card);
            }
            $json['players'][] = [
                'id' => $player->id,
                'name' => $player->name,
                'cards' => $cards,
                'total' => count($explodes)
            ];
        } 
        $this->jsonResponse($json);
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
