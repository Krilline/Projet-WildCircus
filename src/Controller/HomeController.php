<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\Artist;
use App\Entity\Contact;
use App\Entity\Order;
use App\Entity\Tour;
use App\Form\BookType;
use App\Form\ContactType;
use App\Repository\ArticleRepository;
use App\Repository\ArtistRepository;
use App\Repository\TeamRepository;
use App\Repository\TourRepository;
use App\Service\CartService;
use App\Service\Mailer;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    private $cartService;
    private $session;

    public function __construct(CartService $cartService, SessionInterface $session)
    {
        $this->cartService = $cartService;
    }

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
     * @Route("/thanks", name="thanks")
     */
    public function thanks()
    {
        return $this->render('home/thanks.html.twig');
    }

    /**
     * @Route("/profile", name="profile")
     */
    public function profile()
    {
        return $this->render('security/profile.html.twig');
    }

    /**
     * @Route("/profile/cart", name="cart")
     */
    public function cart()
    {
        return $this->render('security/cart.html.twig', [
            'items' => $this->cartService->getCartItems(),
            'total' => $this->cartService->getTotalCart(),
        ]);
    }

    /**
     * @Route("/profile/cart/remove/{id}", name="cart_remove")
     */
    public function cart_remove($id)
    {
        $this->cartService->remove($id);
        return $this->redirectToRoute('cart');
    }

    /**
     * @Route("/book/tour/{id}", name="cart_add")
     */
    public function book(Tour $tour, Request $request)
    {
        $form = $this->createForm(BookType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $seat = $form->get('seat')->getData();
            $this->cartService->add($tour->getId(), $seat);

            return $this->redirectToRoute('tours');
        }
        return $this->render('security/book.html.twig', [
            'form' => $form->createView(),
        ]);
    }


    /**
     * @Route("/contact", name="contact")
     */
    public function contact(Request $request, Mailer $mailer)
    {
        $contact = new Contact();
        $form = $this->createForm(ContactType::class, $contact);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($contact);
            $entityManager->flush();

            $mailer->confirmationMail($contact);

            return $this->redirectToRoute('thanks');
        }
        return $this->render('home/contact.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/profile/cart/pay", name="cart_pay")
     */
    public function cart_pay()
    {
        $entityManager = $this->getDoctrine()->getManager();
        foreach ($this->cartService->getCartItems() as $item){
            $order = new Order();
            $order->setSeat($item['seat']);
            $order->setUser($this->getUser());
            $order->setTotal($item['tour']->getPrice() * $item['seat']);
            $order->setTour($item['tour']);
            $entityManager->persist($order);
        }

        $entityManager->flush();
        $this->cartService->removeAll();

        return $this->redirectToRoute('profile');
    }
}
