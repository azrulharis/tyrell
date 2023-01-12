<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\GamePlayersTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\GamePlayersTable Test Case
 */
class GamePlayersTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\GamePlayersTable
     */
    public $GamePlayers;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.GamePlayers',
        'app.Players',
        'app.Games',
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('GamePlayers') ? [] : ['className' => GamePlayersTable::class];
        $this->GamePlayers = TableRegistry::getTableLocator()->get('GamePlayers', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->GamePlayers);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
