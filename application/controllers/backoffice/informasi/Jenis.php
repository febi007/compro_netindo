<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 2/13/2022
 * Time: 1:25 AM
 */

class Jenis extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->pathFile = $this->folder.$this->informasi.'/';
        $this->indexFile= $this->pathFile.$this->jenis.'/'.$this->index;
        $this->dataFile = $this->pathFile.$this->jenis.'/data';
        $this->tbl      = $this->jenisInformasi;
        $this->baseView = $this->informasi.'/'.$this->jenis;
    }

    public function index(){
        $data[$this->title] = $this->pathFile;
        $data[$this->page]  = $this->indexFile;
        view($this->layout,$data);
    }

    public function getView(){
        $data[$this->title] = $this->pathFile;
        $data["baseView"]   = $this->baseView;
        return view($this->indexFile,$data);
    }

    public function read($pages=1){
        $limit                  = $this->limit;
        $uriSegment             = $this->segment;
        $orLike                 = $this->nama." LIKE '%"._get($this->any)."%' ".handleOr([$this->nama],_get($this->any));
        $where                  = _get($this->any) && _get($this->any) != null ? $orLike : '';
        $pagin                  = pagin($this->tbl,$this->id,$where,$limit,$uriSegment);
        $row                    = $this->M_crud->read_data($this->tbl,'*',$where,$this->id.' desc',null,$pagin[$this->perPage],$pagin[$this->start]);
        $data[$this->totalRows]      = (int)$pagin[$this->totalRows];
        $data[$this->lastRows]       = (int)$pages * (int)$pagin[$this->perPage];
        $data[$this->currentPages]   = (int)$pages;
        $data[$this->countPerPage]   = count($row);
        $data[$this->no]             = ($pages*$limit)-$limit;
        $data[$this->pages]          = $this->jenis;
        return view($this->dataFile,['data'=>$data,'row'=>$row]);
    }
    public function simpan(){
        $data[$this->nama]          = _post($this->nama);
        $data[$this->status]        = _post($this->status);
        $response[$this->status]    = createData($this->tbl,$data,[$this->param=>_post($this->param),$this->id=>_post($this->id)]);
        echo json_encode($response);
    }
    public function edit($id){
        $data=editData($this->tbl,$id);
        echo json_encode($data);
    }
    public function hapus(){
        $where = [$this->id => _post($this->id)];
        $result = $this->M_crud->delete_data($this->tbl, $where);
        echo json_encode([$this->status => $result]);
    }
    public function check_column(){
        echo existColumn(["col"=>$this->nama,"table"=>$this->tbl,"action"=>$this->param]);
    }
    public function getAll(){
        $read_data = $this->M_crud->read_data($this->tbl,'*','status=1');
        echo json_encode($read_data);
    }
}