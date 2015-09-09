<?php

class ProductsController extends  Controller
{
    function actionIndex()
    {
        $this->view->generate('products/index_view.php', 'templates/template_main.php',
            array(
                'title' => 'Продукция',
                'is_left_sidebar' => true
            )
        );
    }
}