<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="content-wrapper">
  <section class="content-header">
    <h1><i class="fa fa-edit text-success"></i> <?= $title_web; ?></h1>
    <ol class="breadcrumb">
      <li><a href="<?= base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li class="active"><?= $title_web; ?></li>
    </ol>
  </section>

  <section class="content">
    <form action="<?= base_url('data/prosesdetailpelatihan'); ?>" method="POST">
      <div class="row">
        <div class="col-md-12">

          <!-- Section 1: Informasi Kegiatan -->
          <div class="box box-primary">
            <div class="box-header with-border"><h4 class="box-title">Informasi Kegiatan</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-6">
                <label>Nama Kegiatan <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Pilih kegiatan pelatihan yang akan diedit"></i></label>
                <select class="form-control select2" name="id_pelatihan" required>
                  <option disabled <?= is_null($detail_pelatihan->id_pelatihan) ? 'selected' : ''; ?>>-- Pilih Kegiatan --</option>
                  <?php foreach($pelatihans as $isi): ?>
                    <option value="<?= $isi['id_pelatihan']; ?>" <?= ($isi['id_pelatihan'] == $detail_pelatihan->id_pelatihan) ? 'selected' : ''; ?>>
                      <?= $isi['nama_kegiatan']; ?>
                    </option>
                  <?php endforeach; ?>
                </select>
              </div>
              <div class="form-group col-md-6">
                <label>Penanggung Jawab <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Pilih panitia yang bertanggung jawab atas kegiatan ini"></i></label>
                <select class="form-control select2" name="id_penanggung_jawab" required>
                  <option disabled <?= is_null($detail_pelatihan->id_penanggung_jawab) ? 'selected' : ''; ?>>-- Pilih Pegawai --</option>
                  <?php foreach($pegawais as $isi): ?>
                    <option value="<?= $isi['id_pegawai']; ?>" <?= ($isi['id_pegawai'] == $detail_pelatihan->id_penanggung_jawab) ? 'selected' : ''; ?>>
                      <?= $isi['nama']; ?>
                    </option>
                  <?php endforeach; ?>
                </select>
              </div>
            </div>
          </div>

          <!-- Section 2: Tim Kegiatan -->
          <div class="box box-info">
            <div class="box-header with-border"><h4 class="box-title">Struktur Tim Kegiatan</h4></div>
            <div class="box-body row">
              <?php
                $positions = [
                  'id_ketua_panitia' => ['label' => 'Ketua Panitia', 'desc' => 'Pilih ketua panitia pelaksana kegiatan'],
                  'id_akademis' => ['label' => 'Akademis', 'desc' => 'Pilih penanggung jawab akademik kegiatan'],
                  'id_keuangan' => ['label' => 'Keuangan', 'desc' => 'Pilih penanggung jawab keuangan kegiatan'],
                  'id_administrasi' => ['label' => 'Administrasi', 'desc' => 'Pilih penanggung jawab administrasi kegiatan'],
                  'id_wi_1' => ['label' => 'WI 1', 'desc' => 'Pilih widyaiswara pertama'],
                  'id_wi_2' => ['label' => 'WI 2', 'desc' => 'Pilih widyaiswara kedua'],
                  'id_wi_3' => ['label' => 'WI 3', 'desc' => 'Pilih widyaiswara ketiga'],
                  'id_wi_4' => ['label' => 'WI 4', 'desc' => 'Pilih widyaiswara keempat'],
                  'id_wi_rapat_kelulusan' => ['label' => 'WI Rapat Kelulusan', 'desc' => 'Pilih widyaiswara yang hadir dalam rapat kelulusan'],
                  'id_pengajar_1' => ['label' => 'Pengajar 1', 'desc' => 'Pilih pengajar pertama'],
                  'id_pengajar_2' => ['label' => 'Pengajar 2', 'desc' => 'Pilih pengajar kedua'],
                  'id_pengajar_3' => ['label' => 'Pengajar 3', 'desc' => 'Pilih pengajar ketiga'],
                ];
              ?>
              <?php foreach ($positions as $name => $data): ?>
                <div class="form-group col-md-4">
                  <label><?= $data['label'] ?> <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="<?= $data['desc'] ?>"></i></label>
                  <select class="form-control select2" name="<?= $name; ?>">
                    <option disabled <?= is_null($detail_pelatihan->$name) ? 'selected' : ''; ?>>-- Pilih Pegawai --</option>
                    <?php foreach($pegawais as $isi): ?>
                      <option value="<?= $isi['id_pegawai']; ?>" <?= ($isi['id_pegawai'] == $detail_pelatihan->$name) ? 'selected' : ''; ?>>
                        <?= $isi['nama']; ?>
                      </option>
                    <?php endforeach; ?>
                  </select>
                </div>
              <?php endforeach; ?>
            </div>
          </div>

          <!-- Section 3: Statistik WI dan Pengajar -->
          <div class="box box-warning">
            <div class="box-header with-border"><h4 class="box-title">Statistik Widyaiswara & Pengajar</h4></div>
            <div class="box-body row">
              <?php
                $stat_fields = [
                  'jumlah_wi_pengajar' => 'Jumlah WI & Pengajar',
                  'jumlah_pendidikan_wi_d2' => 'WI D2/D3',
                  'jumlah_pendidikan_wi_s1' => 'WI S1',
                  'jumlah_pendidikan_wi_s2' => 'WI S2',
                  'jumlah_pendidikan_wi_s3' => 'WI S3',
                ];
              ?>
              <?php foreach ($stat_fields as $name => $label): ?>
                <div class="form-group col-md-4">
                  <label><?= $label ?></label>
                  <input type="number" name="<?= $name ?>" class="form-control" min="0" value="<?= $detail_pelatihan->$name; ?>">
                </div>
              <?php endforeach; ?>
            </div>
          </div>

          <!-- Section 4: Data Peserta -->
          <div class="box box-success">
            <div class="box-header with-border"><h4 class="box-title">Data Peserta</h4></div>
            <div class="box-body row">
              <?php
                $peserta_fields = [
                  'jumlah_peserta' => 'Jumlah Peserta',
                  'jumlah_lulus' => 'Jumlah Lulus',
                  'jumlah_tidak_lulus' => 'Jumlah Tidak Lulus',
                  'jumlah_peserta_asn' => 'Peserta ASN',
                  'jumlah_peserta_non_asn' => 'Peserta Non-ASN',
                  'jumlah_peserta_laki' => 'Peserta Laki-laki',
                  'jumlah_peserta_wanita' => 'Peserta Perempuan',
                  'jumlah_pendidikan_peserta_sma' => 'Pendidikan Peserta SMA',
                  'jumlah_pendidikan_peserta_d3' => 'Pendidikan Peserta D3',
                  'jumlah_pendidikan_peserta_s1' => 'Pendidikan Peserta S1',
                  'jumlah_pendidikan_peserta_s2' => 'Pendidikan Peserta S2',
                  'jumlah_pendidikan_peserta_s3' => 'Pendidikan Peserta S3',
                ];
              ?>
              <?php foreach ($peserta_fields as $name => $label): ?>
                <div class="form-group col-md-4">
                  <label><?= $label ?></label>
                  <input type="number" name="<?= $name ?>" class="form-control" min="0" value="<?= $detail_pelatihan->$name; ?>">
                </div>
              <?php endforeach; ?>
              <div class="form-group col-md-3">
                <label>Jabatan Peserta <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Jabatan/jenis pekerjaan peserta"></i></label>
                <textarea name="jabatan_peserta" class="form-control" rows="1"><?= $detail_pelatihan->jabatan_peserta; ?></textarea>
              </div>
            </div>
          </div>

          <!-- Section 5: Anggaran -->
          <div class="box box-danger">
            <div class="box-header with-border"><h4 class="box-title">Informasi Anggaran</h4></div>
            <div class="box-body row">
              <div class="form-group col-md-6">
                <label>RAB (Rp) <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Rencana Anggaran Biaya kegiatan"></i></label>
                <input type="number" name="rab" class="form-control" step="0.01" min="0" value="<?= $detail_pelatihan->rab; ?>">
              </div>
              <div class="form-group col-md-6">
                <label>Realisasi (Rp) <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Realisasi anggaran yang digunakan"></i></label>
                <input type="number" name="realisasi" class="form-control" step="0.01" min="0" value="<?= $detail_pelatihan->realisasi; ?>">
              </div>
            </div>
          </div>

          <!-- Submit Button -->
          <div class="box-footer text-right">
            <input type="hidden" name="edit" value="<?= $detail_pelatihan->id_detail_pelatihan; ?>">
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="<?= base_url('data/detailpelatihan?jenis=PDWK'); ?>" class="btn btn-danger">Kembali</a>
          </div>

        </div>
      </div>
    </form>
  </section>
</div>

<script>
// Initialize tooltips
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip({
        trigger: 'hover',
        placement: 'right',
        container: 'body'
    }); 
});
</script>