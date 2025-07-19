<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <?php
            $d = $this->db->query("SELECT * FROM tbl_login WHERE id_login='$idbo'")->row();
            if(isset($d->foto)){
          ?>
          <br/>
          <img src="<?php echo base_url();?>assets_style/image/<?php echo $d->foto;?>" alt="#" c
          lass="user-image" style="border:2px solid #fff;height:auto;width:100%;"/>
          <?php }else{?>
            <!--<img src="" alt="#" class="user-image" style="border:2px solid #fff;"/>-->
            <i class="fa fa-user fa-4x" style="color:#fff;"></i>
          <?php }?>
        </div>
        <div class="pull-left info" style="margin-top: 5px;">
          <p><?php echo $d->nama;?></p>
          <p><?= $d->level;?>
          </p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
        <br/>
        <br/>
        <br/>
        <br/>
		</div>
        <ul class="sidebar-menu" data-widget="tree">
			<?php if($this->session->userdata('level') == 'Petugas'){?>
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <li class="header">MAIN NAVIGATION</li>
            <li class="<?php if($this->uri->uri_string() == 'dashboard'){ echo 'active';}?>">
                <a href="<?php echo base_url('dashboard');?>">
                    <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
            </li>
            <li class="<?php if($this->uri->uri_string() == 'user'){ echo 'active';}?>
                <?php if($this->uri->uri_string() == 'user/tambah'){ echo 'active';}?>
                <?php if($this->uri->uri_string() == 'user/edit/'.$this->uri->segment('3')){ echo 'active';}?>">
                <a href="<?php echo base_url('user');?>" class="cursor">
                    <i class="fa fa-user"></i> <span>Data Pengguna</span></a>
			</li>
			<li class="treeview <?php if($this->uri->uri_string() == 'data/kategori'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/rak'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/bukutambah'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/bukudetail/'.$this->uri->segment('3')){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/bukuedit/'.$this->uri->segment('3')){ echo 'active';}?>">
                <a href="#">
                    <i class="fa fa-pencil-square"></i>
                    <span>Data </span>
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?php if($this->uri->uri_string() == 'data'){ echo 'active';}?>
                        <?php if($this->uri->uri_string() == 'data/bukutambah'){ echo 'active';}?>
                        <?php if($this->uri->uri_string() == 'data/bukudetail/'.$this->uri->segment('3')){ echo 'active';}?>
                        <?php if($this->uri->uri_string() == 'data/bukuedit/'.$this->uri->segment('3')){ echo 'active';}?>">
                        <a href="<?php echo base_url("data");?>" class="cursor">
                            <span class="fa fa-book"></span> Data Buku
                            
                        </a>
                    </li>
                    <li class=" <?php if($this->uri->uri_string() == 'data/kategori'){ echo 'active';}?>">
                        <a href="<?php echo base_url("data/kategori");?>" class="cursor">
                            <span class="fa fa-tags"></span> Kategori
                            
                        </a>
                    </li>
                    <li class=" <?php if($this->uri->uri_string() == 'data/rak'){ echo 'active';}?>">
                        <a href="<?php echo base_url("data/rak");?>" class="cursor">
                            <span class="fa fa-list"></span> Rak
                            
                        </a>
                    </li>
                </ul>
            </li>
            <li class="treeview 
                <?php if($this->uri->uri_string() == 'transaksi'){ echo 'active';}?>
                <?php if($this->uri->uri_string() == 'transaksi/kembali'){ echo 'active';}?>
                <?php if($this->uri->uri_string() == 'transaksi/pinjam'){ echo 'active';}?>
                <?php if($this->uri->uri_string() == 'transaksi/detailpinjam/'.$this->uri->segment('3')){ echo 'active';}?>
                <?php if($this->uri->uri_string() == 'transaksi/kembalipinjam/'.$this->uri->segment('3')){ echo 'active';}?>">
                <a href="#">
                    <i class="fa fa-exchange"></i>
                    <span>Transaksi</span>
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?php if($this->uri->uri_string() == 'transaksi'){ echo 'active';}?>
                        <?php if($this->uri->uri_string() == 'transaksi/pinjam'){ echo 'active';}?>
                        <?php if($this->uri->uri_string() == 'transaksi/kembalipinjam/'.$this->uri->segment('3')){ echo 'active';}?>">
                        <a href="<?php echo base_url("transaksi");?>" class="cursor">
                            <span class="fa fa-upload"></span> Peminjaman
                            
                        </a>
                    </li>
                    <li class="<?php if($this->uri->uri_string() == 'transaksi/kembali'){ echo 'active';}?>">
                        <a href="<?php echo base_url("transaksi/kembali");?>" class="cursor">
                            <span class="fa fa-download"></span> Pengembalian
                        </a>
                    </li>
                </ul>
            </li>
            <!-- <li class="<?php if($this->uri->uri_string() == 'transaksi/denda'){ echo 'active';}?>">
                <a href="<?php echo base_url("transaksi/denda");?>" class="cursor">
                    <i class="fa fa-money"></i> <span>Denda</span>
                    
                </a>
            </li> -->
            <li class="">
					<a href="<?php echo base_url('user/detail/'.$this->session->userdata('ses_id'));?>" target="_blank" class="cursor">
						<i class="fa fa-print"></i> <span>Cetak kartu Anggota</span>
					</a>
				</li>
            
            <!-- Code LDK Pekanbaru Menu Laporan -->

            <li class="treeview <?php if($this->uri->uri_string() == 'data/detailpelatihan'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/materipelatihan'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/pelatihandetail/'.$this->uri->segment('3')){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/pelatihanedit/'.$this->uri->segment('3')){ echo 'active';}?>">
                <a href="#">
                    <i class="fa fa-folder-open"></i>
                    <span>Pelatihan PJJ</span>
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?php if($this->uri->uri_string() == 'data'){ echo 'active';}?>
                        <?php if($this->uri->uri_string() == 'data/pelatihantambah'){ echo 'active';}?>
                        <?php if($this->uri->uri_string() == 'data/pelatihandetail/'.$this->uri->segment('3')){ echo 'active';}?>
                        <?php if($this->uri->uri_string() == 'data/pelatihanedit/'.$this->uri->segment('3')){ echo 'active';}?>">
                        <a href="<?php echo base_url("data");?>" class="cursor">
                            <span class="fa fa-file"></span> Data Pelatihan
                            
                        </a>
                    </li>
                    <li class=" <?php if($this->uri->uri_string() == 'data/detailpelatihan'){ echo 'active';}?>">
                        <a href="<?php echo base_url("data/detailpelatihan");?>" class="cursor">
                            <span class="fa fa-list"></span> Detail Pelatihan
                            
                        </a>
                    </li>
                    <li class=" <?php if($this->uri->uri_string() == 'data/materipelatihan'){ echo 'active';}?>">
                        <a href="<?php echo base_url("data/materipelatihan");?>" class="cursor">
                            <span class="fa fa-book"></span> Materi Pelatihan 
                        </a>
                    </li>
                    <li class="">
					<a href="<?php echo base_url('user/detail/'.$this->session->userdata('ses_id'));?>" target="_blank" class="cursor">
						<i class="fa fa-print"></i> <span>Cetak Laporan Pelatihan</span>
					</a>
				</li>
                </ul>
            </li>

            <!-- Code LDK Pekanbaru Menu Pegawai-->
              <li class="treeview 
                <?php if($this->uri->uri_string() == 'data/pegawai'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/pegawaitambah'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/pegawaidetail/'.$this->uri->segment('3')){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/pegawaiedit/'.$this->uri->segment('3')){ echo 'active';}?>">
                <a href="#">
                    <i class="fa fa-user"></i>
                    <span>Pegawai</span>
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li class="<?php if($this->uri->uri_string() == 'data/pegawai'){ echo 'active';}?>
                    <?php if($this->uri->uri_string() == 'data/pegawaitambah'){ echo 'active';}?>
                    <?php if($this->uri->uri_string() == 'data/pegawaidetail/'.$this->uri->segment('3')){ echo 'active';}?>
                    <?php if($this->uri->uri_string() == 'data/pegawaiedit/'.$this->uri->segment('3')){ echo 'active';}?>">
                            <a href="<?php echo base_url("data/pegawai");?>" class="cursor">
                            <span class="fa fa-users"></span> List Pegawai
                            
                        </a>
                    </li>
                </ul>
            </li>

            <!-- Code LDK Menu Jabatan -->

                <li class="treeview
				<?php if($this->uri->uri_string() == 'data/role'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/roletambah'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/roledetail/'.$this->uri->segment('3')){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/roleedit/'.$this->uri->segment('3')){ echo 'active';}?>">
                <a href="#">
                    <i class="fa fa-graduation-cap"></i>
                    <span>Jabatan</span>
                    <span class="pull-right-container">
                    <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
				    <li class="<?php if($this->uri->uri_string() == 'data/role'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/roletambah'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/roledetail/'.$this->uri->segment('3')){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/roleedit/'.$this->uri->segment('3')){ echo 'active';}?>">
                        <a href="<?php echo base_url("data/role");?>" class="cursor">
                            <span class="fa fa-list"></span> List Jabatan
                            
                        </a>
                    </li>
                </ul>
            </li>
            
			<?php }?>
			<?php if($this->session->userdata('level') == 'Anggota'){?>
				<li class="<?php if($this->uri->uri_string() == 'transaksi'){ echo 'active';}?>">
					<a href="<?php echo base_url("transaksi");?>" class="cursor">
						<i class="fa fa-upload"></i> <span>Data Peminjaman </span>
					</a>
				</li>
				<li class="<?php if($this->uri->uri_string() == 'transaksi/kembali'){ echo 'active';}?>">
					<a href="<?php echo base_url("transaksi/kembali");?>" class="cursor">
						<i class="fa fa-upload"></i> <span>Data Pengambilan</span>
					</a>
				</li>
				<li class="<?php if($this->uri->uri_string() == 'data'){ echo 'active';}?>
				<?php if($this->uri->uri_string() == 'data/bukudetail/'.$this->uri->segment('3')){ echo 'active';}?>">
					<a href="<?php echo base_url("data");?>" class="cursor">
						<i class="fa fa-search"></i>  <span>Cari Buku</span>
					</a>
				</li>
				<li class="<?php if($this->uri->uri_string() == 'user/edit/'.$this->uri->segment('3')){ echo 'active';}?>">
					<a href="<?php echo base_url('user/edit/'.$this->session->userdata('ses_id'));?>" class="cursor">
						<i class="fa fa-user"></i>  <span>Data Anggota</span>
					</a>
				</li>
				<li class="">
					<a href="<?php echo base_url('user/detail/'.$this->session->userdata('ses_id'));?>" target="_blank" class="cursor">
						<i class="fa fa-print"></i> <span>Cetak kartu Anggota</span>
					</a>
				</li>
			<?php }?>
        </ul>
        <div class="clearfix"></div>
        <br/>
        <br/>
    </section>
    <!-- /.sidebar -->
  </aside>
