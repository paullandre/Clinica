<?php

namespace MainBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;

class MainController extends Controller
{
    /**
     * @Route("/index")
     */
    public function indexAction()
    {        
        return $this->render('default/index2.html.twig', array('message' => "Welcome!"));				
    }        
    
    /**
     * @Route("/add")
     */
    public function addAction()
    {        
        return $this->render('User/add.html.twig', array('message' => "Welcome!"));				
    }
    
    /**
     * @Route("/lucky/number")
     */
    public function numberAction()
    {
        $number = mt_rand(0, 100);
        return $this->render('base.html.twig', array(
            'number' => $number,
        ));
		
		//$number = mt_rand(0, 100);
        //return $this->render('Main/index.html.twig', array(
        //    'number' => $number,
        //));
    }
}