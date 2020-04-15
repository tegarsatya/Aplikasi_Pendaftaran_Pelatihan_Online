<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pendaftar extends CI_Controller
{

	public function index()
	{
		$data = array(
			'title'      => 'Halaman Pendaftaran',
			'isi'	     => 'user_member/pendaftar/list'
		);
		$this->load->view('user_member/layout/wrapper', $data, FALSE);
	}

	public function simpan_pendaftaran()
	{
			$data = array(
				'kode_pendaftaran' => $this->input->post('kode_pendaftaran'),
				'instansi_bujp' => $this->input->post('instansi_bujp'),
				'alamat_bujp' => $this->input->post('alamat_bujp'),
				'polres' => $this->input->post('polres'),
				'nama' => $this->input->post('nama'),
				'tempat_tgl_lahir' => $this->input->post('tempat_tgl_lahir'),
				'alamat_rumah' => $this->input->post('alamat_rumah'),
				'tinggi_badan' => $this->input->post('tinggi_badan'),
				'berat_badan' => $this->input->post('berat_badan'),
				'golongan_darah' => $this->input->post('golongan_darah'),
				'no_ktp' => $this->input->post('no_ktp'),
				'no_npwp' => $this->input->post('no_npwp'),
				'email' => $this->input->post('email'),
				'no_hp' => $this->input->post('no_hp'),
				'rumus_sidik_jari' => $this->input->post('rumus_sidik_jari'),
				'nama_suami' => $this->input->post('nama_suami'),
				'jumlah_anak' => $this->input->post('jumlah_anak'),
				'nama_orang_tua' => $this->input->post('nama_orang_tua'),
				'sd_tahun' => $this->input->post('sd_tahun'),
				'sltp_tahun' => $this->input->post('sltp_tahun'),
				'slta_tahun' => $this->input->post('slta_tahun'),
				'diploma_tahun' => $this->input->post('diploma_tahun'),
				'sarjana' => $this->input->post('sarjana'),
				'gada_pratama_tahun' => $this->input->post('gada_pratama_tahun'),
				'no_ijazah_gada_pratama' => $this->input->post('no_ijazah_gada_pratama'),
				'gada_madya_tahun' => $this->input->post('gada_madya_tahun'),
				'no_ijazah_gada_madya' => $this->input->post('no_ijazah_gada_madya'),
				'gada_utama_tahun' => $this->input->post('gada_utama_tahun'),
				'no_ijazah_gada_utama' => $this->input->post('no_ijazah_gada_utama'),
				'spesialisasi' => $this->input->post('spesialisasi'),
				'no_sertifikat_spesialisasi' => $this->input->post('no_sertifikat_spesialisasi'),
				'brivet' => $this->input->post('brivet'),
				'pengalaman_kerja_tni_polri' => $this->input->post('pengalaman_kerja_tni_polri'),
				'security' => $this->input->post('security'),
				'tanda_jasa' => $this->input->post('tanda_jasa'),
				'catatan_khusus' => $this->input->post('catatan_khusus'),
				'tgl' => $this->input->post('tgl'),
			);
			$simpan = $this->db->insert('pendaftaran', $data);
			if ($simpan) {
?>
				<script type="text/javascript">
					alert('Terima Kasih telah mendaftar !');
					window.location = '<?php echo base_url('pendaftar/cetak_pendaftaran'); ?>'
				</script>
			<?php
			} else {
			?>
				<script type="text/javascript">
					alert('Ada kesalahan, silahkan ulangi !');
					window.location = '<?php echo base_url('pendaftar/cetak_pendaftaran'); ?>'
				</script>
<?php
			}
		}

	public function cetak_pendaftaran()
	{
		$data = array(
			'title'      => 'Halaman Pendaftaran',
			'isi'	     => 'user_member/pendaftar/cetak_pendaftaran',
		);
		$this->load->view('user_member/layout/wrapper', $data, FALSE);
	}
}
