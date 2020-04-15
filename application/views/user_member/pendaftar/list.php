<!-- Start Contact us Section -->
<section class="bg-pendaftar-us">
    <div class="container">
        <div class="row about-box">
            <div class="contact-us">
                <div class="row">
                    <div class="col-md-8">
                        <div class="panel panel-info">
                            <div class="panel-body">
                                <h2>Pendaftaran baru</h2>
                                <p>Isi data pendaftaran kursus Anda dengan lengkap. Sudah memiliki akun? Silakan <a href="https://javawebmedia.com/member/login?pengalihan=https://javawebmedia.com/pendaftaran"><strong>Login Di Sini</strong></a>.</p>
                                <p>Ada dua jenis Kelas: </p>
                                <ul>
                                    <li><strong>Kelas Umum</strong>: Anda mendaftar kursus dengan model belajar dalam kelas. Masing-masing kursus memiliki minimal peserta/siswa. <br><span class="text-danger">Kursus Kelas Umum dimulai setelah kuota minimal terpenuhi (Rata-rata waktu tunggu adalah 1-2 minggu.</span></li>
                                    <li><strong>Kelas Private</strong>: Anda mendaftar kursus dengan model belajar private (1 tutor 1 siswa). <br><span class="text-danger">Kursus Kelas Private bisa dimulai kapan saja sesuai kesepakatan siswa dan tutor.</span></li>
                                </ul>


                                <h3 class="pendaftar-title">
                                    <center> FORM PENDAFTARAN PELATIHAN ONLINE</center>
                                </h3>
                                <form action="<?php echo base_url() ?>Pendaftar/simpan_pendaftaran" method="POST" class="pendaftar-form">
                                    <div class="form-group">
                                        <h3 class="pendaftar-Form"> I. KETERANGAN UMUM</h3>
                                        <label>Kode Pendaftaran</label>
                                        <?php
                                        $cek = $this->db->get('pendaftaran')->num_rows();
                                        if ($cek == 0) {
                                            $data = 'ID001';
                                        } else {
                                            $this->db->order_by('id_pendaftaran', 'DESC');
                                            $cekdb = $this->db->get('pendaftaran')->row();
                                            $data = $cekdb->kode_pendaftaran;
                                            $no_urut = (int) substr($data, 3, 3);
                                            $no_urut++;

                                            $char = "ID";
                                            $data = $char . sprintf("%03s", $no_urut);
                                        }
                                        ?>
                                        <input type="text" name="kode_pendaftaran" class="form-control" value="<?php echo $data; ?>" readonly>
                                        <!-- .row -->
                                        <div class="form-group">
                                            <label>Instansi/ Bujp <?php echo form_error('instansi_bujp') ?></label>
                                            <input type="text" class="form-control" id="instansi_bujp" name="instansi_bujp" placeholder="Instansi Bujp">
                                        </div>
                                        <div class="form-group">
                                            <label>Nama <?php echo form_error('nama') ?></label>
                                            <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Lengkap"> </div>
                                        <div class="form-group">
                                            <label>ALamat Bujp<?php echo form_error('alamat_bujp') ?></label>
                                            <input type="text" class="form-control" id="alamat_bujp" name="alamat_bujp" placeholder="Alamat Bujp">
                                        </div>
                                        <div class="form-group">
                                            <label>Polres<?php echo form_error('polres') ?></label>
                                            <input type="text" class="form-control" id="polres" name="polres" placeholder="Polres">
                                        </div>
                                        <div class="form-group">
                                            <label>Tempat Tanggal Lahir<?php echo form_error('tempat_tgl_lahir') ?></label>
                                            <input type="text" class="form-control" id="tempat_tgl_lahir" name="tempat_tgl_lahir" placeholder="Tempat Tanggal Lahir">
                                        </div>
                                        <div class="form-group">
                                            <label>Alamat Rumah<?php echo form_error('alamat_rumah') ?></label>
                                            <input type="text" class="form-control" id="alamat_rumah" name="alamat_rumah" placeholder="Alamat Rumah Lengkap">
                                        </div>
                                        <div class="form-group">
                                            <label>Tinggi Badan<?php echo form_error('tinggi_badan') ?></label>
                                            <input type="text" class="form-control" id="tinggi_badan" name="tinggi_badan" placeholder="TInggi Badan">
                                        </div>
                                        <div class="form-group">
                                            <label>Berat Badan<?php echo form_error('berat_badan') ?></label>
                                            <input type="text" class="form-control" id="berat_badan" name="berat_badan" placeholder="Berat Badan">
                                        </div>
                                        <div class="form-group">
                                            <label>Golongan Darah<?php echo form_error('golongan_darah') ?></label>
                                            <input type="text" class="form-control" id="golongan_darah" name="golongan_darah" placeholder="Golongan Darah">
                                        </div>
                                        <div class="form-group">
                                            <label>Nomor KTP<?php echo form_error('no_ktp') ?></label>
                                            <input type="text" class="form-control" id="no_ktp" name="no_ktp" placeholder="Nomor Ktp/Nomor NIK">
                                        </div>
                                         <div class="form-group">
                                            <label>Nomor Npwp<?php echo form_error('no_npwp') ?></label>
                                            <input type="text" class="form-control" id="no_npwp" name="no_npwp" placeholder="Nomor Npwp">
                                        </div>
                                        <div class="form-group">
                                            <label>Email<?php echo form_error('email') ?></label>
                                            <input type="email" class="form-control" id="email" name="email" placeholder="Email Aktif">
                                        </div>
                                        <div class="form-group">
                                            <label>Nomor HP<?php echo form_error('no_hp') ?></label>
                                            <input type="text" class="form-control" id="no_hp" name="no_hp" placeholder="Nomor HP">
                                        </div>
                                        <div class="form-group">
                                            <label>Rumus Sidik Jari<?php echo form_error('rumus_sidik_jari') ?></label>
                                            <input type="text" class="form-control" id="rumus_sidik_jari" name="rumus_sidik_jari" placeholder="Rumus Sidik Jari">
                                        </div>
                                        <div class="form-group">
                                            <label>Nama Istri / Nama Suami<?php echo form_error('nama_suami') ?></label>
                                            <input type="text" class="form-control" id="nama_suami" name="nama_suami" placeholder="Nama Istri Atau Nama suami">
                                        </div>
                                        <div class="form-group">
                                            <label>Jumlah Anak<?php echo form_error('jumlah_anak') ?></label>
                                            <input type="text" class="form-control" id="jumlah_anak" name="jumlah_anak" placeholder="Jumlah Anak">
                                        </div>
                                        <div class="form-group">
                                            <label>Nama Orang Tua<?php echo form_error('nama_orang_tua') ?></label>
                                            <input type="text" class="form-control" id="nama_orang_tua" name="nama_orang_tua" placeholder="Nama Orang Tua">
                                        </div>
                                        <h3 class="pendaftar-Form"> II. PENDIDIKAN UMUM</h3>
                                        <div class="form-group">
                                            <label>SD Tahun<?php echo form_error('sd_tahun') ?></label>
                                            <input type="text" class="form-control" id="sd_tahun" name="sd_tahun" placeholder="sd_tahun">
                                        </div>
                                        <div class="form-group">
                                            <label>SLTP Tahun<?php echo form_error('sltp_tahun') ?></label>
                                            <input type="text" class="form-control" id="sltp_tahun" name="sltp_tahun" placeholder="SLTP tahun">
                                        </div>
                                        <div class="form-group">
                                            <label>SLTA Tahun<?php echo form_error('slta_tahun') ?></label>
                                            <input type="text" class="form-control" id="slta_tahun" name="slta_tahun" placeholder="SLTA Tahun">
                                        </div>
                                        <div class="form-group">
                                            <label>DIPLOMA Tahun<?php echo form_error('diploma_tahun') ?></label>
                                            <input type="text" class="form-control" id="diploma_tahun" name="diploma_tahun" placeholder="Diploma">
                                        </div>
                                        <div class="form-group">
                                            <label>Sarjana Tahun<?php echo form_error('sarjana') ?></label>
                                            <input type="text" class="form-control" id="sarjana" name="sarjana" placeholder="sarjana">
                                        </div>
                                        <h3 class="pendaftar-Form"> III. KEPOLISIAN TERBATAS</h3>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>GADA PRATAMA TAHUN<?php echo form_error('gada_pratama_tahun') ?></label>
                                                    <input type="text" class="form-control" id="gada_pratama_tahun" name="gada_pratama_tahun" placeholder=" Lulusan Gada Pratama Tahun">
                                                </div>
                                                <!-- .form-group -->
                                            </div>
                                            <!-- .col-md-6 -->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Nomor Ijazah Gada Pratama<?php echo form_error('no_ijazah_gada_pratama') ?></label>
                                                    <input type="text" class="form-control" id="no_ijazah_gada_pratama" name="no_ijazah_gada_pratama" placeholder="Nomor Ijazah Gada Pratama">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>GADA MADYA TAHUN<?php echo form_error('gada_madya_tahun') ?></label>
                                                    <input type="text" class="form-control" id="gada_madya_tahun" name="gada_madya_tahun" placeholder=" Lulusan Gada Madya Tahun">
                                                </div>
                                                <!-- .form-group -->
                                            </div>
                                            <!-- .col-md-6 -->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Nomor Ijazah Gada Madya<?php echo form_error('no_ijazah_gada_madya') ?></label>
                                                    <input type="text" class="form-control" id="no_ijazah_gada_madya" name="no_ijazah_gada_madya" placeholder="Nomor Ijazah Gada Madya">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>GADA UTAMA TAHUN<?php echo form_error('gada_utama_tahun') ?></label>
                                                    <input type="text" class="form-control" id="gada_utama_tahun" name="gada_utama_tahun" placeholder=" Lulusan Gada Utama Tahun">
                                                </div>
                                                <!-- .form-group -->
                                            </div>
                                            <!-- .col-md-6 -->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Nomor Ijazah Gada Utama<?php echo form_error('no_ijazah_gada_utama') ?></label>
                                                    <input type="text" class="form-control" id="no_ijazah_gada_utama" name="no_ijazah_gada_utama" placeholder="Nomor Ijazah Gada Utama">
                                                </div>
                                            </div>
                                        </div>
                                        <h3 class="pendaftar-Form"> IV. SPESIALISASI</h3>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Spesialisasi<?php echo form_error('spesialisasi') ?></label>
                                                    <input type="text" class="form-control" id="spesialisasi" name="spesialisasi" placeholder="Spesialisasi">
                                                </div>
                                                <!-- .form-group -->
                                            </div>
                                            <!-- .col-md-6 -->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Nomor Sertifikat Spesialisasi<?php echo form_error('no_seritifikat_spesialisasi') ?></label>
                                                    <input type="text" class="form-control" id="no_seritifikat_spesialisasi" name="no_seritifikat_spesialisasi" placeholder="Nomor Sertifikat Spesialisasi">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Spesialisasi<?php echo form_error('spesialisasi') ?></label>
                                                    <input type="text" class="form-control" id="spesialisasi" name="spesialisasi" placeholder="Spesialisasi">
                                                </div>
                                                <!-- .form-group -->
                                            </div>
                                            <!-- .col-md-6 -->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Nomor Sertifikat Spesialisasi<?php echo form_error('no_seritifikat_spesialisasi') ?></label>
                                                    <input type="text" class="form-control" id="no_seritifikat_spesialisasi" name="no_seritifikat_spesialisasi" placeholder="Nomor Sertifikat Spesialisasi">
                                                </div>
                                            </div>
                                        </div>
                                        <h3 class="pendaftar-Form"> V. BRIVET</h3>
                                        <div class="form-group">
                                            <label>Brivet<?php echo form_error('brivet') ?></label>
                                            <input type="text" class="form-control" id="brivet" name="brivet" placeholder="Pengalaman BRIVET">
                                        </div>
                                        <h3 class="pendaftar-Form"> VI. PENGALAMAN KERJA TNI / POLRI</h3>
                                        <div class="form-group">
                                            <label>Pengalaman Kerja TNI/POLRI<?php echo form_error('pengalaman_kerja_tni_polri') ?></label>
                                            <input type="text" class="form-control" id="pengalaman_kerja_tni_polri" name="pengalaman_kerja_tni_polri" placeholder="Pengalaman Kerja Tni Polri">
                                        </div>
                                        <h3 class="pendaftar-Form"> VII. SECURITY </h3>
                                        <div class="form-group">
                                            <label>Security<?php echo form_error('security') ?></label>
                                            <input type="text" class="form-control" id="security" name="security" placeholder="Security">
                                        </div>
                                        <h3 class="pendaftar-Form"> VIII. TANDA JASA / PENGHARGAAN </h3>
                                        <div class="form-group">
                                            <label>Tanda Jasa / Penghargaan<?php echo form_error('tanda_jasa') ?></label>
                                            <input type="text" class="form-control" id="tanda_jasa" name="tanda_jasa" placeholder="tanda_jasa">
                                        </div>
                                        <h3 class="pendaftar-Form"> IX. CATATAN KHUSUS </h3>
                                        <div class="form-group">
                                            <label>Security<?php echo form_error('catatan_khusus') ?></label>
                                            <input type="text" class="form-control" id="catatan_khusus" name="catatan_khusus" placeholder="catatan khusus">
                                        </div>
                                        <button type="submit" class="btn btn-default">Send Pendaftaran</button>
                                </form>
                            </div>
                            <!-- .col-md-8 -->
                            <!-- .col-md-4 -->
                        </div>
                        <!-- .row -->
                    </div>
                </div>
                <!-- .contact-us -->
            </div>
        </div>
    </div>
    <!-- .row -->
    </div>
    <!-- .container -->
</section>
<!-- End Contact us Section -->