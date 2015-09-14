<?php

function __autoload($className)
{
    $arrayPaths = array(
        '/controllers',
        '/core',
        '/lib',
        '/models',
        '/views',
        '/controllers/admin',
        '/views/admin',
        '/views/products',
        '/views/templates',
        '/views/templates/_chunks');


    foreach ($arrayPaths as $path) {
        $path1 = $path . $className . 'php';
        if (is_file($path1)) {
            include_once $path1;
        }
    }
}