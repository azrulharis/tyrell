<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Game $game
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Game'), ['action' => 'edit', $game->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Game'), ['action' => 'delete', $game->id], ['confirm' => __('Are you sure you want to delete # {0}?', $game->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Games'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Game'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Game Players'), ['controller' => 'GamePlayers', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Game Player'), ['controller' => 'GamePlayers', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="games view large-9 medium-8 columns content">
    <h3><?= h($game->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($game->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($game->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Total Player') ?></th>
            <td><?= $this->Number->format($game->total_player) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Game Players') ?></h4>
        <?php if (!empty($game->game_players)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <th scope="col"><?= __('Id') ?></th> 
                <th scope="col"><?= __('Game Id') ?></th>
                <th scope="col"><?= __('Card') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
            <?php foreach ($game->game_players as $gamePlayers): ?>
            <tr>
                <td><?= h($gamePlayers->id) ?></td> 
                <td><?= h($gamePlayers->game_id) ?></td>
                <td><?= h($gamePlayers->card) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['controller' => 'GamePlayers', 'action' => 'view', $gamePlayers->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['controller' => 'GamePlayers', 'action' => 'edit', $gamePlayers->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['controller' => 'GamePlayers', 'action' => 'delete', $gamePlayers->id], ['confirm' => __('Are you sure you want to delete # {0}?', $gamePlayers->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>
        <?php endif; ?>
    </div>
</div>
