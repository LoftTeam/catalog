<?php

class AuthController extends  Controller
{
    function actionIndex()
    {
        $this->view->generate('auth_view.php', 'templates/template_auth.php',
            array(
                'title' => 'Авторизация',
            )
        );
    }
}