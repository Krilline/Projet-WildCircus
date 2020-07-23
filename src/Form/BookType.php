<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;

class BookType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('seat', ChoiceType::class,[
                'choices' => $this->getSeats() ]);
    }

    private function getSeats()
    {
        $seats = range(1, 12);

        return array_combine($seats, $seats);
    }
}