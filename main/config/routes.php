<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['posts/create']='posts/create';
$route['posts/update']='posts/update';
$route['posts/(:any)']='posts/detail/$1';
$route['posts']='posts/index';
$route['default_controller'] = 'pages/index';
$route['(:any)']='pages/index/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;