<?php

declare(strict_types=1);

namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;

final class UserPresenter extends Nette\Application\UI\Presenter
{
    private Nette\Database\Explorer $database;

    public function __construct(Nette\Database\Explorer $database)
    {
        $this->database = $database;
    }

    protected function createComponentUserForm(): Form
    {
        $form = new Form; // means Nette\Application\UI\Form

        $form->addText('jmeno', 'Jméno:')
            ->setRequired();

        $form->addText('prijmeni', 'Příjmení:')
            ->setRequired();

        $role = [
            'zavodnik' => 'Závodník',
            'technik' => 'Technik',
            'manazer' => 'Manažer',
            'spolujezdec' => 'Spolujezdec',
            'fotograf' => 'Fotograf'
        ];

        $form->addSelect('typ', 'Role:',$role )
            ->setRequired();

        $form->addSubmit('send', 'Přidat uživatele');

        $form->onSuccess[] = [$this, 'postFormSucceeded'];

        return $form;
    }

    public function postFormSucceeded(array $data): void
    {
        $post = $this->database
            ->table('users')
            ->insert($data);

        $this->flashMessage("Uživatel byl úspěšně přidán.", 'success');
    }
}