<?php

namespace App\Service;

use App\Repository\TourRepository;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class CartService {

    private $session;
    private $tour;

    public function __construct(SessionInterface $session, TourRepository $tourRepository)
    {   
        $this->session = $session;
        $this->tour = $tourRepository;
    }

    /**
     * add item in cart
     */
    public function add(int $id, int $seat)
    {
        $cart = $this->session->get('cart', []);
        if(!empty($cart[$id])){
            $cart[$id] += $seat;
        } else {
            $cart[$id] = $seat ;
        }
        $this->session->set('cart', $cart);
    }

    /**
     * remove item from cart
     */
    public function remove(int $id)
    {
        $cart = $this->session->get('cart', []);
        if(!empty($cart[$id])){
            unset($cart[$id]);
        }
        $this->session->set('cart', $cart);
    }

    public function removeAll()
    {
        $this->session->remove('cart');
    }

    public function getCartItems()
    {
        $cart = $this->session->get('cart', []);
        $cartInfos = [];
        foreach($cart as $id => $seat){
            $cartInfos[] = [
                'tour' => $this->tour->find($id),
                'seat' => $seat
            ];
        }
        return $cartInfos;
    }

    public function getTotalCart()
    {
        $total = 0;
        foreach ($this->getCartItems() as $item){
            $total += $item['seat'] * $item['tour']->getPrice();
        }
        return $total;
    }
}