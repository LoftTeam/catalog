<?php


class Route
{
    static function start()
    {
        // контроллер и действие по умолчанию
        $controller_name = 'Main';
        $action_name = 'index';
        $params = null;

        $routes = explode('/', $_SERVER['REQUEST_URI']);

        // получаем имя контроллера
        if (!empty($routes[1])) {
            $controller_name = $routes[1];
        }

        // получаем имя экшена
        if (!empty($routes[2])) {
            $action_name = $routes[2];
        }

//        if(!empty(array_slice($routes, 3))){
//            $params = array_slice($routes, 3);
//        }

        if(!empty($routes[3])){
            $params = $routes[3];
        }

        // добавляем префиксы
        $model_name = ucfirst($controller_name).'Model';
        $controller_name =  ucfirst($controller_name).'Controller';
        $action_name = 'action' . ucfirst($action_name);

        // подцепляем файл с классом модели (файла модели может и не быть)
        $model_file = $model_name. '.php';
        $model_path = "app/models/" . $model_file;
        if (file_exists($model_path)) {
            include "app/models/" . $model_file;
        }

        // подцепляем файл с классом контроллера
        $controller_file = $controller_name . '.php';
        $controller_path = "app/controllers/" . $controller_file;

        if (file_exists($controller_path)) {
            include "app/controllers/" . $controller_file;
        } else {
            /*
            правильно было бы кинуть здесь исключение,
            но для упрощения сразу сделаем редирект на страницу 404
            */
            Route::ErrorPage404();
        }

        // если контроллер в файле не определен, то выбрасываем 404
        if(!class_exists($controller_name)){
            Route::ErrorPage404();
        } else {
            $controller = new $controller_name;
            $action = $action_name;

            if (method_exists($controller, $action)) {
                // вызываем действие контроллера

                if($params){
                    $controller->$action($params);
                } else {
                    $controller->$action();
                }

            } else {
                // здесь также разумнее было бы кинуть исключение
                Route::ErrorPage404();
            }
        }

    }

    static function ErrorPage404()
    {
        $host = 'http://' . $_SERVER['HTTP_HOST'] . '/Error404';
        header('Location:' . $host);
    }
}