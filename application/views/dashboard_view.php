
<!-- Content Wrapper -->
<div class="content-wrapper">
  <section class="content-header">
    <h1>Dashboard <small>Control panel</small></h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Dashboard</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-sm-12">
        <!-- Pelatihan -->
        <div class="col-lg-4 col-xs-12">
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3><?= $count_pelatihan; ?></h3>
              <p>Jumlah Pelatihan</p>
            </div>
            <div class="icon"><i class="fa fa-graduation-cap"></i></div>
            <a class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <!-- Peserta -->
        <div class="col-lg-4 col-xs-12">
          <div class="small-box bg-green">
            <div class="inner">
              <h3><?= $count_peserta; ?></h3>
              <p>Jumlah Peserta</p>
            </div>
            <div class="icon"><i class="fa fa-users"></i></div>
            <a class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

        <!-- Pegawai -->
        <div class="col-lg-4 col-xs-12">
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><?= $count_pegawai; ?></h3>
              <p>Jumlah Pegawai</p>
            </div>
            <div class="icon"><i class="fa fa-user"></i></div>
            <a class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>

      </div>
    </div>
  </section>
</div>
