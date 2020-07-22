<?php

namespace App\Controller;

use App\Entity\Article;
use App\Repository\ArticleRepository;
use App\Repository\ArtistRepository;
use App\Repository\TeamRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(ArticleRepository $articleRepository, TeamRepository $teamRepository)
    {
        return $this->render('home/index.html.twig', [
            'articles' => $articleRepository->findAll(),
            'team' => $teamRepository->findOneBy([]),
        ]);
    }

    /**
     * @Route("/article/{id}", name="article_details")
     */
    public function article_details(Article $article)
    {
        return $this->render('home/article_details.html.twig', [
            'article' => $article,
        ]);
    }

    /**
     * @Route("/artists", name="artists")
     */
    public function artists(ArtistRepository $artistRepository)
    {
        return $this->render('home/artists.html.twig', [
            'artists' => $artistRepository->findAll(),
        ]);
    }

    /**
     * @Route("/tours", name="tours")
     */
    public function tours()
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }

    /**
     * @Route("/contact", name="contact")
     */
    public function contact()
    {
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }
}
