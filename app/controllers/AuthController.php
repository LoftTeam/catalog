<?php

require_once('app/models/AuthModel.php');

class AuthController extends  Controller{

    public function __construct(){
        parent::__construct();
        $this->model = new AuthModel;
    }

    function actionIndex()
    {
        $name = '';
        $email = '';
        $password = '';
        $result = '';

        if(isset($_POST['submit'])) {
            $name = $_POST['name'];
            $email = $_POST['email'];
            $password = $_POST['password'];

//            print_r($_POST);

            $errors = false;

            if(!AuthModel::checkName($name)){
                $errors[] = 'Имя не должно быть короче 2-ух символов';
            }

            if(!AuthModel::checkEmail($email)){
                $errors[] = 'Некорректный Email';
            }

            if($this->model->checkEmailExists($email)){
                $errors[] = 'Такой Email уже используется';
            }

            if(!AuthModel::checkPassword($password)){
                $errors[] = 'Пароль не должен быть короче 6-и символов';
            }

            if($errors == false){
                // SAVE USER
                $result = $this->model->signUp($name, $email, $password);
            }
        }

        require_once('app/views/auth_view.php');

        return true;
    }
}