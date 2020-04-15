<?php
defined('BASEPATH') or exit('No direct script access allowed');



class Pendaftar extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Pendaftar_model');
        $this->load->library('form_validation');
    }


    public function index()
    {
        $pendaftaran = $this->Pendaftar_model->listing();

        $data = array(
            'title'              =>    'Data Pendaftaran Pelatihan Satpam  (' . count($pendaftaran) . ')',
            'pendaftaran'        =>    $pendaftaran,
            'isi'                =>    'admin/pendaftar/list'


        );
        $this->load->view('admin/layout/wrapper', $data, FALSE);
    }

    public function cetak_semua()
    {
        $this->load->view('admin/pendaftar/cetak_semua');
    }

    public function cetak($id_pendaftaran)
    {
        $this->load->view('admin/pendaftar/cetak');
    }

    public function delete($id_pendaftaran)
	{
		$data = array(	'id_pendaftaran'		=> $id_pendaftaran);
		$this->Pendaftar_model->delete($data);
		$this->session->set_flashdata('sukses', 'Data telah dihapus');
		redirect(base_url('admin/pendaftar'),'refresh');
	}
}
