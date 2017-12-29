<?php

// src/MainBundle/Repository/PatientRepository.php
namespace MainBundle\Repository;

//use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
//use Symfony\Component\HttpFoundation\Response;
use Doctrine\ORM\EntityManager;
use MainBundle\Entity\Patient;
//use Doctrine\ORM\EntityRepository;

class PatientRepository
{
    protected $em;      
    
    function __construct(EntityManager $em) 
    {
        $this->em = $em;
    }
    
    public function insertPatient($data = array())
    {   
        $fName   = $data[0];
        $mName   = $data[1];
        $lName   = $data[2];
        $sex     = $data[3];
        $birth   = date('Y-m-d ', strtotime($data[4]));
        $age     = $data[5];
        $nation  = $data[6];
        $address = $data[7];
        $isArchived = 0;
        
//        $birth = date('Y-m-d ', $birth);
        
        $patient = new Patient();
        $patient->setFName($fName);
        $patient->setMName($mName);
        $patient->setLName($lName);
        $patient->setSex($sex);
        $patient->setBirth($birth);
        $patient->setAge($age);
        $patient->setNationality($nation);
        $patient->setAddress($address);
        $patient->setisArchived($isArchived);
                
        $this->em->persist($patient);
        $this->em->flush();                                
        
        return array("message" => "Success" ,"id" => $birth);
    }

    function getAllRecords() 
    {
        $repo = $this->em->getRepository(Patient::class);
        $array = $repo->findAll();
        
//        $paginator = $this->get('knp_paginator');
        
        return $array;
    }

}
