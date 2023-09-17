<?php

class Home extends CI_Controller {
    public function index(){
        $data['page']   = 'home';
        $data["rowBanner"] = $this->M_crud->read_data("banner","*","status=1");
        viewFo($data);
    }
}
