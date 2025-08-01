<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>
<div class="content-wrapper">
  <section class="content-header">
    <h1>
      <i class="fa fa-file" style="color:green"> </i> <?= $title_web; ?>
    </h1>
    <ol class="breadcrumb">
      <li><a href="<?php echo base_url('dashboard'); ?>"><i class="fa fa-dashboard"></i>&nbsp; Dashboard</a></li>
      <li><a href="<?php echo base_url('data/dokumenpelatihan'); ?>"><i class="fa fa-folder"></i>&nbsp; Pelatihan</a></li>
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
            <button class="btn btn-primary" data-toggle="modal" data-target="#modalTambahDokumenPelatihan">
                <i class="fa fa-plus"> </i> Tambah Dokumen Pelatihan
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
                    <th>Nama Dokumen</th>
                    <th>Deskripsi</th>
                    <th>File</th>
                    <th>Tanggal Upload</th>
                    <th>Aksi</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 1; foreach ($dokumen_pelatihan->result_array() as $dokumen) { ?>
                    <tr>
                      <td><?= $no; ?></td>
                      <td><?= htmlentities($dokumen['nama_dokumen']); ?></td>
                      <td><?= htmlentities($dokumen['deskripsi']); ?></td>
                      <td>
                        <?php if (!empty($dokumen['file_path'])) { ?>
                        <a href="<?= base_url('assets_style/assets/dokumen/' . $dokumen['file_path']); ?>" target="_blank">
                        <i class="fa fa-file-pdf-o"></i> <?= $dokumen['file_path']; ?>
                        </a>
                        <?php } else { echo '-'; } ?>
                      </td>
                      <td><?= date('d-m-Y', strtotime($dokumen['tanggal_upload'])); ?></td>
                      <td>
                        <?php if ($this->session->userdata('level') == 'Petugas') { ?>
                            <!-- Tombol Edit -->
                            <button class="btn btn-success btn-sm" data-toggle="modal" data-target="#modalEditDokumenPelatihan<?= $dokumen['id_pelatihan_dokumen']; ?>">
                            <i class="fa fa-edit"></i> Edit
                            </button>
                          <a href="<?= base_url('data/prosesdokumenpelatihan?id_pelatihan_dokumen=' . $dokumen['id_pelatihan_dokumen'] . '&id_pelatihan=' . $id_pelatihan); ?>" onclick="return confirm('Yakin ingin menghapus dokumen ini?');">
                            <button class="btn btn-danger"><i class="fa fa-trash"></i></button>
                          </a>
                        <?php } ?>
                      </td>
                    </tr>
                    <!-- Modal Edit Dokumen Pelatihan -->
                    <div class="modal fade" id="modalEditDokumenPelatihan<?= $dokumen['id_pelatihan_dokumen']; ?>" tabindex="-1" role="dialog" aria-labelledby="modalEditDokumenPelatihanLabel<?= $dokumen['id_pelatihan_dokumen']; ?>">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                        <form action="<?= base_url('data/prosesdokumenpelatihan'); ?>" method="POST" enctype="multipart/form-data">
                            <div class="modal-header bg-green">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <h4 class="modal-title" id="modalEditDokumenPelatihanLabel<?= $dokumen['id_pelatihan_dokumen']; ?>">
                                <i class="fa fa-edit" style="color:white;"></i> Edit Dokumen Pelatihan
                            </h4>
                            </div>

                            <div class="modal-body">
                            <input type="hidden" name="edit" value="<?= $dokumen['id_pelatihan_dokumen']; ?>">
                            <input type="hidden" name="id_pelatihan" value="<?= $id_pelatihan; ?>">
 
                            <div class="form-group">
                                <label for="id_dokumen_<?= $dokumen['id_pelatihan_dokumen']; ?>">Pilih Dokumen</label>
                                <select name="id_dokumen" id="id_dokumen_<?= $dokumen['id_pelatihan_dokumen']; ?>" class="form-control" required>
                                <?php
                                foreach ($dokumen_all_raw as $dok) {
                                    $selected = ($dokumen['id_dokumen'] == $dok->id_dokumen) ? 'selected' : '';
                                    echo '<option value="' . $dok->id_dokumen . '" ' . $selected . '>' . htmlentities($dok->nama_dokumen) . '</option>';
                                }
                                ?>
                                </select>
                            </div>
                            <div class="form-group">
                            <label for="file_upload_edit_<?= $dokumen['id_pelatihan_dokumen']; ?>">Upload File (kosongkan jika tidak diubah) Format File : .pdf</label>
                            <input type="file" name="file_upload" class="form-control">
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

<!-- Modal Tambah Dokumen Pelatihan -->
<div class="modal fade" id="modalTambahDokumenPelatihan" tabindex="-1" role="dialog" aria-labelledby="modalTambahDokumenPelatihanLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form action="<?= base_url('data/prosesdokumenpelatihan'); ?>" method="POST" enctype="multipart/form-data">
        <div class="modal-header bg-blue">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="modalTambahDokumenPelatihanLabel">
            <i class="fa fa-plus" style="color:white"></i> Tambah Dokumen Pelatihan
          </h4>
        </div>

        <div class="modal-body">
          <input type="hidden" name="tambah" value="tambah">
          <input type="hidden" name="id_pelatihan" value="<?= $id_pelatihan; ?>">

          <div class="form-group">
            <label for="id_dokumen">Pilih Dokumen</label>
            <select name="id_dokumen" id="id_dokumen" class="form-control" required>
            <option value="">-- Pilih Dokumen --</option>
            <?php foreach ($dokumen_all as $dok) : ?>
                <option value="<?= $dok->id_dokumen ?>"><?= htmlentities($dok->nama_dokumen) ?></option>
            <?php endforeach; ?>
            </select>
          </div>

          <div class="form-group">
            <label for="file_path">Upload File Format File : .pdf</label>
            <input type="file" name="file_upload" class="form-control" required>
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

