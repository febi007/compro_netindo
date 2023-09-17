<?php class Services extends CI_Controller {
    public function index(){
        $data['page']   = 'services';
        $data["row"] = $this->M_crud->read_data("layanan","*");
        viewFo($data);
    }
}
