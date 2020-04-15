<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Register extends CI_Controller
{

    public function index()
    {
        $data = array(
            'title'      => 'Halaman Register',
            'isi'         => 'Register/list'
        );
        $this->load->view('layout/wrapper', $data, FALSE);
    }
    public function simpan_register()
    {
        $data = array(
            'nama' => $this->input->post('nama'),
            'username' => $this->input->post('username'),
            'password' => sha1($this->input->post('password')),
            'email' => $this->input->post('email'),
            'akses_level' => 'user',
        );
        $simpan = $this->db->insert('users', $data);
        if ($simpan) {
?>
            <script type="text/javascript">
                alert('Terima Kasih telah melakukan register ! Lakukan Login dengan username dan password yang telah di inputkan lalu melakukan pendaftaran');
                window.location = '<?php echo base_url('register'); ?>'
            </script>
        <?php
        } else {
        ?>
            <script type="text/javascript">
                alert('Ada kesalahan, silahkan ulangi !');
                window.location = '<?php echo base_url('register'); ?>'
            </script>
<?php
        }
    }
}
/* End of file Register.php */
