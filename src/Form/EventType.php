<?php

namespace App\Form;

use App\Entity\Event;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use App\Service\FileUploader;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class EventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, ["attr" => ["class" => "form-control"]])
            ->add('dateTime', null,  ["attr" => ["class" => "form-control"]], [
                'widget' => 'single_text',
            ])
            ->add('description',null ,["attr" => ["class" => "form-control"]])
            
            
            ->add('image', null, ["attr" => ["class" => "form-control"]], [
                'label' => 'Upload Picture',

                'mapped' => false,

                'required' => false,
 

                'constraints' => [
                    new File([
                        'maxSize' => '1024k',
                        'mimeTypes' => [
                            'image/png',
                            'image/jpeg',
                            'image/jpg',
                        ],
                        'mimeTypesMessage' => 'Please upload a valid image file',
                    ])
                ],
            ])
 
          //  ->add('image',null ,["attr" => ["class" => "form-control"]])
            ->add('capacity',null ,["attr" => ["class" => "form-control"]])
            ->add('email',null ,["attr" => ["class" => "form-control"]])
            ->add('phoneNumber',null ,["attr" => ["class" => "form-control"]])
            ->add('addressLocation',null ,["attr" => ["class" => "form-control"]])
            ->add('addressStreetName',null ,["attr" => ["class" => "form-control"]])
            ->add('addressStreetNumber',null ,["attr" => ["class" => "form-control"]])
            ->add('addressZipCode',null ,["attr" => ["class" => "form-control"]])
            ->add('url',null ,["attr" => ["class" => "form-control"]])
            ->add('type',null ,["attr" => ["class" => "form-control"]])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
