<?php
class My404 extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->output->set_status_header('404');
        $data['page']   = 'notfound';
        view($this->baseLayoutFo,$data);
    }

}