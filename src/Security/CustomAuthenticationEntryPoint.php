<?php

namespace App\Security;

use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Security\Core\Exception\AuthenticationException;
use Symfony\Component\Security\Http\EntryPoint\AuthenticationEntryPointInterface;
use Symfony\Component\Routing\RouterInterface;

class CustomAuthenticationEntryPoint implements AuthenticationEntryPointInterface
{
    private $router;

    public function __construct(RouterInterface $router)
    {
        $this->router = $router;
    }

    public function start(Request $request, AuthenticationException $authException = null): Response
    {
        // Redirect to app_event_index
        $url = $this->router->generate('app_landing');
        return new RedirectResponse($url);
    }
}
