<?php class Contact extends CI_Controller {
    public function index(){
        $data['page']   = 'contact';
        viewFo($data);
    }
}
