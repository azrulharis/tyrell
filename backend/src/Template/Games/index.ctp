<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Game[]|\Cake\Collection\CollectionInterface $games
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Game'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Game Players'), ['controller' => 'GamePlayers', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Game Player'), ['controller' => 'GamePlayers', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="games index large-9 medium-8 columns content">
    <h3><?= __('Games') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('name') ?></th>
                <th scope="col"><?= $this->Paginator->sort('total_player') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($games as $game): ?>
            <tr>
                <td><?= $this->Number->format($game->id) ?></td>
                <td><?= h($game->name) ?></td>
                <td><?= $this->Number->format($game->total_player) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $game->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $game->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $game->id], ['confirm' => __('Are you sure you want to delete # {0}?', $game->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
