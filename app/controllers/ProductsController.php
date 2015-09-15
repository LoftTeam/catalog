<?php

class ProductsController extends  Controller
{
    public function __construct(){
        parent::__construct();
        $this->model = new ProductsModel();
    }

    function actionIndex()
    {
        if($_POST){
            if(isset($_POST['category_id']) ||
                isset($_POST['from']) ||
                isset($_POST['to']) ||
                isset($_POST['brand'])
            ){
                $category_id =  ClearInput::clearInput($_POST['category_id'],'s');
                $from = ClearInput::clearInput($_POST['from'],'i+');
                $to = ClearInput::clearInput($_POST['to'],'i+');
                if(empty($to)){$to = 999999;}
                $brand = ClearInput::clearInput($_POST['brand'],'s');

                $this->view->generate('products/index_view.php', 'template_main.php',
                    array(
                        'title' => 'Продукция',
                        'is_left_sidebar' => true,
                        'is_filters_side'=>true,
                        'products' => $this->model->filter_data($category_id,$from,$to,$brand),
                        'categories'=> $this->model->get_categories(),
                    )
                );

            }
        }else{
            $this->view->generate('products/index_view.php', 'template_main.php',
                array(
                    'title' => 'Продукция',
                    'is_left_sidebar' => true,
                    'is_filters_side'=>true,
                    'products' => $this->model->get_data(),
                    'categories'=> $this->model->get_categories(),
                )
            );
        }
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