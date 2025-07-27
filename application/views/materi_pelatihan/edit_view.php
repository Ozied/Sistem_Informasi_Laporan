<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="content-wrapper">
  <section class="content-header">
    <h1><i class="fa fa-edit text-info"></i> <?= $title_web; ?></h1>
    <ol class="breadcrumb">
      <li><a href="<?= base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li class="active"><?= $title_web; ?></li>
    </ol>
  </section>

  <section class="content">
    <form action="<?= base_url('data/prosesmateripelatihan'); ?>" method="POST">
      <div class="row">
        <div class="col-md-12">

          <!-- Section 1: Informasi Pelatihan -->
          <div class="box box-primary">
            <div class="box-header with-border"><h4 class="box-title">Informasi Pelatihan</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-6">
                <label>Nama Kegiatan Pelatihan</label>
                <select class="form-control select2" name="id_pelatihan" required>
                  <option disabled>-- Pilih Kegiatan --</option>
                  <?php foreach ($pelatihans as $isi): ?>
                    <option value="<?= $isi['id_pelatihan']; ?>" <?= ($isi['id_pelatihan'] == $materi_pelatihan->id_pelatihan) ? 'selected' : ''; ?>>
                      <?= $isi['nama_kegiatan']; ?>
                    </option>
                  <?php endforeach; ?>
                </select>
              </div>
              <div class="form-group col-md-6">
                <label>Jumlah Jam Pelajaran (JP)</label>
                <input type="number" class="form-control" name="jumlah_jp" min="0" value="<?= $materi_pelatihan->jumlah_jp; ?>">
              </div>
            </div>
          </div>

          <!-- Section 2: Rincian JP -->
          <div class="box box-info">
            <div class="box-header with-border"><h4 class="box-title">Jumlah Jam Pelatihan (JP)</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-4">
                <label>JP Kelompok Dasar</label>
                <input type="number" class="form-control" name="jp_kel_dasar" min="0" value="<?= $materi_pelatihan->jp_kel_dasar; ?>">
              </div>
              <div class="form-group col-md-4">
                <label>JP Kelompok Inti</label>
                <input type="number" class="form-control" name="jp_kel_inti" min="0" value="<?= $materi_pelatihan->jp_kel_inti; ?>">
              </div>
              <div class="form-group col-md-4">
                <label>JP Kelompok Penunjang</label>
                <input type="number" class="form-control" name="jp_kel_penunjang" min="0" value="<?= $materi_pelatihan->jp_kel_penunjang; ?>">
              </div>
            </div>
          </div>

          <!-- Section 3: Mata Pelatihan -->
          <div class="box box-success">
            <div class="box-header with-border"><h4 class="box-title">Nama Mata Pelatihan</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-4">
                <label>Mata Pelatihan Kel. Dasar</label>
                <textarea name="nama_mata_pelatihan_kel_dasar" class="form-control" rows="2"><?= $materi_pelatihan->nama_mata_pelatihan_kel_dasar; ?></textarea>
              </div>
              <div class="form-group col-md-4">
                <label>Mata Pelatihan Kel. Inti</label>
                <textarea name="nama_mata_pelatihan_kel_inti" class="form-control" rows="2"><?= $materi_pelatihan->nama_mata_pelatihan_kel_inti; ?></textarea>
              </div>
              <div class="form-group col-md-4">
                <label>Mata Pelatihan Kel. Penunjang</label>
                <textarea name="nama_mata_pelatihan_kel_penunjang" class="form-control" rows="2"><?= $materi_pelatihan->nama_mata_pelatihan_kel_penunjang; ?></textarea>
              </div>
            </div>
          </div>

          <!-- Section 4: Tujuan dan Latar Belakang -->
          <div class="box box-warning">
            <div class="box-header with-border"><h4 class="box-title">Latar Belakang & Tujuan</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-6">
                <label>Latar Belakang</label>
                <textarea name="latar_belakang" class="form-control" rows="3"><?= $materi_pelatihan->latar_belakang; ?></textarea>
              </div>
              <div class="form-group col-md-6">
                <label>Tujuan Pelatihan</label>
                <textarea name="tujuan_pelatihan" class="form-control" rows="3"><?= $materi_pelatihan->tujuan_pelatihan; ?></textarea>
              </div>
              <div class="form-group col-md-6">
                <label>Tujuan Kursil</label>
                <textarea name="tujuan_kursil" class="form-control" rows="3"><?= $materi_pelatihan->tujuan_kursil; ?></textarea>
              </div>
              <div class="form-group col-md-6">
                <label>Asal Kursil</label>
                <textarea name="asal_kursil" class="form-control" rows="3"><?= $materi_pelatihan->asal_kursil; ?></textarea>
              </div>
            </div>
          </div>

          <!-- Submit Button -->
          <div class="box-footer text-right">
            <input type="hidden" name="edit" value="<?= $materi_pelatihan->id_materi_pelatihan; ?>">
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="<?= base_url('data/materipelatihan'); ?>" class="btn btn-danger">Kembali</a>
          </div>

        </div>
      </div>
    </form>
  </section>
</div>
