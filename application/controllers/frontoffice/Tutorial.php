<?php class Tutorial extends CI_Controller {
    public function index(){
        $data['page']   = 'tutorial';
        viewFo($data);
    }
}
