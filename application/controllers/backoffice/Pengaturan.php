<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 4/10/2022
 * Time: 10:54 PM
 */

class Pengaturan extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->pathFile = $this->pathPengaturan;
        $this->indexFile= $this->pathFile.$this->index;
    }

    public function index(){
        $data[$this->title] = $this->pathFile;
        $data[$this->page]  = $this->indexFile;
        view($this->layout,$data);
    }

    public function getView(){
        $data[$this->title] = $this->pathFile;
        $data["controller"]  = $this->pengaturan;
        return view($this->indexFile,$data);
    }

    public function read($page){
        return view($this->pathFile.$page.'/index');
    }

    public function getData($table){
        echo json_encode($this->M_crud->read_data($table,"*"));
    }

    public function getDataTag(){
        echo json_encode(getTags($this->pengaturan,"seo"));
    }



}