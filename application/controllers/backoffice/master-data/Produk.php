<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 2/13/2022
 * Time: 1:25 AM
 */

class Produk extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->tbl          = $this->produk;
        $this->pathFile     = $this->pathMasterData;
        $this->indexFile    = $this->pathFile.$this->tbl.'/'.$this->index;
        $this->dataFile     = $this->pathFile.$this->tbl.'/data';
        $this->baseView     = $this->masterData.'/'.$this->tbl;


    }

    public function index(){
        $data[$this->title] = $this->pathFile;
        $data[$this->page]  = $this->indexFile;
        view($this->layout,$data);
    }

    public function getView(){
        $data["baseView"]   = $this->baseView;
        return view($this->indexFile,$data);
    }

    public function read($pages=1){
        $limit                  = 8;
        $uriSegment             = $this->segment;
        $orLike                 = $this->nama." LIKE '%"._get($this->any)."%' ".handleOr([$this->deskripsi,$this->nama],_get($this->any));
        $where                  = _get($this->any) && _get($this->any) != null ? $orLike : '';
        $pagin                  = pagin($this->viewProduk,$this->id,$where,$limit,$uriSegment);
        $row                    = $this->M_crud->read_data($this->viewProduk,'*',$where,$this->id.' desc',null,$pagin[$this->perPage],$pagin[$this->start]);
        $data[$this->totalRows]      = (int)$pagin[$this->totalRows];
        $data[$this->lastRows]       = (int)$pages * (int)$pagin[$this->perPage];
        $data[$this->currentPages]   = (int)$pages;
        $data[$this->countPerPage]   = count($row);
        $data[$this->no]             = ($pages*$limit)-$limit;
        $data[$this->pages]          = $this->produk;
        return view($this->dataFile,['data'=>$data,'row'=>$row]);
    }

    public function simpan(){
        $data[$this->nama]          = _post($this->nama);
        $data[$this->slug]          = _slug($this->nama);
        $data[$this->platform]      = json_encode(_post($this->platform)?_post($this->platform):[]);
        $data[$this->model]         = _post($this->model);
        $data[$this->kategori]      = _post($this->kategori);
        $data[$this->status]        = _post($this->status);
        $data[$this->deskripsi]     = _post($this->deskripsi,false);
        $configUpload               = upload($this->tbl,_post($this->fileUploaded),$_FILES[$this->fileUpload]);
        if($configUpload!=null) $data[$this->gambar]=$configUpload;
        $response=createData($this->tbl,$data,[$this->param=>_post($this->param),$this->id=>_post($this->id)]);
        echo json_encode($response);
    }

    public function edit($id){
        $data=editData($this->tbl,$id);
        echo json_encode($data);
    }
    public function hapus(){
        $get_id     = $this->M_crud->get_data($this->tbl,$this->gambar,$this->id."='" . _post($this->id) . "'");
        $resImage   = explode(",",$get_id[$this->gambar]);
        $where      = [$this->id => _post($this->id)];
        $result     = $this->M_crud->delete_data($this->tbl, $where);
        if($result)foreach ($resImage as $val){unlink($val);}
        echo json_encode([$this->status => $result]);

    }

    public function getAll(){
        $read_data = $this->M_crud->read_data($this->tbl,'*','status=1');
        echo json_encode($read_data);
    }

}