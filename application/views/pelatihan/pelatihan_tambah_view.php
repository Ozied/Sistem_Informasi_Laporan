<?php if(! defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      <i class="fa fa-plus" style="color:green"> </i> <?= $title_web; ?>
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?= base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li class="active"><i class="fa fa-plus"></i> <?= $title_web; ?></li>
    </ol>
  </section>

  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header with-border"></div>
          <div class="box-body">
            <form action="<?= base_url('data/prosespelatihan'); ?>" method="POST">
              <div class="row">
                <div class="col-sm-6">
                  
                  <div class="form-group">
                    <label>Nama Kegiatan</label>
                    <input type="text" name="nama_kegiatan" class="form-control" required placeholder="Contoh: Pelatihan Literasi Digital">
                  </div>

                  <div class="form-group">
                    <label>Nama Pelatihan</label>
                    <input type="text" name="nama_pelatihan" class="form-control" required>
                  </div>

                  <div class="form-group">
                    <label>Provinsi</label>
                    <input type="text" name="provinsi" class="form-control" required>
                  </div>

                  <div class="form-group">
                    <label>Kabupaten/Kota</label>
                    <input type="text" name="kab_kota" class="form-control">
                  </div>

                  <div class="form-group">
                    <label>Tempat</label>
                    <input type="text" name="tempat" class="form-control" required>
                  </div>

                  <div class="form-group">
                    <label>Tanggal Mulai Pelatihan</label>
                    <input type="date" name="tanggal_mulai" class="form-control" required>
                  </div>

                  <div class="form-group">
                    <label>Tanggal Selesai Pelatihan</label>
                    <input type="date" name="tanggal_selesai" class="form-control" required>
                  </div>

                  <div class="form-group">
                    <label>Bulan TTD Laporan</label>
                    <input type="text" name="bulan_ttd" class="form-control" required placeholder="Contoh: Juli">
                  </div>

                  <div class="form-group">
                    <label>Tahun</label>
                    <input type="number" name="tahun" class="form-control" required placeholder="Contoh: 2025">
                  </div>

                </div>

                <div class="col-sm-6">

                  <div class="form-group">
                    <label>Tanggal Pembukaan</label>
                    <input type="date" name="hari_tanggal_pembukaan" class="form-control">
                  </div>

                  <div class="form-group">
                    <label>Waktu Pembukaan</label>
                    <input type="time" name="waktu_pembukaan" class="form-control">
                  </div>

                <!-- Pejabat Pembuka -->
                <div class="form-group">
                <label>Pejabat Pembuka</label>
                <select class="form-control select2" required name="id_pejabat_pembuka">
                    <option disabled selected value> -- Pilih Pegawai -- </option>
                    <?php foreach($pegawais as $isi){ ?>
                        <option value="<?= $isi['id_pegawai']; ?>"><?= $isi['nama']; ?></option>
                    <?php } ?>
                </select>
                </div>

                <!-- Jabatan Pejabat Pembuka -->
                <div class="form-group">
                <label>Jabatan Pejabat Pembuka</label>
                <select class="form-control select2" required name="id_role_pembuka">
                    <option disabled selected value> -- Pilih Jabatan -- </option>
                    <?php foreach($roles as $isi){ ?>
                        <option value="<?= $isi['id_role']; ?>"><?= $isi['nama_role']; ?></option>
                    <?php } ?>
                </select>
                </div>

                  <div class="form-group">
                    <label>Tanggal Penutupan</label>
                    <input type="date" name="hari_tanggal_penutupan" class="form-control">
                  </div>

                  <div class="form-group">
                    <label>Waktu Penutupan</label>
                    <input type="time" name="waktu_penutupan" class="form-control">
                  </div>

                <!-- Pejabat Penutup -->
                <div class="form-group">
                <label>Pejabat Penutup</label>
                <select class="form-control select2" required name="id_pejabat_penutup">
                    <option disabled selected value> -- Pilih Pegawai -- </option>
                    <?php foreach($pegawais as $isi){ ?>
                        <option value="<?= $isi['id_pegawai']; ?>"><?= $isi['nama']; ?></option>
                    <?php } ?>
                </select>
                </div>

                <!-- Jabatan Pejabat Penutup -->
                <div class="form-group">
                <label>Jabatan Pejabat Penutup</label>
                <select class="form-control select2" required name="id_role_penutup">
                    <option disabled selected value> -- Pilih Jabatan -- </option>
                    <?php foreach($roles as $isi){ ?>
                        <option value="<?= $isi['id_role']; ?>"><?= $isi['nama_role']; ?></option>
                    <?php } ?>
                </select>
                </div>

                </div>
              </div>

              <div class="pull-right">
                <input type="hidden" name="tambah" value="tambah">
                <button type="submit" class="btn btn-primary btn-md">Submit</button>
                <a href="<?= base_url('data'); ?>" class="btn btn-danger btn-md">Kembali</a>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
