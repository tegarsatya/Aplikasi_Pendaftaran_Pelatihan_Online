<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kontak extends CI_Controller
{

	// Database
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Kontak_model');
	}

	// Main page kontak
	public function simpan_kontak()
	{
		$data = array(
			'nama' => $this->input->post('nama'),
			'email' => $this->input->post('email'),
			'pesan' => $this->input->post('pesan'),
		);
		$simpan = $this->db->insert('kontak', $data);
		if ($simpan) {
?>
			<script type="text/javascript">
				alert('Terima Kasih telah menghubungi kami !');
				window.location = '<?php echo base_url('kontak'); ?>'
			</script>
		<?php
		} else {
		?>
			<script type="text/javascript">
				alert('Ada kesalahan, silahkan ulangi !');
				window.location = '<?php echo base_url('kontak'); ?>'
			</script>
<?php
		}
	}
	public function index()
	{
		$site 			= $this->konfigurasi_model->listing();

		$data = array(
			'title'		=> 'Kontak ' . $site->namaweb . ' | ' . $site->tagline,
			'deskripsi'	=> 'Kontak ' . $site->namaweb . ' | ' . $site->tagline . ' ' . $site->tentang,
			'keywords'	=> 'Kontak ' . $site->namaweb . ' | ' . $site->tagline . ' ' . $site->keywords,
			'site'		=> $site,
			'isi'		=> 'kontak/list'
		);
		$this->load->view('layout/wrapper', $data, FALSE);
	}
}

/* End of file Contact.php */
/* Location: ./application/controllers/Kontak.php */
