<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\User1Type;
use App\Form\UserType;
use App\Repository\UserRepository;
use App\Service\EventService;
use App\Service\FileUploader;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Component\Security\Core\User\UserInterface;

#[Route('/account')]
class AccountController extends AbstractController
{
    private $types;
    private $eventService;

    public function __construct(EventService $eventService)
    {
        $this->eventService = $eventService;
        $this->types = $this->eventService->getAllEventTypes();
    }
   

    #[Route('/', name: 'app_account_show', methods: ['GET'])]
    public function profile(UserInterface $user): Response
    {    $user = $this->getUser();
        // Render a template to view user information
        return $this->render('account/show.html.twig', [
            'user' => $user,
            'types' => $this->types,
        ]);
    }

    #[Route('/edit', name: 'app_account_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, UserInterface $user, EntityManagerInterface $entityManager, FileUploader $fileUploader): Response
    {
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $imageFile = $form->get('image')->getData();
            if ($imageFile) { 
                $imageFileName =$fileUploader->upload($imageFile);
            $user->setImage($imageFileName);}
            $entityManager->flush();
            return $this->redirectToRoute('app_account_show', [], Response::HTTP_SEE_OTHER);
            
            }

        return $this->render('account/edit.html.twig', [
            'user' => $user,
            'form' => $form->createView(),
            'types' => $this->types,
        ]);
    }
}