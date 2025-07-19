<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      <i class="fa fa-edit" style="color:green"> </i> <?= $title_web; ?>
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
                <input type="text" name="nama" class="form-control" required value="<?= $pegawai->nama; ?>">
              </div>

              <div class="form-group">
                <label>NIP</label>
                <input type="text" name="nip" class="form-control" value="<?= $pegawai->NIP; ?>">
              </div>

              <div class="form-group">
                <label>Jabatan</label>
                <select name="jabatan" class="form-control select2" required>
                  <option disabled selected value>-- Pilih Jabatan --</option>
                  <?php foreach ($roles as $role) { ?>
                    <option value="<?= $role['id_role']; ?>" <?= ($pegawai->jabatan == $role['id_role']) ? 'selected' : ''; ?>>
                      <?= $role['nama_role']; ?>
                    </option>
                  <?php } ?>
                </select>
              </div>

              <div class="form-group">
                <label>Asal Satuan Kerja</label>
                <input type="text" name="asal_satker" class="form-control" value="<?= $pegawai->asal_satker; ?>">
              </div>

              <div class="pull-right">
                <input type="hidden" name="edit" value="<?= $pegawai->id_pegawai; ?>">
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
