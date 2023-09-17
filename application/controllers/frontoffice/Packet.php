<?php class Packet extends CI_Controller {
    public function index(){
        $data['page']   = 'packet';
        $data["row"] = $this->M_crud->read_data("paket","*");
        viewFo($data);
    }
}
