<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;

final class HomepagePresenter extends Nette\Application\UI\Presenter
{
    private Nette\Database\Explorer $database;

    public function __construct(Nette\Database\Explorer $database)
    {
        $this->database = $database;
    }

    public function renderDefault(): void 
    {
        $this->template->users = $this->database
            ->table('users')
            ->limit(100);

        $this->template->teams = $this->database
            ->table('teams')
            ->limit(100);
    }

}