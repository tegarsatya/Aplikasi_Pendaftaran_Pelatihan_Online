<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <a href="<?php echo base_url('user_member/dasbor') ?>" class="brand-link">
    <img src="<?php echo $this->website->icon() ?>" alt="<?php echo $this->website->namaweb(); ?>" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light"><?php echo $this->konfigurasi_model->listing()->singkatan; ?></span>
  </a>
  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="<?php
                  $user_aktif = $this->user_model->detail($this->session->userdata('id_user'));

                  if ($user_aktif->gambar == "") {
                    echo $this->website->icon();
                  } else {
                    echo base_url('assets/upload/user/thumbs/' . $user_aktif->gambar);
                  } ?>" class="img-circle elevation-2" alt="<?php echo $this->session->userdata('nama'); ?>">
      </div>
      <div class="info">
        <a href="<?php echo base_url('admin/akun') ?>" class="d-block"><?php echo $this->session->userdata('nama'); ?> (<?php echo $this->session->userdata('akses_level'); ?>)
        </a>
      </div>
    </div>


    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

        <!-- DASBOR -->
        <li class="nav-item">
          <a href="<?php echo base_url('dasbor') ?>" class="nav-link">
            <i class="nav-icon fa fa-dashboard"></i>
            <p>
              DASHBOARD
            </p>
          </a>
        </li>        
        <?php if ($this->session->userdata('akses_level') == "user") { ?>
          <li class="nav-item">
            <a href="<?php echo base_url('pendaftar') ?>" class="nav-link">
              <i class="nav-icon fa fa-lock"></i>
              <p>
                PENDAFTARAN PELATIHAN
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="<?php echo base_url('pendaftar/cetak_pendaftaran') ?>" class="nav-link">
              <i class="nav-icon fa fa-print"></i>
              <p>
                CETAK PENDAFTARAN
              </p>
            </a>
          </li>
        <?php } ?>
        <!-- Logout -->
        <li class="nav-item">
          <a href="<?php echo base_url('login/logout') ?>" class="nav-link">
            <i class="nav-icon fa fa-sign-out"></i>
            <p>
              LOGOUT
            </p>
          </a>
        </li>
      </ul>
    </nav>
    <!-- /.sidebar-menu -->
  </div>
  <!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1><?php echo $title ?></h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?php echo base_url('admin/dasbor') ?>">Dashboard</a></li>
            <li class="breadcrumb-item"><a href="<?php echo base_url('admin/' . $this->uri->segment(2)) ?>"><?php echo ucfirst(str_replace('_', ' ', $this->uri->segment(2))) ?></a></li>
            <li class="breadcrumb-item active"><?php echo character_limiter($title, 10) ?></li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-12">
        <div class="card">
          <!-- /.card-header -->
          <div class="card-body">