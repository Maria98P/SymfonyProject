<?php

// src/Service/EventService.php
namespace App\Service;

use App\Repository\EventRepository;

class EventService
{
    private $eventRepository;

    public function __construct(EventRepository $eventRepository)
    {
        $this->eventRepository = $eventRepository;
    }


public function getAllEventTypes(): array
{
    $types = $this->eventRepository->findAllEventTypes();

    
    return $types;
}

}
