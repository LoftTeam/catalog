<?php

class Error404Controller extends  Controller
{
    function actionIndex()
    {
        $this->view->generate('404_view.php', 'template_main.php',
            array(
                'title' => 'Ошибка 404',
            )
        );
    }
}