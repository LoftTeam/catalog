<?php

class AuthController extends  Controller
{
    function actionIndex()
    {
        $this->view->generate('auth_view.php', 'template_auth.php',
            array(
                'title' => 'Авторизация',
            )
        );
    }
}