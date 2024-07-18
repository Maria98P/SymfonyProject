<?php

namespace App\Controller;

use App\Repository\EventRepository;
use App\Service\EventService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/')]
class StaticController extends AbstractController

{
    private $types;
    private $eventService;

    public function __construct(EventService $eventService)
    {
        $this->eventService = $eventService;
        $this->types = $this->eventService->getAllEventTypes();
    }
    #[Route('/static', name: 'app_static')]
    public function index(): Response
    {
        return $this->render('static/index.html.twig', [
            'controller_name' => 'StaticController',
            'types' => $this->types,
         
        ]);
    }
    #[Route('/', name: 'app_landing')]
    public function landing(EventRepository $eventRepository): Response
    {
        return $this->render('static/landing.html.twig', [
            'controller_name' => 'StaticController',
            'types' => $this->types,
            'events' => $eventRepository->findAll(),
        ]);
    }
}
