<?php

class SearchController extends  Controller
{
    function actionIndex()
    {
        $this->view->generate('search_view.php', 'template_main.php',
            array(
                'title' => 'Поиск по сайту',
                'is_left_sidebar' => true
            )
        );
    }
}