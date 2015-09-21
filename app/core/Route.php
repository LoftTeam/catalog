<?php

class Route
{
    private $routes;

    public function __construct()
    {
        $routesPath = ROOT . '/app/config/routes.php';
        $this->routes = include($routesPath);
    }

    private function getUri()
    {
        if (!empty($_SERVER['REQUEST_URI'])) {
            return trim($_SERVER['REQUEST_URI'], '/');
        }
    }

    public function run()
    {
        $uri = $this->getUri();

        foreach ($this->routes as $uriPattern => $path) {
            if (preg_match("~$uriPattern~", $uri)) {
                // Получаем внутренний путь из внешнего
                $internalRoute = preg_replace("~$uriPattern~", $path, $uri);
                // Определяем controller и action
                $element = explode("/", $internalRoute);
                $controllerName = ucfirst(array_shift($element) . 'Controller');
                $actionName = 'action' . ucfirst(array_shift($element));
                $parameters = $element;
                // Подкючаем файл контроллера
                $controllerFile = ROOT . '/app/controllers/' . $controllerName . '.php';
                if (file_exists($controllerFile)) {
                    include_once($controllerFile);
                }
                //Создаем объект, вызываем action
                $controllerObject = new $controllerName;
                if(method_exists($controllerObject, $actionName)) {
                    $result = call_user_func_array(array($controllerObject, $actionName), $parameters);

                    if ($result != null) {
                        break;
                    }
                }
                else{
                    echo '404';
                    exit;
                }
            }
        }
    }
}