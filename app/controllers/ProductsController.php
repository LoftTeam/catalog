<?php

class ProductsController extends  Controller
{
    public function __construct(){
        parent::__construct();
        $this->model = new ProductsModel;
    }

    function actionIndex()
    {
        $this->view->generate('products/index_view.php', 'templates/template_main.php',
            array(
                'title' => 'Продукция',
                'is_left_sidebar' => true,
                'products' => $this->model->get_data()
            )
        );
    }
}