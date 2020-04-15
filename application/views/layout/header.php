<?php
$site = $this->konfigurasi_model->listing();
?>

<div class="box-layout">

    <!-- End Pre-Loader -->

    <header class="header-style-2">
        <div class="bg-header-top">
            <div class="container">
                <div class="row">
                    <div class="header-top">
                        <ul class="h-contact">
                            <li><i class="fa fa-map"></i> <?php echo $site->namaweb ?></li>
                        </ul>
                        <div class="donate-option">
                            <?php if ($this->session->userdata('userpeneliti')) { ?>
                                <a href="<?php echo base_url('peneliti/dasbor') ?>"><i class="fa fa-dashboard" aria-hidden="true"></i> <?php echo $this->session->userdata('nama_peneliti'); ?></a>
                                <a href="<?php echo base_url('masuk/logout') ?>"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
                            <?php } else { ?>
                                <a href="https://wa.me/<?php echo str_replace('+', '', $site->hp) ?>?text=Saya%20tertarik%20untuk%20Menggunakan%20Layanan%20di%20Perusahan%20Anda.%20Apakah%20bisa%20dibantu?"><i class="fa fa-whatsapp" aria-hidden="true"></i><?php echo $site->hp ?></a>
                                <a href="tel:<?php echo $site->telepon ?>"><i class="fa fa-phone" aria-hidden="true"></i> <?php echo $site->telepon ?></a>
                            <?php } ?>
                            <a href="<?php echo base_url('kontak') ?>"><i class="fa fa-envelope" aria-hidden="true"></i> Kontak</a>
                            <a href="<?php echo base_url('register') ?>"><i class="fa fa-users" aria-hidden="true"></i> Register</a>
                            <a href="<?php echo base_url('login_member') ?>"><i class="fa fa-unlock-alt" aria-hidden="true"></i> Login </a>
                        </div> <!-- .donate-option -->
                    </div>
                    <!-- .header-top -->
                </div>
                <!-- .header-top -->
            </div>
            <!-- .container -->
        </div>
        <!-- .bggrgtop --an