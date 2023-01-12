<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * GamePlayers Model
 *
 * @property \App\Model\Table\PlayersTable&\Cake\ORM\Association\BelongsTo $Players
 * @property \App\Model\Table\GamesTable&\Cake\ORM\Association\BelongsTo $Games
 *
 * @method \App\Model\Entity\GamePlayer get($primaryKey, $options = [])
 * @method \App\Model\Entity\GamePlayer newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\GamePlayer[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\GamePlayer|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\GamePlayer saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\GamePlayer patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\GamePlayer[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\GamePlayer findOrCreate($search, callable $callback = null, $options = [])
 */
class GamePlayersTable extends Table
{
    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->setTable('game_players');
        $this->setDisplayField('id');
        $this->setPrimaryKey('id');
 
        $this->belongsTo('Games', [
            'foreignKey' => 'game_id',
            'joinType' => 'INNER',
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->nonNegativeInteger('id')
            ->allowEmptyString('id', null, 'create');

        $validator
            ->scalar('card')
            ->maxLength('card', 255)
            ->requirePresence('card', 'create')
            ->notEmptyString('card');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    { 
        $rules->add($rules->existsIn(['game_id'], 'Games'));

        return $rules;
    }
}
