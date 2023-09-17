<?php class Other extends CI_Controller {

    public function read($param){
        $data["model"] = $this->M_crud->read_data("model","*");
        $data['page']   = 'other/'.$param;
        $data['title']   = $param;
        viewFo($data);
    }


    public function tutorial(){
        $param="tutorial";
        $data["video"] = $this->M_crud->read_data("video","*");
        $data['page']   = 'other/'.$param;
        viewFo($data);
    }

}
