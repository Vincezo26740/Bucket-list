<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class MainController extends AbstractController
{
	/**
	 * @Route("/",name="main_home")
	 */
	function home(){
		return $this->render('main/home.html.twig');
	}

	/**
	 * @Route("/AboutUs",name="main_AboutUs")
	 */
	function AboutUs(){
		return $this->render('main/AboutUs.html.twig');
	}
}