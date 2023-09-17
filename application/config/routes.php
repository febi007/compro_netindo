<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller']            = "frontoffice/home";
$route['404_override']                  = 'my404';
$route['translate_uri_dashes']          = FALSE;
$route['backoffice']                    = 'backoffice/auth';
$route['backoffice/informasi/list']     = 'backoffice/informasi/daftar';

$route['product/(:any)']                = 'frontoffice/product/model/$1';
$route['product/(:any)/(:any)']         = 'frontoffice/product/read/$1/$2';
$route['product/loadMore/(:any)/(:any)']= 'frontoffice/product/loadMore/$1/$2';
$route['product/(:any)/(:any)/(:any)']  = 'frontoffice/product/detail/$1/$2/$3';
$route['blog']                          = 'frontoffice/blog';
$route['blog/(:any)']                   = 'frontoffice/blog/detail/$1';
$route['other/(:any)']                  = 'frontoffice/other/$1';
$route['packet']                        = 'frontoffice/packet';
$route['tutorial']                      = 'frontoffice/tutorial';
$route['contact']                       = 'frontoffice/contact';
$route['services']                      = 'frontoffice/services';
