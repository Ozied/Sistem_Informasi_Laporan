<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="content-wrapper">
  <section class="content-header">
    <h1><i class="fa fa-plus text-success"></i> <?= $title_web; ?></h1>
    <ol class="breadcrumb">
      <li><a href="<?= base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li class="active"><?= $title_web; ?></li>
    </ol>
  </section>

  <section class="content">
    <form action="<?= base_url('data/prosesmateripelatihan'); ?>" method="POST">
      <div class="row">
        <div class="col-md-12">

          <!-- Section 1: Pilih Pelatihan -->
          <div class="box box-primary">
            <div class="box-header with-border"><h4 class="box-title">Informasi Pelatihan</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-6">
                <label>Nama Kegiatan Pelatihan</label>
                <select class="form-control select2" name="id_pelatihan" required>
                  <option disabled selected>-- Pilih Pelatihan --</option>
                  <?php foreach($pelatihans as $isi): ?>
                    <option value="<?= $isi['id_pelatihan']; ?>"><?= $isi['nama_kegiatan']; ?></option>
                  <?php endforeach; ?>
                </select>
              </div>
            </div>
          </div>

          <!-- Section 2: JP Pelatihan -->
          <div class="box box-info">
            <div class="box-header with-border"><h4 class="box-title">Jumlah Jam Pelatihan (JP)</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-3">
                <label>Total JP</label>
                <input type="number" name="jumlah_jp" class="form-control" value="0" min="0">
              </div>
              <div class="form-group col-md-3">
                <label>JP Kel. Dasar</label>
                <input type="number" name="jp_kel_dasar" class="form-control" value="0" min="0">
              </div>
              <div class="form-group col-md-3">
                <label>JP Kel. Inti</label>
                <input type="number" name="jp_kel_inti" class="form-control" value="0" min="0">
              </div>
              <div class="form-group col-md-3">
                <label>JP Kel. Penunjang</label>
                <input type="number" name="jp_kel_penunjang" class="form-control" value="0" min="0">
              </div>
            </div>
          </div>

          <!-- Section 3: Mata Pelatihan -->
          <div class="box box-warning">
            <div class="box-header with-border"><h4 class="box-title">Nama Mata Pelatihan</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-4">
                <label>Kel. Dasar</label>
                <textarea name="nama_mata_pelatihan_kel_dasar" class="form-control" rows="2"></textarea>
              </div>
              <div class="form-group col-md-4">
                <label>Kel. Inti</label>
                <textarea name="nama_mata_pelatihan_kel_inti" class="form-control" rows="2"></textarea>
              </div>
              <div class="form-group col-md-4">
                <label>Kel. Penunjang</label>
                <textarea name="nama_mata_pelatihan_kel_penunjang" class="form-control" rows="2"></textarea>
              </div>
            </div>
          </div>

          <!-- Section 4: Deskripsi Kursil -->
          <div class="box box-success">
            <div class="box-header with-border"><h4 class="box-title">Latar Belakang & Tujuan</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-12">
                <label>Latar Belakang</label>
                <textarea name="latar_belakang" class="form-control" rows="3"></textarea>
              </div>
              <div class="form-group col-md-6">
                <label>Tujuan Pelatihan</label>
                <textarea name="tujuan_pelatihan" class="form-control" rows="3"></textarea>
              </div>
              <div class="form-group col-md-6">
                <label>Tujuan Kursil</label>
                <textarea name="tujuan_kursil" class="form-control" rows="3"></textarea>
              </div>
              <div class="form-group col-md-12">
                <label>Asal Kursil</label>
                <textarea name="asal_kursil" class="form-control" rows="2"></textarea>
              </div>
            </div>
          </div>

          <!-- Submit Button -->
          <div class="box-footer text-right">
            <input type="hidden" name="tambah" value="tambah">
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="<?= base_url('data/materipelatihan'); ?>" class="btn btn-danger">Kembali</a>
          </div>

        </div>
      </div>
    </form>
  </section>
</div>
