
<?php
defined('BASEPATH') or exit('No direct script access allowed');




class M_crud extends CI_Model
{

    public function count_data($table,$field,$where = null,$order = null,$group = null,$limit_sum = 0,$limit_from = 0,$having = null,$distinct = '') {
        $db=$this->db;
        $col = explode('.', $field);
        $alias = count($col) > 1 ? $col[1]:$field;
        $db->select('COUNT(' . $distinct . ' ' . $field . ') AS ' . $alias . '');
        $db->from($table);
        if ($where != null) $db->where($where);
        if ($order != null) $db->order_by($order);
        if ($group != null) $db->group_by($group);
        if ($having != null) $db->having($having);
        if ($limit_sum != 0) $db->limit($limit_sum, $limit_from);
        $data = $db->get();
        $res=[];
        foreach ($data->result_array() as $row) $res= $row[$alias];

        return $res;
    }



    public function join_data($table,$field,$table_join,$on,$where = null,$order = null,$group = null,$limit_sum = 0,$limit_from = 0,$having = null) {
        $db=$this->db;
        $db->select($field);
        $db->from($table);
        if (is_array($table_join) && is_array($on)) {
            $i = 0;
            foreach ($table_join as $row) {
                if (is_array($row)) {
                    $db->join($row['table'], $on[$i], $row['type']);
                } else {
                    $db->join($row, $on[$i]);
                }
                $i++;
            }
        } else {
            $db->join($table_join, $on);
        }
        if ($where != null) $db->where($where);
        if ($order != null) $db->order_by($order);
        if ($group != null) $db->group_by($group);
        if ($having != null) $db->having($having);
        if ($limit_sum != 0) $db->limit($limit_sum, $limit_from);
        $data = $db->get();
        return $data->result_array();
    }

    public function get_join_data($table,$field,$table_join,$on,$where = null,$order = null,$group = null,$limit_sum = 0,$limit_from = 0,$having = null) {
        $this->db->select($field);
        $this->db->from($table);
        if (is_array($table_join) && is_array($on)) {
            $i = 0;
            foreach ($table_join as $row) {
                if (is_array($row)) {
                    $this->db->join($row['table'], $on[$i], $row['type']);
                } else {
                    $this->db->join($row, $on[$i]);
                }
                $i++;
            }
        } else {
            $this->db->join($table_join, $on);
        }
        if ($where != null) $this->db->where($where);
        if ($order != null) $this->db->order_by($order);
        if ($group != null) $this->db->group_by($group);
        if ($having != null) $this->db->having($having);
        if ($limit_sum != 0) $this->db->limit($limit_sum, $limit_from);
        $data = $this->db->get();

        if ($data->num_rows() > 0) {
            $res=[];
            foreach ($data->result_array() as $row){
                $res = $row;
            }
            return $res;
        } else {
            return null;
        }
    }

    public function get_data($table,$field,$where = null,$order = null,$group = null,$limit_sum = 0,$limit_from = 0) {
        $this->db->select($field);
        $this->db->from($table);
        if ($where != null) $this->db->where($where);
        if ($order != null) $this->db->order_by($order);
        if ($group != null) $this->db->group_by($group);
        if ($limit_sum != 0) $this->db->limit($limit_sum, $limit_from);

        $data = $this->db->get();
        if ($data->num_rows() > 0) {
            $res=[];
            foreach ($data->result_array() as $row){
                $res = $row;
            }
            return $res;
        } else {
            return null;
        }
    }

    public function create_data($tabel, $data)
    {
        $data = $this->db->insert($tabel, $data);
        return $data;
    }

    public function count_read_data($table,$field,$where = null,$order = null,$group = null,$having = null) {
        $this->db->select($field);
        $this->db->from($table);
        if ($where != null) $this->db->where($where);
        if ($order != null) $this->db->order_by($order);
        if ($group != null) $this->db->group_by($group);
        if ($having != null) $this->db->having($having);
        $data = $this->db->get();
        return $data->num_rows();
    }

    public function read_data($table,$field,$where = null,$order = null,$group = null,$limit_sum = 0,$limit_from = 0,$having = null) {
        $db=$this->db;
        $db->select($field);
        $db->from($table);
        if ($where != null) $db->where($where);
        if ($order != null) $db->order_by($order);
        if ($group != null) $db->group_by($group);
        if ($having != null) $db->having($having);
        if ($limit_sum != 0) $db->limit($limit_sum, $limit_from);
        $data = $db->get();
        return $data->result_array();
    }

    public function update_data($tabel, $data, $where)
    {
        $data = $this->db->update($tabel, $data, $where);
        return $data;
    }

    public function delete_data($tabel, $where)
    {
        $data = $this->db->delete($tabel, $where);
        return $data;
    }

    public function check_data($column, $table, $condition)
    {
        $this->db->select($column);
        $this->db->from($table);
        $this->db->where($condition);
        return $this->db->get()->num_rows();

    }
}