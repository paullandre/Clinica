<?php

namespace MainBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\DependencyInjection\Container;
use Symfony\Component\DependencyInjection\ContainerInterface;
use Symfony\Component\HttpFoundation\Request;

class MainController extends Controller
{        
    protected $container;   
    
//    public function __construct(EntityManager $em)
//    {
//        $this->container = $em;
//    }
    
    /**
     * @Route("/index")
     */
    public function indexAction()
    {                                
        return $this->render('Main/index.html.twig', array('data' => "Success"));
    }        
    
    /**
     * @Route("/renderAdd")
     */
    public function renderAddAction(Request $request)
    {                
        return $this->render('Patient/add.html.twig', array('message' => "Welcome!"));				
    }
    
    /**
     * @Route("/add")
     */
    public function addAction(Request $request)
    {        
        $data = $request->get('data');
        
        $save = array();
        
        foreach($data as $fields)
        {
            if("" == $fields || null == $fields)
            return $this->render('Patient/add.html.twig', array('message' => 0));
                
            array_push($save, $fields);
        }
        
        $service = $this->get("my.service");
        $records = $service->insertPatient($save);
        
        if($records['message'] == "Success")            
        die(json_encode(array('message' => 1, "id" => $records['id'])));       
        //return $this->render('Patient/add.html.twig', array('message' => 1));       
    }
    
    /**
     * @Route("/delete")
     */
    public function deleteAction()
    {        
        $service = $this->get("my.service");
        $records = $service->deleteById(92);                
        
        print "<pre>";
        print_r($records);
        print "</pre>";
        die;
        
        return $this->render('Patient/view.html.twig', array('data' => $records));				
    }
    
    /**
     * @Route("/view")
     */
    public function viewAction()
    {        
        $service = $this->get("my.service");
        $records = $service->getAllRecords();                
        
        foreach($records as $data)
        {
            $toClean = explode(" ", $data->getBirth());            
            $date = new \DateTime($toClean[0]);
            $data->setBirth($date->format('m/d/Y'));                                  
        }               
        
        return $this->render('Patient/view.html.twig', array('data' => $records));				
    }
    
    /**
     * @Route("/paginate")
     */
    public function paginateAction(Request $request)
    {
        $em    = $this->get('doctrine.orm.entity_manager');
        $dql   = "SELECT a FROM MainBundle:Patient a";
        $query = $em->createQuery($dql);

        $paginator  = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $query, /* query NOT result */
            $request->query->getInt('page', 1)/*page number*/,
            10/*limit per page*/
        );
        
        return $this->render('Patient/view.html.twig', array('pagination' => $pagination));
    }
}