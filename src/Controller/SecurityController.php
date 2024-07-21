<?php

namespace App\Controller;

use App\Service\EventService;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{  

    private $types;
    private $eventService;

    public function __construct(EventService $eventService)
    {
        $this->eventService = $eventService;
        $this->types = $this->eventService->getAllEventTypes();
    }

    #[Route(path: '/login', name: 'app_login')]
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        if ($this->getUser()) {
        return $this->redirectToRoute('app_user_index');
     }

        
        $error = $authenticationUtils->getLastAuthenticationError();
      
        $lastUsername = $authenticationUtils->getLastUsername();

            
            return $this->render('security/login.html.twig', ['last_username' => $lastUsername, 'error' => $error,'types' => $this->types ]);
    }

    #[Route(path: '/logout', name: 'app_logout')]
    public function logout(): void
    {
        throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
    }
}
