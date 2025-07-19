<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      <i class="fa fa-plus" style="color:green"> </i> <?= $title_web; ?>
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?= base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li class="active"><i class="fa fa-user"></i> <?= $title_web; ?></li>
    </ol>
  </section>

  <section class="content">
    <div class="row">
      <div class="col-md-8">
        <div class="box box-primary">
          <div class="box-header with-border"></div>
          <div class="box-body">
            <form action="<?= base_url('data/prosespegawai'); ?>" method="POST">
              
              <div class="form-group">
                <label>Nama Pegawai</label>
                <input type="text" name="nama" class="form-control" required placeholder="Masukkan nama lengkap pegawai">
              </div>

              <div class="form-group">
                <label>NIP</label>
                <input type="text" name="nip" class="form-control" placeholder="Masukkan NIP (boleh kosong)">
              </div>

              <div class="form-group">
                <label>Jabatan</label>
                <select name="jabatan" class="form-control select2" required>
                  <option disabled selected value>-- Pilih Jabatan --</option>
                  <?php foreach ($roles as $isi) { ?>
                    <option value="<?= $isi['id_role']; ?>"><?= $isi['nama_role']; ?></option>
                  <?php } ?>
                </select>
              </div>

              <div class="form-group">
                <label>Asal Satuan Kerja</label>
                <input type="text" name="asal_satker" class="form-control" placeholder="Masukkan asal instansi atau unit kerja">
              </div>

              <div class="pull-right">
                <input type="hidden" name="tambah" value="tambah">
                <button type="submit" class="btn btn-primary btn-md">Submit</button>
                <a href="<?= base_url('data/pegawai'); ?>" class="btn btn-danger btn-md">Kembali</a>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
