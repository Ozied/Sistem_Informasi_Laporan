<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<?php
function get_nama_pegawai($pegawais, $id) {
    foreach ($pegawais as $p) {
        if ($p['id_pegawai'] == $id) return $p['nama'];
    }
    return '<span class="text-muted" title="Data belum tersedia">-</span>';
}
?>

<style>
  .box.box-primary {
    border-top: 3px solid #00a65a;
    box-shadow: 0 2px 8px rgba(0,0,0,0.05);
    border-radius: 6px;
  }

  .section-title {
    font-weight: 600;
    margin: 25px 0 15px;
    font-size: 18px;
    border-left: 4px solid #3c8dbc;
    padding-left: 10px;
    color: #34495e;
  }

  .table-detail tr:nth-child(odd) {
    background-color: #f9f9f9;
  }

  .badge-custom {
    font-size: 13px;
    background-color: #3c8dbc;
    color: white;
    padding: 5px 8px;
    border-radius: 4px;
  }

  .text-muted {
    color: #999;
    font-style: italic;
  }
</style>

<div class="content-wrapper">
  <section class="content-header">
    <h1><i class="fa fa-eye text-green"></i> <?= $title_web; ?></h1>
    <ol class="breadcrumb">
      <li><a href="<?= base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i> Dashboard</a></li>
      <li class="active"><i class="fa fa-eye"></i> <?= $title_web; ?></li>
    </ol>
  </section>

  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-clipboard text-green"></i> Detail Pelatihan: <?= $detail_pelatihan->id_detail_pelatihan; ?></h3>
          </div>
          <div class="box-body">

            <!-- Informasi Penanggung Jawab & Tim -->
            <div class="section-title"><i class="fa fa-users text-blue"></i> Tim Penyelenggara</div>
            <table class="table table-bordered table-detail">
              <tr><th style="width:30%">Penanggung Jawab</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_penanggung_jawab); ?></td></tr>
              <tr><th>Ketua Panitia</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_ketua_panitia); ?></td></tr>
              <tr><th>Akademis</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_akademis); ?></td></tr>
              <tr><th>Keuangan</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_keuangan); ?></td></tr>
              <tr><th>Administrasi</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_administrasi); ?></td></tr>
            </table>

            <!-- Widyaiswara dan Pengajar -->
            <div class="section-title"><i class="fa fa-chalkboard-teacher text-orange"></i> Widyaiswara & Pengajar</div>
            <table class="table table-bordered table-detail">
              <tr><th>WI 1</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_wi_1); ?></td></tr>
              <tr><th>WI 2</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_wi_2); ?></td></tr>
              <tr><th>WI 3</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_wi_3); ?></td></tr>
              <tr><th>WI 4</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_wi_4); ?></td></tr>
              <tr><th>WI Rapat Kelulusan</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_wi_rapat_kelulusan); ?></td></tr>
              <tr><th>Pengajar 1</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_pengajar_1); ?></td></tr>
              <tr><th>Pengajar 2</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_pengajar_2); ?></td></tr>
              <tr><th>Pengajar 3</th><td><?= get_nama_pegawai($pegawais, $detail_pelatihan->id_pengajar_3); ?></td></tr>
              <tr><th>Jumlah WI dan Pengajar</th><td><?= $detail_pelatihan->jumlah_wi_pengajar; ?></td></tr>
              <tr><th>WI S1 / S2 / S3</th><td><?= $detail_pelatihan->jumlah_pendidikan_wi_s1; ?> / <?= $detail_pelatihan->jumlah_pendidikan_wi_s2; ?> / <?= $detail_pelatihan->jumlah_pendidikan_wi_s3; ?></td></tr>
            </table>

            <!-- Informasi Peserta -->
            <div class="section-title"><i class="fa fa-users text-purple"></i> Informasi Peserta</div>
            <table class="table table-bordered table-detail">
              <tr><th>Total Peserta</th><td><?= $detail_pelatihan->jumlah_peserta; ?></td></tr>
              <tr><th>Lulus / Tidak Lulus</th><td><?= $detail_pelatihan->jumlah_lulus ?: 0; ?> / <?= $detail_pelatihan->jumlah_tidak_lulus ?: 0; ?></td></tr>
              <tr><th>Peserta ASN / Non-ASN</th><td><?= $detail_pelatihan->jumlah_peserta_asn; ?> / <?= $detail_pelatihan->jumlah_peserta_non_asn; ?></td></tr>
              <tr><th>Laki-laki / Perempuan</th><td><?= $detail_pelatihan->jumlah_peserta_laki; ?> / <?= $detail_pelatihan->jumlah_peserta_wanita; ?></td></tr>
              <tr><th>Pendidikan Peserta (SMA / S1 / S2 / S3)</th><td><?= $detail_pelatihan->jumlah_pendidikan_peserta_sma; ?> / <?= $detail_pelatihan->jumlah_pendidikan_peserta_s1; ?> / <?= $detail_pelatihan->jumlah_pendidikan_peserta_s2; ?> / <?= $detail_pelatihan->jumlah_pendidikan_peserta_s3; ?></td></tr>
              <tr><th>Jabatan Peserta</th><td><?= $detail_pelatihan->jabatan_peserta ?: '<span class="text-muted">-</span>'; ?></td></tr>
            </table>

            <!-- Anggaran -->
            <div class="section-title"><i class="fa fa-money text-green"></i> Anggaran</div>
            <table class="table table-bordered table-detail">
              <tr><th>RAB</th><td>Rp <?= number_format($detail_pelatihan->rab, 2, ',', '.'); ?></td></tr>
              <tr><th>Realisasi</th><td>Rp <?= number_format($detail_pelatihan->realisasi, 2, ',', '.'); ?></td></tr>
            </table>

            <!-- Metadata -->
            <div class="section-title"><i class="fa fa-clock-o text-gray"></i> Metadata</div>
            <table class="table table-bordered table-detail">
              <tr><th>Dibuat pada</th><td><?= date('d-m-Y H:i:s', strtotime($detail_pelatihan->created_at)); ?></td></tr>
              <tr><th>Diperbarui pada</th><td><?= date('d-m-Y H:i:s', strtotime($detail_pelatihan->updated_at)); ?></td></tr>
            </table>

            <div class="text-right">
              <a href="<?= base_url('data/detailpelatihan'); ?>" class="btn btn-danger btn-md">
                <i class="fa fa-arrow-left"></i> Kembali
              </a>
            </div>

          </div>
        </div>
      </div>
    </div>
  </section>
</div>
