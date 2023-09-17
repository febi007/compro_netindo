<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 4/10/2022
 * Time: 10:54 PM
 */

class Partner extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->tbl      = $this->partner;
        $this->pathFile = $this->folder.$this->tbl.'/';
        $this->indexFile= $this->pathFile.$this->index;
        $this->dataFile = $this->pathFile.'data';
        $this->baseView = $this->tbl;
    }

    public function index(){
        $data[$this->title] = $this->pathFile;
        $data[$this->page]  = $this->indexFile;
        view($this->layout,$data);
    }

    public function getView(){
        $data["controller"] = $this->tbl;
        $data["baseView"]   = $this->baseView;
        $data[$this->title] = $this->pathFile;
        return view($this->indexFile,$data);
    }
    public function read($pages=1){
        $limit                  = $this->limit;
        $uriSegment             = 4;
        $orLike                 = $this->nama." LIKE '%"._get($this->any)."%' ".handleOr([$this->nama],_get($this->any));
        $where                  = _get($this->any) && _get($this->any) != null ? $orLike : '';
        $pagin                  = pagin($this->tbl,$this->id,$where,$limit,$uriSegment);
        $row                    = $this->M_crud->read_data($this->tbl,'*',$where,$this->id.' desc',null,$pagin[$this->perPage],$pagin[$this->start]);
        $data[$this->totalRows]      = (int)$pagin[$this->totalRows];
        $data[$this->lastRows]       = (int)$pages * (int)$pagin[$this->perPage];
        $data[$this->currentPages]   = (int)$pages;
        $data[$this->countPerPage]   = count($row);
        $data[$this->no]             = ($pages*$limit)-$limit;
        $data[$this->pages]          = $this->tbl;
        return view($this->dataFile,['data'=>$data,'row'=>$row]);
    }
    public function simpan(){
        $data[$this->nama]  = _post($this->nama);
        $data[$this->model] = json_encode(_post($this->model)?_post($this->model):[]);
        $data[$this->link]  = _post($this->link);
        $data[$this->status]= _post($this->status);
        $configUpload       = upload($this->tbl,_post($this->fileUploaded),$_FILES[$this->fileUpload]);
        if($configUpload!=null)$data[$this->gambar]=$configUpload;
        $response[$this->status] = createData($this->tbl,$data,[$this->param=>_post($this->param),$this->id=>_post($this->id)]);
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
    public function check_column(){
        echo existColumn(["col"=>$this->nama,"table"=>$this->tbl,"action"=>$this->param]);
    }
    public function getAll(){
        $read_data = $this->M_crud->read_data($this->tbl,'id,nama','status=1');
        echo json_encode($read_data);
    }
}