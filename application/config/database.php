<?php defined('BASEPATH') OR exit('No direct script access allowed');

$active_group   = 'default';
$query_builder  = TRUE;
$username       = '';
$password       = '';

function getDomain(){
    $CI =& get_instance();
    return preg_replace("/^[\w]{2,6}:\/\/([\w\d\.\-]+).*$/","$1", $CI->config->slash_item('base_url'));
}

if(getDomain()=='ptnetindo.com'){
    $username='admin';
    $password='Netin1234a!';
}
else{
    $username='admin';
    $password='Netin1234a!';
}


$db['default'] = array(
	'dsn'	        => '',
    'hostname'      => 'localhost',
    'username'      => $username,
    'password'      => $password,
    'database'      => 'db_compro_netindo',
	'dbdriver'      => 'mysqli',
	'dbprefix'      => '',
	'pconnect'      => FALSE,
	'db_debug'      => (ENVIRONMENT !== 'production'),
	'cache_on'      => TRUE,
	'cachedir'      => '',
	'char_set'      => 'utf8',
	'dbcollat'      => 'utf8_general_ci',
	'swap_pre'      => '',
	'encrypt'       => FALSE,
	'compress'      => FALSE,
	'stricton'      => FALSE,
	'failover'      => array(),
	'save_queries'  => TRUE
);

