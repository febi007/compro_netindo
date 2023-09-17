<?php
/**
 * Created by PhpStorm.
 * User: annashrulyusuf
 * Date: 2/13/2022
 * Time: 1:25 AM
 */

class Kategori extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->tbl      = $this->kategori;
        $this->pathFile = $this->folder.$this->masterData.'/';
        $this->indexFile= $this->pathFile.$this->tbl.'/'.$this->index;
        $this->dataFile = $this->pathFile.$this->tbl.'/data';
        $this->baseView = $this->masterData."/".$this->tbl;
    }

    public function index(){
        $data[$this->title] = $this->pathFile;
        $data[$this->page]  = $this->indexFile;
        view($this->layout,$data);
    }

    public function getView(){
        $data[$this->title] = $this->pathFile;
        $data["baseView"] = $this->baseView;
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
        $data[$this->pages]          = $this->tbl;
        return view($this->dataFile,['data'=>$data,'row'=>$row]);
    }

    public function simpan(){
        $data[$this->nama]      = _post($this->nama);
        $data[$this->status]    = _post($this->status);
        $data[$this->slug]      = _slug($this->nama);

        $response[$this->status]= createData($this->tbl,$data,[$this->param=>_post($this->param),$this->id=>_post($this->id)]);
        echo json_encode($response);
    }

    public function edit($id){
        $data=editData($this->tbl,$id);
        echo json_encode($data);
    }
    public function hapus(){
        $where  = [$this->id => _post($this->id)];
        $result = $this->M_crud->delete_data($this->tbl, $where);
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