<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Artist;
use App\Entity\Tour;
use App\Repository\ArticleRepository;
use App\Repository\ArtistRepository;
use App\Repository\TeamRepository;
use App\Repository\TourRepository;
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
     * @Route("/artist/{id}", name="artist_details")
     */
    public function artist_details(Artist $artist)
    {
        return $this->render('home/artist_details.html.twig', [
            'artist' => $artist,
        ]);
    }

    /**
     * @Route("/tours", name="tours")
     */
    public function tours(TourRepository $tourRepository)
    {
        return $this->render('home/tours.html.twig', [
            'tours' => $tourRepository->findAll(),
        ]);
    }

    /**
     * @Route("/tour/{id}", name="tour_details")
     */
    public function tour_details(Tour $tour)
    {
        return $this->render('home/tour_details.html.twig', [
            'tour' => $tour,
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
