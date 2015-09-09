<?php

class ContactsController extends  Controller
{
    function actionIndex()
    {
        $this->view->generate('contact_view.php', 'templates/template_main.php',
            array(
                'title' => 'Контакты',
                'is_left_slider' => true,
                'is_right_slider' => true,
            )
        );
    }
}