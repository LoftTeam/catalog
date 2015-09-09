<?php

class AboutController extends  Controller
{
    function actionIndex()
    {
        $this->view->generate('about_view.php', 'templates/template_main.php',
            array(
                'title' => 'О Компании',

                'is_slider' => true,
                'is_right_sidebar' => true
            )
        );
    }
}