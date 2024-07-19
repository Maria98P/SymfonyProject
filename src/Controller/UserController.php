<?php

namespace App\Controller;
namespace App\Controller;

use App\Entity\Event;
use App\Form\EventType;
use App\Repository\EventRepository;
use App\Service\EventService;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

use App\Service\FileUploader;

#[Route('/user')]
class UserController extends AbstractController


    
    {  
    
        private $types;
        private $eventService;
    
        public function __construct(EventService $eventService)
        {
            $this->eventService = $eventService;
            $this->types = $this->eventService->getAllEventTypes();
        }
       
    
        #[Route('/', name: 'app_user_index', methods: ['GET'])]
        public function index(EventRepository $eventRepository): Response
        {
            return $this->render('user/index.html.twig', [
                'events' => $eventRepository->findAll(),
                'types' => $this->types,
            ]);
        }
    
     
    
        #[Route('/{id}', name: 'app_user_show', methods: ['GET'])]
        public function show(Event $event): Response
        {
            return $this->render('user/show.html.twig', [
                'event' => $event,
                'types' => $this->types,
            ]);
        }
    
       
    
      
    
    
        #[Route('/filter/{type}', name: 'app_user_filter', methods: ['GET'])]
        public function filterByType(EventRepository $eventRepository, $type): Response
        {   
            $type=strtolower($type);
            $events = $eventRepository-> findByType($type);
            
            return $this->render('user/filter.html.twig', [
                'types' => $this->types,
                'events' => $events,
                
            ]);
        }
    
    }
    
