<div class="content-wrapper">
  <section class="content-header">
    <h1>
      <i class="fa fa-calendar" style="color:green"> </i> <?= $title_web; ?>
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i>&nbsp; Dashboard</a></li>
      <li><a href="<?php echo base_url('data/kegiatanpelatihan'); ?>"><i class="fa fa-calendar"></i>&nbsp; Kegiatan Pelatihan</a></li>
      <li class="active"><i class="fa fa-file-text"></i>&nbsp; <?= $title_web; ?></li>
    </ol>
  </section>

  <section class="content">
    <?php if (!empty($this->session->flashdata())) {
      echo $this->session->flashdata('pesan');
    } ?>
    <div class="row">
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <?php if ($this->session->userdata('level') == 'Petugas') { ?>
            <button class="btn btn-primary" data-toggle="modal" data-target="#modalTambahKegiatanPelatihan">
                <i class="fa fa-plus"> </i> Tambah Kegiatan Pelatihan
            </button>
            <?php } ?>
          </div>

          <div class="box-body">
            <br/>
            <div class="table-responsive">
              <table id="example1" class="table table-bordered table-striped table" width="100%">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Sesi Ke</th>
                    <th>Hari Ke</th>
                    <th>Nama Kegiatan</th>
                    <th>Narasumber</th>
                    <th>Deskripsi</th>
                    <th>Tanggal</th>
                    <th>Jam Mulai</th>
                    <th>Jam Selesai</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 1; foreach ($dokumentasi_pelatihan->result_array() as $kegiatan) { ?>
                    <tr>
                      <td><?= $no; ?></td>
                      <td><?= htmlentities($kegiatan['sesi_ke']); ?></td>
                      <td><?= htmlentities($kegiatan['day_ke']); ?></td>
                      <td><?= htmlentities($kegiatan['nama_kegiatan']); ?></td>
                      <td><?= htmlentities($kegiatan['nama_narasumber']); ?></td>
                      <td><?= htmlentities($kegiatan['activity_desc']); ?></td>
                      <td><?= date('d-m-Y', strtotime($kegiatan['tanggal_activity'])); ?></td>
                      <td><?= date('H:i', strtotime($kegiatan['jam_mulai'])); ?></td>
                      <td><?= date('H:i', strtotime($kegiatan['jam_selesai'])); ?></td>
                      <td>
                        <?php if ($this->session->userdata('level') == 'Petugas') { ?>
                            <!-- Tombol Edit -->
                            <button class="btn btn-success btn-sm" data-toggle="modal" data-target="#modalEditKegiatanPelatihan<?= $kegiatan['id_activity']; ?>">
                            <i class="fa fa-edit"></i> Edit
                            </button>
                            <!-- Tombol Upload Foto -->
                            <button class="btn btn-info btn-sm" data-toggle="modal" data-target="#modalUploadFoto<?= $kegiatan['id_activity']; ?>">
                            <i class="fa fa-upload"></i> Foto
                            </button>
                            <!-- Tombol Lihat Foto -->
                            <button class="btn btn-warning btn-sm" data-toggle="modal" data-target="#modalPhotoGallery<?= $kegiatan['id_activity']; ?>">
                                <i class="fa fa-eye"></i> Lihat Foto
                            </button>
                          <a href="<?= base_url('data/proseskegiatanpelatihan?id_activity=' . $kegiatan['id_activity'] . '&id_pelatihan=' . $id_pelatihan); ?>" onclick="return confirm('Yakin ingin menghapus kegiatan ini?');">
                            <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
                          </a>
                        <?php } ?>
                      </td>
                    </tr>
                    <!-- Modal Edit Kegiatan Pelatihan -->
                   <div class="modal fade" id="modalEditKegiatanPelatihan<?= $kegiatan['id_activity']; ?>" tabindex="-1" role="dialog" aria-labelledby="modalEditKegiatanPelatihanLabel<?= $kegiatan['id_activity']; ?>">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <form action="<?= base_url('data/proseskegiatanpelatihan'); ?>" method="POST">
                        <div class="modal-header bg-green">
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                          <h4 class="modal-title" id="modalEditKegiatanPelatihanLabel<?= $kegiatan['id_activity']; ?>">
                            <i class="fa fa-edit" style="color:white;"></i> Edit Kegiatan Pelatihan
                          </h4>
                        </div>

                        <div class="modal-body">
                          <input type="hidden" name="edit" value="<?= $kegiatan['id_activity']; ?>">
                          <input type="hidden" name="id_pelatihan" value="<?= $id_pelatihan; ?>">

                          <div class="form-group">
                            <label for="sesi_ke">Sesi Ke <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Nomor sesi kegiatan (contoh: 1 untuk sesi pertama)"></i></label>
                            <input type="number" name="sesi_ke" class="form-control" value="<?= $kegiatan['sesi_ke']; ?>" required>
                          </div>
                          <div class="form-group">
                            <label for="day_ke">Hari Ke <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Hari ke berapa dalam pelatihan (contoh: 1 untuk hari pertama)"></i></label>
                            <input type="number" name="day_ke" class="form-control" value="<?= $kegiatan['day_ke']; ?>" required>
                          </div>
                          <div class="form-group">
                            <label for="nama_kegiatan">Nama Kegiatan <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Nama lengkap kegiatan pelatihan"></i></label>
                            <input type="text" name="nama_kegiatan" class="form-control" value="<?= htmlentities($kegiatan['nama_kegiatan']); ?>" required>
                          </div>
                          <div class="form-group">
                            <label for="id_narasumber">Narasumber <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Pilih narasumber dari daftar pegawai"></i></label>
                            <select name="id_narasumber" class="form-control">
                              <option value="">-- Pilih Narasumber --</option>
                              <?php foreach ($pegawai as $p) : ?>
                                <option value="<?= $p->id_pegawai; ?>" <?= $p->id_pegawai == $kegiatan['id_narasumber'] ? 'selected' : ''; ?>>
                                  <?= htmlentities($p->nama); ?>
                                </option>
                              <?php endforeach; ?>
                            </select>
                          </div>
                          <div class="form-group">
                            <label for="activity_desc">Deskripsi <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Penjelasan detail tentang kegiatan (opsional)"></i></label>
                            <textarea name="activity_desc" class="form-control"><?= htmlentities($kegiatan['activity_desc']); ?></textarea>
                          </div>
                          <div class="form-group">
                            <label for="tanggal_activity">Tanggal <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Tanggal pelaksanaan kegiatan"></i></label>
                            <input type="date" name="tanggal_activity" class="form-control" value="<?= $kegiatan['tanggal_activity']; ?>" required>
                          </div>
                          <div class="form-group">
                            <label for="jam_mulai">Jam Mulai <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Waktu mulai kegiatan (format 24 jam)"></i></label>
                            <input type="time" name="jam_mulai" class="form-control" value="<?= date('H:i', strtotime($kegiatan['jam_mulai'])); ?>" required>
                          </div>
                          <div class="form-group">
                            <label for="jam_selesai">Jam Selesai <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Waktu selesai kegiatan (format 24 jam)"></i></label>
                            <input type="time" name="jam_selesai" class="form-control" value="<?= date('H:i', strtotime($kegiatan['jam_selesai'])); ?>" required>
                          </div>
                        </div>

                        <div class="modal-footer">
                          <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> Simpan Perubahan</button>
                          <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-times"></i> Batal</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>

                    <!-- Modal Upload Foto (with tooltips) -->
                  <div class="modal fade" id="modalUploadFoto<?= $kegiatan['id_activity']; ?>" tabindex="-1" role="dialog" aria-labelledby="modalUploadFotoLabel<?= $kegiatan['id_activity']; ?>">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <form action="<?= base_url('data/proseskegiatanpelatihan'); ?>" method="POST" enctype="multipart/form-data">
                          <div class="modal-header bg-blue">
                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span></button>
                            <h4 class="modal-title" id="modalUploadFotoLabel<?= $kegiatan['id_activity']; ?>">
                              <i class="fa fa-upload" style="color:white;"></i> Upload Foto Kegiatan
                            </h4>
                          </div>

                          <div class="modal-body">
                            <input type="hidden" name="upload_foto" value="1">
                            <input type="hidden" name="id_activity" value="<?= $kegiatan['id_activity']; ?>">
                            <input type="hidden" name="id_pelatihan" value="<?= $id_pelatihan; ?>">

                            <div class="form-group">
                              <label for="foto_kegiatan">
                                Pilih Foto <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Pilih file gambar (format JPG/PNG, maks. 2MB per file)"></i>
                              </label>
                              <input type="file" name="foto_kegiatan[]" class="form-control" multiple accept="image/*" required>
                              <small class="text-muted">Dapat mengunggah lebih dari satu foto.</small>
                            </div>
                            <div class="form-group">
                              <label for="keterangan">
                                Keterangan <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Deskripsi foto (contoh: 'Sesi diskusi kelompok')"></i>
                              </label>
                              <textarea name="keterangan" class="form-control" rows="2" placeholder="Keterangan foto (opsional)"></textarea>
                            </div>
                            <div class="form-group">
                              <label for="tanggal_foto">
                                Tanggal Foto <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Tanggal ketika foto diambil"></i>
                              </label>
                              <input type="date" name="tanggal_foto" class="form-control" value="<?= $kegiatan['tanggal_activity']; ?>" required>
                            </div>
                          </div>

                          <div class="modal-footer">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-upload"></i> Upload</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>

                    <!-- Modal Photo Gallery -->
                    <div class="modal fade" id="modalPhotoGallery<?= $kegiatan['id_activity']; ?>" tabindex="-1" role="dialog" aria-labelledby="modalPhotoGalleryLabel<?= $kegiatan['id_activity']; ?>">
                      <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                          <div class="modal-header bg-purple">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="modalPhotoGalleryLabel<?= $kegiatan['id_activity']; ?>">
                              <i class="fa fa-image" style="color:white;"></i> Galeri Foto Kegiatan
                            </h4>
                          </div>
                          <div class="modal-body">
                            <div class="row">
                              <?php
                              $fotos = $this->db->get_where('tbl_pelatihan_foto', ['id_activity' => $kegiatan['id_activity'], 'deleted_at' => NULL])->result();
                              if (count($fotos) > 0) {
                                foreach ($fotos as $foto) {
                              ?>
                                  <div class="col-md-4">
                                    <div class="thumbnail">
                                      <img src="<?= base_url($foto->foto_path); ?>" alt="<?= htmlentities($foto->keterangan); ?>" style="width:100%;">
                                      <div class="caption">
                                        <p><?= htmlentities($foto->keterangan); ?></p>
                                        <p>
                                          <a href="#" class="btn btn-danger btn-xs" onclick="deletePhoto(<?= $foto->id_foto; ?>, <?= $kegiatan['id_pelatihan']; ?>)">
                                            <i class="fa fa-trash"></i> Hapus
                                          </a>
                                        </p>
                                      </div>
                                    </div>
                                  </div>
                              <?php
                                }
                              } else {
                                echo '<div class="col-md-12"><p>Tidak ada foto untuk kegiatan ini.</p></div>';
                              }
                              ?>
                            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  <?php $no++; } ?>
                </tbody>
              </table>
            </div> <!-- /.table-responsive -->
          </div> <!-- /.box-body -->
        </div> <!-- /.box -->
      </div> <!-- /.col -->
    </div> <!-- /.row -->
  </section>
</div>

<!-- Modal Tambah Kegiatan Pelatihan (with tooltips) -->
<div class="modal fade" id="modalTambahKegiatanPelatihan" tabindex="-1" role="dialog" aria-labelledby="modalTambahKegiatanPelatihanLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form action="<?= base_url('data/proseskegiatanpelatihan'); ?>" method="POST">
        <div class="modal-header bg-blue">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="modalTambahKegiatanPelatihanLabel">
            <i class="fa fa-plus" style="color:white"></i> Tambah Kegiatan Pelatihan
          </h4>
        </div>

        <div class="modal-body">
          <input type="hidden" name="tambah" value="tambah">
          <input type="hidden" name="id_pelatihan" value="<?= $id_pelatihan; ?>">

          <div class="form-group">
            <label for="sesi_ke">Sesi Ke <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Nomor sesi kegiatan (contoh: 1 untuk sesi pertama)"></i></label>
            <input type="number" name="sesi_ke" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="day_ke">Hari Ke <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Hari ke berapa dalam pelatihan (contoh: 1 untuk hari pertama)"></i></label>
            <input type="number" name="day_ke" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="nama_kegiatan">Nama Kegiatan <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Nama lengkap kegiatan pelatihan"></i></label>
            <input type="text" name="nama_kegiatan" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="id_narasumber">Narasumber <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Pilih narasumber dari daftar pegawai"></i></label>
            <select name="id_narasumber" class="form-control">
                <option value="">-- Pilih Narasumber --</option>
                <?php foreach ($pegawai as $p) : ?>
                    <option value="<?= $p->id_pegawai; ?>"><?= htmlentities($p->nama); ?></option>
                <?php endforeach; ?>
            </select>
          </div>
          <div class="form-group">
            <label for="activity_desc">Deskripsi <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Penjelasan detail tentang kegiatan (opsional)"></i></label>
            <textarea name="activity_desc" class="form-control"></textarea>
          </div>
          <div class="form-group">
            <label for="tanggal_activity">Tanggal <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Tanggal pelaksanaan kegiatan"></i></label>
            <input type="date" name="tanggal_activity" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="jam_mulai">Jam Mulai <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Waktu mulai kegiatan (format 24 jam)"></i></label>
            <input type="time" name="jam_mulai" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="jam_selesai">Jam Selesai <i class="fa fa-info-circle text-blue" data-toggle="tooltip" title="Waktu selesai kegiatan (format 24 jam)"></i></label>
            <input type="time" name="jam_selesai" class="form-control" required>
          </div>
        </div>

        <div class="modal-footer">
          <button type="submit" class="btn btn-primary">Simpan</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script>

// Initialize tooltips for all modals
$(document).ready(function(){
    // Function to initialize tooltips
    function initTooltips() {
        $('[data-toggle="tooltip"]').tooltip({
            trigger: 'hover',
            placement: 'right',
            container: 'body'
        });
    }
    
    // Initialize for tambah modal
    $('#modalTambahKegiatanPelatihan').on('shown.bs.modal', initTooltips);
    
    // Initialize for all edit modals
    $('[id^="modalEditKegiatanPelatihan"]').on('shown.bs.modal', initTooltips);
    
    // Initialize for all upload foto modals
    $('[id^="modalUploadFoto"]').on('shown.bs.modal', initTooltips);
    
    // Initialize tooltips on page load
    initTooltips();
});

function deletePhoto(id_foto, id_pelatihan) {
    if (confirm('Yakin ingin menghapus foto ini?')) {
        window.location.href = '<?= base_url('data/proseskegiatanpelatihan?delete_foto='); ?>' + id_foto + '&id_pelatihan=' + id_pelatihan;
    }
}
</script>
