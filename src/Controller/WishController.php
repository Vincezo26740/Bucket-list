<?php

namespace App\Controller;

use App\Entity\Wish;
use App\Repository\WishRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/wish', name: 'Wish_')]
class WishController extends AbstractController
{
	#[Route('', name: 'List')]
	public function List(EntityManagerInterface $entityManager, WishRepository $wishRepository): Response
	{/*
		$wish = new Wish();
		$wish->setTitle("Faire 2 fois le tour du monde");
		$wish->setAuthor("Moi");
		$wish->setDateCreated(new \DateTime());
		$wish->setDescription("Un petit test de description pour un nouveau wish");
		$wish->setIsPublished(true);
		$entityManager->persist($wish);
		$entityManager->flush();

	    $wish = new Wish();
	    $wish->setTitle("Arrêter la connerie");
	    $wish->setAuthor("Mélaine");
	    $wish->setDateCreated(new \DateTime());
	    $wish->setDescription("Un jour peut-être on y arrivera");
	    $wish->setIsPublished(true);
	    $entityManager->persist($wish);
	    $entityManager->flush();

	    $wish = new Wish();
	    $wish->setTitle("Plus obliger de travailler ");
	    $wish->setAuthor("Moi");
	    $wish->setDateCreated(new \DateTime());
	    $wish->setDescription("");
	    $wish->setIsPublished(false);
	    $entityManager->persist($wish);
	    $entityManager->flush();*/

		$wishes = $wishRepository->findBy([], ['dateCreated' => 'DESC']);

		return $this->render('wish/List.html.twig', ['wishes' => $wishes]);
	}

	#[Route('/details/{id}', name: 'Details')]
	public function Details($id, WishRepository $wishRepository): Response
	{
		$wish = $wishRepository->find($id);

		return $this->render('wish/details.html.twig',['wish'=>$wish]);
	}
}
