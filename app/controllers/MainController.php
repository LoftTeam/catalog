<?php

class MainController extends  Controller
{
    function actionIndex()
    {
        $this->view->generate('main_view.php', 'templates/template_main.php',
            array(
                'title' => 'Главная страница',
                'is_photo_slider' => true,
                'is_slider' => true,
                'is_right_sidebar' => true
            )
        );
    }
}