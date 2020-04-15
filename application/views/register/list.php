    <section class="bg-register-us">
        <div class="container">
            <div class="row register-box">
                <div class="register-us">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="panel panel-info">
                                <div class="panel-body">
                                    <h3 class="register-title">
                                        <center> FORM REGISTER ONLINE</center>
                                    </h3>
                                    <form action="<?php echo base_url() ?>register/simpan_register" method="POST" class="contact-form">
                                        <div class="form-group">
                                            <label>Nama <?php echo form_error('nama') ?></label>
                                            <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Lengkap">
                                        </div>

                                        <div class="form-group">
                                            <label>Username<?php echo form_error('username') ?></label>
                                            <input type="text" class="form-control" id="username" name="username" placeholder="Username Buat Login">
                                        </div>

                                        <div class="form-group">
                                            <label>Password<?php echo form_error('password') ?></label>
                                            <input type="password" class="form-control" id="password" name="password" placeholder="Masukkan password minimal 8 karakter">
                                        </div>

                                        <div class="form-group">
                                            <label> Konfirmasi Password<?php echo form_error('password') ?></label>
                                            <input type="password" class="form-control" id="password" name="password" placeholder="konformasi Password yang telah di isi">
                                        </div>

                                        <div class="form-group">
                                            <label>Gmail<?php echo form_error('email') ?></label>
                                            <input type="email" class="form-control" id="email" name="email" placeholder="Gmail Aktif">
                                        </div>
                                        <button type="submit" class="btn btn-default">Send Registrasi</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>