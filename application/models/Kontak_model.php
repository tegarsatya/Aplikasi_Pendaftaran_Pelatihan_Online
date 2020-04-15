
<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kontak_model extends CI_Model
{

    public $table = 'kontak';
    public $id = 'id_kontak';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }
    public function listing()
    {
        $this->db->select('*');
        $this->db->from('kontak');
        $this->db->order_by('id_kontak');
        $query = $this->db->get();
        return $query->result();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }

    // get total rows
    function total_rows($q = NULL)
    {
        $this->db->like('id_kontak', $q);
        $this->db->or_like('nama', $q);
        $this->db->or_like('email', $q);
        $this->db->or_like('pesan', $q);
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL)
    {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id_kontak', $q);
        $this->db->or_like('nama', $q);
        $this->db->or_like('email', $q);
        $this->db->or_like('pesan', $q);
        $this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
        $this->db->insert($this->table, $data);
    }

    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id_kontak)
    {
        $this->db->where($this->id, $id_kontak);
        $this->db->delete($this->table);
    }
}
