<?php
// Form buka utk delete multiple
echo form_open(base_url('admin/pendaftar/proses'));
?>
<input type="hidden" name="pengalihan" value="<?php echo str_replace('index.php/', '', current_url()) ?>">
<p>
    <div class="btn-group">
        <button class="btn btn-danger btn-lg" name="hapus" type="submit">
            <i class="fa fa-trash"></i> Hapus
        </button>
        <button class="btn btn-primary" type="submit" name="export" onClick="Export();">
            <i class="fa fa-file-excel-o"></i> Export Excel (Terpilih)
        </button>

        <button class="btn btn-info" type="submit" name="exportAll" onClick="Export();">
            <i class="fa fa-file-excel-o"></i> Export Excel (Semua)
        </button>
        <button class="btn btn-primary" type="submit" name="printAll" onclick="print();">
            <i class="fa fa-print"> Print Data (terpilih)</i>
        </button>
            <a href="<?php echo base_url('admin/pendaftar/cetak_semua') ?>" class="btn btn-primary">
             <i class="fa fa-print"></i> Print Data Semua</a>
    </div>
</p>
<div class="table-responsive mailbox-messages">
    <table id="example1" class="table table-bordered table-striped">
        <thead>
            <tr>
                <th class="text-center" width="5%">
                    <!-- Check all button -->
                    <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i>
                    </button>
                </th>
                <th>NAMA</th>
                <th>Tempat Tgl Lahir</th>
                <th>Alamat Rumah</th>
                <th>No Ktp</th>
                <th>No Npwp</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>

            <?php
            // Looping data user dg foreach
            $i = 1;
            foreach ($pendaftaran as $pendaftaran) {
            ?>

                <tr>
                    <td class="text-center">
                        <input type="checkbox" name="id_pendaftaran[]" value="<?php echo $pendaftaran->id_pendaftaran ?>">
                    </td>
                    <td><?php echo $pendaftaran->nama ?></td>
                    <td><?php echo $pendaftaran->tempat_tgl_lahir ?></td>
                    <td><?php echo $pendaftaran->alamat_rumah ?></td>
                    <td><?php echo $pendaftaran->no_ktp ?></td>
                    <td><?php echo $pendaftaran->no_npwp ?></td>

                    <td>
                        <div class="btn-group">
                            <a href="<?php echo base_url('admin/pendaftar/edit/' . $pendaftaran->id_pendaftaran) ?>" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i> Edit</a>
                            <a href="<?php echo base_url('admin/pendaftar/delete/' . $pendaftaran->id_pendaftaran) ?>" class="btn btn-danger btn-sm" onclick="confirmation(event)"><i class="fa fa-trash-o"></i> Hapus</a>
                             <a href="<?php echo base_url('admin/pendaftar/cetak/' . $pendaftaran->id_pendaftaran) ?>" class="btn btn-danger btn-sm" onclick=""><i class="fa fa-print"></i> Cetak</a>
                        </div>
                    </td>
                </tr>

            <?php $i++;
            } //End looping 
            ?>
        </tbody>
    </table>

</div>
<!-- /.mail-box-messages -->
<?php
// Form tutup
echo form_close();
?>