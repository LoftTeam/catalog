<?php

class ProductsController extends  Controller
{
    public function __construct(){
        parent::__construct();
        $this->model = new ProductsModel;
    }

    function actionIndex()
    {
        $this->view->generate('products/index_view.php', 'template_main.php',
            array(
                'title' => 'Продукция',
                'is_left_sidebar' => true,
                'products' => $this->model->get_data()
            )
        );
    }

    function actionView($id)
    {
        //$id = (int)$id[0];
        $data = $this->model->get_product($id);
        $this->view->generate('products/item_view.php', 'template_main.php',
            array(
                'title' => $data['title'],
                'product_item' => $data
            )
        );
    }
}