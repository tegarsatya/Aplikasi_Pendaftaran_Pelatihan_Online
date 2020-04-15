<?php
// Session 
if ($this->session->flashdata('sukses')) {
    echo '<div class="alert alert-success">';
    echo $this->session->flashdata('sukses');
    echo '</div>';
}

// File upload error
if (isset($error)) {
    echo '<div class="alert alert-success">';
    echo $error;
    echo '</div>';
}

// Error
echo validation_errors('<div class="alert alert-success">', '</div>');

echo form_open(base_url('admin/fasilitas/tambah'));
?>

<div class="row">
    <div class="col-md-6">
        <div class="form-group form-group-lg">
            <label>Nama Fasilitas</label>
            <input type="text" name="nama_fasilitas" class="form-control" placeholder="Nama Fasilitas" value="<?php echo set_value('nama_fasilitas') ?>">
        </div>

    </div>
    <div class="col-md-4">
        <div class="form-group">
            <label>Upload gambar</label>
            <input type="file" name="gambar" class="form-control" required="required" placeholder="Upload gambar">
        </div>
    </div>
    <div class=" form-group">
        <label>Isi Fasilitas

            <textarea name="isi_fasilitas" class="form-control" id="isi" placeholder="Isi Fasilitas"><?php echo set_value('isi_fasilitas') ?></textarea>
    </div>
    <div class="form-group text-right">
        <button type="submit" name="submit" class="btn btn-success btn-lg"><i class="fa fa-save"></i> Simpan Data</button>
        <input type="reset" name="reset" class="btn btn-default btn-lg" value="Reset">
    </div>
</div>
</div>
<?php
// Form close
echo form_close();
?>