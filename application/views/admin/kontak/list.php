<?php
// Form buka utk delete multiple
echo form_open(base_url('admin/kontak/proses'));
?>
<input type="hidden" name="pengalihan" value="<?php echo str_replace('index.php/', '', current_url()) ?>">
<p>
    <div class="btn-group">
        <button class="btn btn-primary" type="submit" name="export" onClick="Export();">
            <i class="fa fa-file-excel-o"></i> Export Excel (Terpilih)
        </button>

        <button class="btn btn-info" type="submit" name="exportAll" onClick="Export();">
            <i class="fa fa-file-excel-o"></i> Export Excel (Semua)
        </button>
        <button class="btn btn-primary" type="submit" name="printAll" onclick="print();">
            <i class="fa fa-print"> Print Data (terpilih)</i>
        </button>
        <button class="btn btn-primary" type="submit" name="printAll" onclick="print();">
            <i class="fa fa-print"> Print Data (Semua)</i>
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
                <th>NAMA</th>
                <th>Gmail</th>
                <th>Pesan</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>

            <?php
            // Looping data user dg foreach
            $i = 1;
            foreach ($kontak as $kontak) {
            ?>

                <tr>
                    <td class="text-center">
                        <input type="checkbox" name="id_kontak[]" value="<?php echo $kontak->id_kontak ?>">
                    </td>
                    <td><?php echo $kontak->nama ?></td>
                    <td><?php echo $kontak->email ?></td>
                    <td><?php echo $kontak->pesan ?></td>

                    <td>
                        <div class="btn-group">
                            <a href="<?php echo base_url('admin/kontak/delete/' . $kontak->id_kontak) ?>" class="btn btn-danger btn-sm" onclick="confirmation(event)"><i class="fa fa-trash-o"></i> Hapus</a>
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