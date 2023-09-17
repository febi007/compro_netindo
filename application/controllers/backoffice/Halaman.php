<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 3/21/2022
 * Time: 9:48 PM
 */

class Halaman extends MY_Controller
{

    public function getView(){
        $data[$this->title] = "";
        $data["controller"]  = "halaman";
        return view("backoffice/pages/pengaturan/halaman/index",$data);
    }

}