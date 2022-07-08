<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;

final class TeamPresenter extends Nette\Application\UI\Presenter
{
    private Nette\Database\Explorer $database;

    public function __construct(Nette\Database\Explorer $database)
    {
        $this->database = $database;

    }

    protected function createComponentUserForm($database): Form
    {
        $form = new Form;

        $form->addText('teamName', 'Název Týmu:')
            ->setRequired();

        // Závodníci

        $form->addText('zavodnik1', 'Závodník č.1:')
            ->setRequired();
        $form->addText('zavodnik2', 'Závodník č.2:');
        $form->addText('zavodnik3', 'Závodník č.3:');

        // Spolujezdci

        $form->addText('spolujezdec1', 'Spolujezdec č.1:')
            ->setRequired();
        $form->addText('spolujezdec2', 'Spolujezdec č.2:');
        $form->addText('spolujezdec3', 'Spolujezdec č.3:');

        // Technici

        $form->addText('technik1', 'Technik č.1:')
            ->setRequired();
        $form->addText('technik2', 'Technik č.2:');


        $form->addText('manazer', 'Manažer')
            ->setRequired();

        $form->addText('fotograf', 'Fotograf')
            ->setRequired();



        $form->addSubmit('send', 'Přidat uživatele');

        $form->onSuccess[] = [$this, 'postFormSucceeded'];

        return $form;
    }

    public function postFormSucceeded(array $data): void
    {
        $post = $this->database
            ->table('teams')
            ->insert($data);


        $this->flashMessage("Tým byl úspěšně vytvořen.", 'success');
        $this->redirect('Homepage:default');

    }

}