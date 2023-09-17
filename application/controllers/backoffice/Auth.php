<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 2/13/2022
 * Time: 1:25 AM
 */

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set('Asia/Jakarta');
        $this->output->set_header(
            'Cache-Control: no-store, no-cache, max-age=0, post-check=0, pre-check=0'
        );
        $this->layout="backoffice/layout/index";
        $this->page= 'dashboard';
        $this->id = $this->session->id;
    }

    public function index(){
        if($this->id!=null||$this->id!=""){
            redirect("backoffice/dashboard");
        }
        $this->load->view("backoffice/auth");
    }
    public function login(){
        $response=[];
        $username=_post('username');
        $password=_post('password');
        $readData=$this->M_crud->get_data("pengguna","*","username='".$username."'");
        if($readData!=null){
            $passwordVerify=password_verify($password, $readData['password']);
            if(!$passwordVerify){
                $response['msg']="password anda salah";
                $response['field']="password";
                $response['status']=false;
            }
            else{
                $readStatus=$this->M_crud->get_data("pengguna","*","username='".$username."' and status=1");
                if($readStatus!=null){
                    $readSetting=$this->M_crud->get_data("pengaturan","*");
                    $this->session->set_userdata($readSetting);
                    $data = [
                        'id'       => $readData['id'],
                        'username' => $readData['username'],
                    ];
                    $this->session->set_userdata($data);
                    $response['status']=true;
                    $response['result']=$readSetting;
                }
                else{
                    $response['msg']="maaf, akun anda sudah tidak aktif";
                    $response['field']="";
                    $response['status']=false;
                }
            }
        }
        else{
            $response['msg']="username anda salah";
            $response['field']="username";
            $response['status']=false;
        }
        echo json_encode($response);
    }

    public function logout(){
        $this->load->driver('cache');
        $this->session->sess_destroy();
        $this->cache->clean();
        ob_clean();
        redirect("backoffice/auth");

    }


}