<?php class Blog extends CI_Controller {

    public function index(){
        $where="jenis='Berita'";
        if(isset($_GET['q']) && $_GET['q'] != null){
            $q=str_replace("-"," ",$_GET['q']);
            $where.= " and judul LIKE '%".$q."%' OR deskripsi LIKE '%".$q."%' OR tags LIKE '%".$q."%'";
        }
        $data['page']   = 'blog/index';
        $data["row"] = $this->M_crud->read_data("view_informasi","*",$where);
        viewFo($data);
    }

    public function detail($param){
        $data['activePage']   = 'detail-blog';
        $data['page']   = 'blog/detail';
        $data["row"] = $this->M_crud->get_data("view_informasi","*","slug='".$param."'");
        $data["recent"] = $this->M_crud->read_data("view_informasi","*","slug!='".$param."'");
        viewFo($data);
    }

}
