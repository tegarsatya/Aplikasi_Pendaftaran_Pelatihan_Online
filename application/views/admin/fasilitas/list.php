<?php
// Form buka utk delete multiple
echo form_open(base_url('admin/fasilitas/proses'));
?>
<input type="hidden" name="pengalihan" value="<?php echo str_replace('index.php/', '', current_url()) ?>">
<p>
    <div class="btn-group">
        <a href="<?php echo base_url('admin/fasilitas/tambah') ?>" class="btn btn-success btn-lg">
            <i class="fa fa-plus"></i> Tambah Baru</a>

        <button class="btn btn-danger btn-lg" name="hapus" type="submit">
            <i class="fa fa-trash"></i> Hapus
        </button>
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
                <th>NAMA FASILITAS</th>
                <th>ISI FASILITAS</th>
                <th>GAMBAR FASILITAS</th>
                <th>TANGGAL POST</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>

            <?php
            // Looping data user dg foreach
            $i = 1;
            foreach ($fasilitas as $fasilitas) {
            ?>

                <tr>
                    <td class="text-center">
                        <input type="checkbox" name="id_fasilitas[]" value="<?php echo $fasilitas->id_fasilitas ?>">
                    </td>
                    <td><?php echo $fasilitas->nama_fasilitas ?></td>
                    <td><?php echo $fasilitas->isi_fasilitas ?></td>
                    <td><?php echo $fasilitas->gambar ?></td>
                    <td><?php echo $fasilitas->tanggal_post ?></td>
                    <td>
                        <div class="btn-group">
                            <a href="<?php echo base_url('admin/fasilitas/edit/' . $fasilitas->id_fasilitas) ?>" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i> Edit</a>
                            <a href="<?php echo base_url('admin/fasilitas/delete/' . $fasilitas->id_fasilitas) ?>" class="btn btn-danger btn-sm" onclick="confirmation(event)"><i class="fa fa-trash-o"></i> Hapus</a>
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