
<div class="about_trainer">
  <h3 class="m_2"></h3>
  <div class="row about_box">
  	<div class="col-md-12">
	  <div class="panel panel-info">
          
          <div class="panel-body">
            
             <?php 
             $row = $this->db->query("SELECT * from pendaftaran order by id_pendaftaran desc")->row();
              ?>
              <div id="data">
              <div style="border: 2px solid black;">
              <img src="assets/images/12440297_541563699356921_7136798201031747469_o.jpg" width="1100" height="430">
                <center>
                <h1>Pelatihan Satpam Gada Pratama</h1>
                <h5>Kp. Manjah Beureum RT/RW 01/03
				        	Desa Cileunyi Kulon, Kecamatan Cileunyi, Kabupaten Bandung 40393				  </h5>
              </center>
              </div>
             <table class="table">
             <tr>
                 <td>Kode Pendaftaran</td>
                 <td>:</td>
                 <td><?php echo $row->kode_pendaftaran; ?></td>
               </tr>
               <tr>
                 <td>Nama Lengkap</td>
                 <td>:</td>
                 <td><?php echo $row->nama; ?></td>
               </tr>
               <tr>
                 <td>Alamat</td>
                 <td>:</td>
                 <td><?php echo $row->alamat_rumah; ?></td>
               </tr>
               <tr>
                 <td>Nomor Hp</td>
                 <td>:</td>
                 <td><?php echo $row->no_hp; ?></td>
               </tr>
               <tr>
                 <td>Tempat Tanggal Lahir</td>
                 <td>:</td>
                 <td><?php echo $row->tempat_tgl_lahir; ?></td>
               </tr>
               <tr>
                 <td>Tinggi Badan</td>
                 <td>:</td>
                 <td><?php echo $row->tinggi_badan; ?></td>
               </tr>
               <tr>
                 <td>Berat Badan</td>
                 <td>:</td>
                 <td><?php echo $row->berat_badan; ?></td>
               </tr>
               <tr>
                 <td>Nomor KTP</td>
                 <td>:</td>
                 <td><?php echo $row->no_ktp; ?></td>
               </tr>
               <tr>
                 <td>Nomor NPWP</td>
                 <td>:</td>
                 <td><?php echo $row->no_npwp; ?></td>
               </tr>
               <tr>
                 <td>Email</td>
                 <td>:</td>
                 <td><?php echo $row->email; ?></td>
               </tr>
               <tr>
                 <td>Rumus Sidik Jari</td>
                 <td>:</td>
                 <td><?php echo $row->rumus_sidik_jari; ?></td>
               </tr>
               <tr>
                 <td>Nama Suami</td>
                 <td>:</td>
                 <td><?php echo $row->nama_suami; ?></td>
               </tr>
               <tr>
                 <td>Jumlah Anak</td>
                 <td>:</td>
                 <td><?php echo $row->jumlah_anak; ?></td>
               </tr>
               <tr>
                 <td>Nama Orang Tua</td>
                 <td>:</td>
                 <td><?php echo $row->nama_orang_tua; ?></td>
               </tr>
               <tr>
                 <td>Sd Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->sd_tahun; ?></td>
               </tr>
               <tr>
                 <td>SLTP Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->sltp_tahun; ?></td>
               </tr>
               <tr>
                 <td>SLTA Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->slta_tahun; ?></td>
               </tr>
               <tr>
                 <td>Diploma Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->diploma_tahun; ?></td>
               </tr>
               <tr>
                 <td>Sarjana Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->sarjana; ?></td>
               </tr>
               <tr>
                 <td>Gada Pratama Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->gada_pratama_tahun; ?></td>
               </tr>
               <tr>
                 <td>Nomor Ijazah Gada Pratama</td>
                 <td>:</td>
                 <td><?php echo $row->no_ijazah_gada_pratama; ?></td>
               </tr>
               <tr>
                 <td>Gada Madya Tahun </td>
                 <td>:</td>
                 <td><?php echo $row->gada_madya_tahun; ?></td>
               </tr>
               <tr>
                 <td>Nomor Ijazah Gada Madya </td>
                 <td>:</td>
                 <td><?php echo $row->no_ijazah_gada_madya; ?></td>
               </tr>
               <tr>
                 <td>Gada Utama Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->gada_utama_tahun; ?></td>
               </tr>
               <tr>
                 <td>Nomor Ijazah Gada Utama</td>
                 <td>:</td>
                 <td><?php echo $row->no_ijazah_gada_utama; ?></td>
               </tr>

               <tr>
                 <td>Spesialisasi</td>
                 <td>:</td>
                 <td><?php echo $row->spesialisasi; ?></td>
               </tr>

               <tr>
                 <td>Nomor Sertifikat Spesialisasi</td>
                 <td>:</td>
                 <td><?php echo $row->no_sertifikat_spesialisasi; ?></td>
               </tr>

               <tr>
                 <td>Gada Utama Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->gada_utama_tahun; ?></td>
               </tr>

               <tr>
                 <td>Gada Utama Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->gada_utama_tahun; ?></td>
               </tr>

               <tr>
                 <td>Gada Utama Tahun</td>
                 <td>:</td>
                 <td><?php echo $row->gada_utama_tahun; ?></td>
               </tr>

               <tr>
                 <td>Brivet</td>
                 <td>:</td>
                 <td><?php echo $row->brivet; ?></td>
               </tr>

               <tr>
                 <td>Pengalaman Kerja TNI/POLRI</td>
                 <td>:</td>
                 <td><?php echo $row->pengalaman_kerja_tni_polri; ?></td>
               </tr>

               <tr>
                 <td> Security</td>
                 <td>:</td>
                 <td><?php echo $row->security; ?></td>
               </tr>
               <tr>
                 <td>Tanda Jasa</td>
                 <td>:</td>
                 <td><?php echo $row->tanda_jasa; ?></td>
               </tr>
               <tr>
                 <td>Catatan Khusus</td>
                 <td>:</td>
                 <td><?php echo $row->catatan_khusus; ?></td>
               </tr>
               <tr>
                 <td>Tanggal Pendaftaran</td>
                 <td>:</td>
                 <td><?php 
                 $tgl = $row->tgl;
                 echo date('d-m-Y',strtotime($tgl)); ?></td>
               </tr>
             </table>
             </div>
          </div>
        </div>
	</div>
	
	<div class="clear"></div>
    
 </div>
</div>