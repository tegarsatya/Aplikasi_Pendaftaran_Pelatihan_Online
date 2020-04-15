<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Fasilitas_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function listing()
    {
        $this->db->select('*');
        $this->db->from('fasilitas');
        $this->db->order_by('id_fasilitas');
        $query = $this->db->get();
        return $query->result();
    }
    public function home()
    {
        $this->db->select('*');
        $this->db->from('fasilitas');
        $this->db->order_by('id_fasilitas', 'DESC');
        $this->db->order_by('urutan', 'DESC');
        $query = $this->db->get();
        return $query->result();
    }

    // Listing semua
    public function fasilitas($limit, $start)
    {
        $this->db->select('*');
        $this->db->from('fasilitas');
        $this->db->limit($limit, $start);
        $this->db->order_by('id_fasilitas', 'DESC');
        $query = $this->db->get();
        return $query->result();
    }

    // Listing semua
    public function total_fasilitas()
    {
        $this->db->select('*');
        $this->db->from('fasilitas');
        $this->db->order_by('id_fasilitas', 'DESC');
        $query = $this->db->get();
        return $query->num_rows();
    }

    // Listing semua
    public function total()
    {
        $this->db->select('COUNT(*) AS total');
        $this->db->from('fasilitas');
        $this->db->order_by('id_fasilitas', 'DESC');
        $query = $this->db->get();
        return $query->row();
    }

    // Detail
    public function detail($id_fasilitas)
    {
        $this->db->select('*');
        $this->db->from('fasilitas');
        $this->db->where('id_fasilitas', $id_fasilitas);
        $this->db->order_by('id_fasilitas', 'DESC');
        $query = $this->db->get();
        return $query->row();
    }

    // Tambah
    public function tambah($data)
    {
        $this->db->insert('fasilitas', $data);
    }

    // Edit
    public function edit($data)
    {
        $this->db->where('id_fasilitas', $data['id_fasilitas']);
        $this->db->update('fasilitas', $data);
    }

    // Check delete
    public function check($id_fasilitas)
    {
        $query = $this->db->get_where('produk', array('id_fasilitas' => $id_fasilitas));
        return $query->num_rows();
    }

    // Delete
    public function delete($data)
    {
        $this->db->where('id_fasilitas', $data['id_fasilitas']);
        $this->db->delete('id_fasilitas', $data);
    }
    // get data with limit and search

}
