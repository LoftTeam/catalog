<?php

function __autoload($className)
{
    $arrayPaths = [
        '/app/controllers/',
        '/app/core/',
        '/app/lib/',
        '/app/models/',
        '/app/views/',
        '/app/views/templates/_chunks/',
    ];

    foreach ($arrayPaths as $path) {
        $path = ROOT . $path . $className . '.php';
        if (is_file($path)) {
            include_once $path;
        }
    }
}