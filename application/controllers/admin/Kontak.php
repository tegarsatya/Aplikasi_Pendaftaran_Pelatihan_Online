<?php
defined('BASEPATH') or exit('No direct script access allowed');



class Kontak extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Kontak_model');
        $this->load->library('form_validation');
    }


    public function index()
    {
        $kontak = $this->Kontak_model->listing();

        $data = array(
            'title'              =>    'Data Kontak   (' . count($kontak) . ')',
            'kontak'             =>    $kontak,
            'isi'                =>    'admin/kontak/list'


        );
        $this->load->view('admin/layout/wrapper', $data, FALSE);
    }
    public function delete($id_kontak)
    {
        $row = $this->Kontak_model->get_by_id($id_kontak);

        if ($row) {
            $this->Kontak_model->delete($id_kontak);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('admin/Kontak'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('admin/Kontak'));
        }
    }
}
