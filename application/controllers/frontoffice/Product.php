<?php class Product extends CI_Controller {

    public function model($param){
        $data["category"] = $this->M_crud->get_data("kategori","*","slug='".$param."'");
        $data["model"] = $this->M_crud->read_data("view_model","*","status=1 and slug_kategori='".$param."'");
        $data['page']   = 'product/model';
        viewFo($data);
    }

    public function read($category,$model){
        $where="slug_model='".$model."' and slug_kategori='".$category."'";
        if(isset($_GET['platform']) && $_GET['platform']!=null){
            $param=explode("-",$_GET['platform']);
            $where.=" and platform like '%".base64_decode($param[1])."%'";
        }
        $data["model"] = $model;
        $data["category"] = $category;
        $data["product"] = $this->M_crud->read_data("view_produk","*",$where,"id desc");
        $data['page']   = 'product/product';
        viewFo($data);
    }

    public function detail($category,$model,$slug){
        $data["model"] = $model;
        $data["category"] = $category;
        $data["product"] = $this->M_crud->get_data("view_produk","*","slug='".$slug."'","id desc");
        $data["releatedProduct"] = $this->M_crud->read_data("view_produk","*","slug!='".$slug."' and slug_model = '".$model."'","rand()" );
        $data["rowModel"] = $this->M_crud->read_data("view_produk","slug_model as slug, nama_model as nama, count(id) as totalProduct","slug_kategori='".$category."'","count(id) desc","nama_model");
        $data["rowPlatform"] = $this->M_crud->read_data("platform","*");
        $data["images"] = explode(",",$data["product"]["gambar"]);
        $data['page']   = 'product/detail';
        viewFo($data);
    }

}
