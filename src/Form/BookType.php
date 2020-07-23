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
            ->add('seat', ChoiceType::class, [
                'choices' => range(1,7,0.5),])
            ->add('user')
            ->add('tour')
            ->add('message');
    }
}