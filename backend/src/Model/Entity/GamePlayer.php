<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * GamePlayer Entity
 *
 * @property int $id
 * @property int $player_id
 * @property int $game_id
 * @property string $card
 *
 * @property \App\Model\Entity\Player $player
 * @property \App\Model\Entity\Game $game
 */
class GamePlayer extends Entity
{
    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        'player_id' => true,
        'name' => true,
        'game_id' => true,
        'card' => true,
        'player' => true,
        'game' => true,
    ];
}
