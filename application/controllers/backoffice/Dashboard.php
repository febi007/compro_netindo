<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 2/13/2022
 * Time: 1:25 AM
 */

class Dashboard extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
        $this->output->set_header(
            'Cache-Control: no-store, no-cache, max-age=0, post-check=0, pre-check=0'
        );
        $this->layout="backoffice/layout/index";
        $this->page= 'dashboard';
        $this->id = $this->session->id;
        if($this->id==null||$this->id==""){
            redirect("backoffice/auth/logout");
        }
    }
    public function index(){
        $data['title'] = $this->page;
        $data['page'] = $this->page;
        $this->load->view($this->layout,$data);
    }


    public function getView(){
        return $this->load->view("backoffice/pages/dashboard");
    }


}