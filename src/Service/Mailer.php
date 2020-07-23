<?php


namespace App\Service;

use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\DependencyInjection\ParameterBag\ParameterBagInterface;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Address;


class Mailer
{
    public function __construct(MailerInterface $mailer, ParameterBagInterface $param) {
        $this->mailer = $mailer;
        $this->param = $param;
    }

    public function confirmationMail($entity)
    {
        $email = (new TemplatedEmail())
            ->from(new Address ($this->param->get('mailer_from'), "The Wild Circus"))
            ->to($entity->getEmail())
            ->subject("Confirmation Email")
            ->htmlTemplate('emails/confirmation_email.html.twig')
            ->context([
                'contact' => $entity,
            ]);

        $this->mailer->send($email);
    }

    public function accountMail($entity)
    {
        $email = (new TemplatedEmail())
            ->from(new Address ($this->param->get('mailer_from'), "The Wild Circus"))
            ->to($entity->getEmail())
            ->subject("You successfully created an account")
            ->htmlTemplate('emails/account_email.html.twig')
            ->context([
                'contact' => $entity,
            ]);

        $this->mailer->send($email);
    }

    public function adminContactEmail($entity)
    {
        $email = (new TemplatedEmail())
            ->from(new Address ($this->param->get('mailer_from'), "The Wild Circus"))
            ->to($entity->getEmail())
            ->subject("Réponse suite à votre demande")
            ->htmlTemplate('emails/contact_email.html.twig')
            ->context([
                'contact' => $entity,
            ]);

        $this->mailer->send($email);
    }
}