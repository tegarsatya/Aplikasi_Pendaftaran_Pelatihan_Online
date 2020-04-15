<!DOCTYPE html>
<html>
<head>
	<base href="<?php echo base_url()?>">

    <title></title>

    <!-- Bootstrap Core CSS -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<body onload="window.print()">
<div style="border: 1px solid black;">
                <center>
                <h1>PT. Prima Handanu Bhakti</h1>
                <h5>Jl. Kampung Manjah Bereum Cileunyi Bandung</h5>
              </center>
              </div>
<table class="table table-bordered" style="margin-bottom: 10px">
            <tr>
                <th>No</th>
                <th>Kode Pendaftaran</th>
                <th>Instansi Bujp</th>
        		<th>Alamat BUJP</th>
                <th>Polres</th>
                <th>Nama</th>
        		<th>Tempat/Tgl Lahir</th>
        		<th>Alamat Rumah</th>
        		<th>Tinggi Badan</th>
        		<th>Berat Badan</th>
         		<th>Golongan Darah</th>
		        <th>No. Ktp</th>
		        <th>No. Npwp</th>
		        <th>Email</th>
		        <th>No.Hp</th>
		        <th>Sidik Jari</th>
		        <th>Nama Suami</th>
		        <th>Jumlah Anak</th>
		        <th>Nama Orang Tua</th>
		        <th>Sd </th>
		        <th>Sltp</th>
		        <th>Slta</th>
		        <th>Diploma</th>
		        <th>Sarjana</th>
		        <th>Gada Pratama</th>
		        <th>Sertifikat</th>
		        <th>Gada Madya</th>
		        <th>Sertifikat</th>
		        <th>Gada Utama</th>
		        <th>Sertifikat</th>
		        <th>Spesialisasi</th>
		        <th>Sertifikat</th>
		        <th>Brivet</th>
		        <th>Pengalaman Tni/Polri</th>
		        <th>Security</th>
		        <th>tanda jasa </th>
		        <th>catatan Khusus</th>
		        <th>Tanggal Pendaftaran</th>
        <th>Status Bayar</th>
            </tr><?php
            $start = 0;
            $total = 0;
            $pendaftaran_data=$this->db->query("SELECT * FROM pendaftaran ");
            foreach ($pendaftaran_data->result() as $pendaftaran)
            {
                ?>
                <tr>
            <td width="80px"><?php echo ++$start ?></td>
                <td><?php echo $pendaftaran->kode_pendaftaran?></td>
	            <td><?php echo $pendaftaran->instansi_bujp ?></td>
	            <td><?php echo $pendaftaran->alamat_bujp ?></td>
	            <td><?php echo $pendaftaran->polres ?></td>
	            <td><?php echo $pendaftaran->nama ?></td>
	            <td><?php echo $pendaftaran->tempat_tgl_lahir ?></td>
	            <td><?php echo $pendaftaran->alamat_rumah ?></td>
	            <td><?php echo $pendaftaran->tinggi_badan ?></td>
	            <td><?php echo $pendaftaran->berat_badan?></td>
	            <td><?php echo $pendaftaran->golongan_darah ?></td>
	            <td><?php echo $pendaftaran->no_ktp ?></td>
	            <td><?php echo $pendaftaran->no_npwp ?></td>
	            <td><?php echo $pendaftaran->email ?></td>
	            <td><?php echo $pendaftaran->no_hp ?></td>
	            <td><?php echo $pendaftaran->rumus_sidik_jari ?></td>
	            <td><?php echo $pendaftaran->nama_suami ?></td>
	            <td><?php echo $pendaftaran->jumlah_anak ?></td>
	            <td><?php echo $pendaftaran->nama_orang_tua ?></td>
	            <td><?php echo $pendaftaran->sd_tahun ?></td>
	            <td><?php echo $pendaftaran->sltp_tahun?></td>
	            <td><?php echo $pendaftaran->slta_tahun ?></td>
	            <td><?php echo $pendaftaran->diploma_tahun ?></td>
	            <td><?php echo $pendaftaran->sarjana ?></td>
	            <td><?php echo $pendaftaran->gada_pratama_tahun ?></td>
	            <td><?php echo $pendaftaran->no_ijazah_gada_pratama ?></td>
	            <td><?php echo $pendaftaran->gada_madya_tahun ?></td>
	            <td><?php echo $pendaftaran->no_ijazah_gada_madya ?></td>
	            <td><?php echo $pendaftaran->gada_utama_tahun ?></td>
	            <td><?php echo $pendaftaran->no_ijazah_gada_utama ?></td>
	            <td><?php echo $pendaftaran->spesialisasi ?></td>
	            <td><?php echo $pendaftaran->no_sertifikat_spesialisasi ?></td>
	            <td><?php echo $pendaftaran->brivet ?></td>
	            <td><?php echo $pendaftaran->pengalaman_kerja_tni_polri ?></td>
	            <td><?php echo $pendaftaran->security ?></td>
	            <td><?php echo $pendaftaran->tanda_jasa ?></td>
	            <td><?php echo $pendaftaran->catatan_khusus ?></td>
            <td><?php 
            $tgl = $pendaftaran->tgl;
            echo date('d-m-Y',strtotime($tgl)); ?></td>
            
             <td>
                <?php 
                if ($pendaftaran->status_bayar == 'y') {
                    ?> 
                    <b>Lunas</b>
                    <?php
                } elseif ($pendaftaran->status_bayar == 't') {
                    ?> 
                    <b>Belum lunas</b>
                    <?php
                }

                 ?>
            </td>
           
        </tr>
                <?php
               
            }
            ?>
        
        </table>

</body>
</html>