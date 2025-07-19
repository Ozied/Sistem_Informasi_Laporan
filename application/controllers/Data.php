<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Data extends CI_Controller {
	function __construct(){
	 parent::__construct();
	 	//validasi jika user belum login
     $this->data['CI'] =& get_instance();
     $this->load->helper(array('form', 'url'));
     $this->load->model('M_Admin');
		if($this->session->userdata('masuk_perpus') != TRUE){
				$url=base_url('login');
				redirect($url);
		}
	}

	// public function index()
	// {
	// 	$this->data['idbo'] = $this->session->userdata('ses_id');
	// 	$this->data['buku'] =  $this->db->query("SELECT * FROM tbl_buku ORDER BY id_buku DESC");
    //     $this->data['title_web'] = 'Data Buku';
    //     $this->load->view('header_view',$this->data);
    //     $this->load->view('sidebar_view',$this->data);
    //     $this->load->view('buku/buku_view',$this->data);
    //     $this->load->view('footer_view',$this->data);
	// }

		public function index()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		// Ambil semua role yang belum dihapus (deleted_at IS NULL)
    	$this->data['pelatihan'] = $this->db->query("SELECT * FROM tbl_pelatihan WHERE deleted_at IS NULL ORDER BY id_pelatihan DESC");
        $this->data['title_web'] = 'Data Pelatihan';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('pelatihan/pelatihan_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function bukudetail()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_buku','id_buku',$this->uri->segment('3'));
		if($count > 0)
		{
			$this->data['buku'] = $this->M_Admin->get_tableid_edit('tbl_buku','id_buku',$this->uri->segment('3'));
			$this->data['kats'] =  $this->db->query("SELECT * FROM tbl_kategori ORDER BY id_kategori DESC")->result_array();
			$this->data['rakbuku'] =  $this->db->query("SELECT * FROM tbl_rak ORDER BY id_rak DESC")->result_array();

		}else{
			echo '<script>alert("BUKU TIDAK DITEMUKAN");window.location="'.base_url('data').'"</script>';
		}

		$this->data['title_web'] = 'Data Buku Detail';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('buku/detail',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function bukuedit()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_buku','id_buku',$this->uri->segment('3'));
		if($count > 0)
		{
			
			$this->data['buku'] = $this->M_Admin->get_tableid_edit('tbl_buku','id_buku',$this->uri->segment('3'));
	   
			$this->data['kats'] =  $this->db->query("SELECT * FROM tbl_kategori ORDER BY id_kategori DESC")->result_array();
			$this->data['rakbuku'] =  $this->db->query("SELECT * FROM tbl_rak ORDER BY id_rak DESC")->result_array();

		}else{
			echo '<script>alert("BUKU TIDAK DITEMUKAN");window.location="'.base_url('data').'"</script>';
		}

		$this->data['title_web'] = 'Data Buku Edit';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('buku/edit_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function bukutambah()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');

		$this->data['kats'] =  $this->db->query("SELECT * FROM tbl_kategori ORDER BY id_kategori DESC")->result_array();
		$this->data['rakbuku'] =  $this->db->query("SELECT * FROM tbl_rak ORDER BY id_rak DESC")->result_array();


        $this->data['title_web'] = 'Tambah Buku';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('buku/tambah_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function prosesbuku()
	{
		if($this->session->userdata('masuk_perpus') != TRUE){
			$url=base_url('login');
			redirect($url);
		}

		// hapus aksi form proses buku
		if(!empty($this->input->get('buku_id')))
		{
        
			$buku = $this->M_Admin->get_tableid_edit('tbl_buku','id_buku',htmlentities($this->input->get('buku_id')));
			
			$sampul = './assets/image/buku/'.$buku->sampul;
			if(file_exists($sampul))
			{
				unlink($sampul);
			}
			
			$lampiran = './assets/image/buku/'.$buku->lampiran;
			if(file_exists($lampiran))
			{
				unlink($lampiran);
			}
			
			$this->M_Admin->delete_table('tbl_buku','id_buku',$this->input->get('buku_id'));
			
			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-warning">
					<p> Berhasil Hapus Buku !</p>
				</div></div>');
			redirect(base_url('data'));  
		}

		// tambah aksi form proses buku
		if(!empty($this->input->post('tambah')))
		{
			$post= $this->input->post();
			$buku_id = $this->M_Admin->buat_kode('tbl_buku','BK','id_buku','ORDER BY id_buku DESC LIMIT 1'); 
			$data = array(
				'buku_id'=>$buku_id,
				'id_kategori'=>htmlentities($post['kategori']), 
				'id_rak' => htmlentities($post['rak']), 
				'isbn' => htmlentities($post['isbn']), 
				'title'  => htmlentities($post['title']), 
				'pengarang'=> htmlentities($post['pengarang']), 
				'penerbit'=> htmlentities($post['penerbit']),    
				'thn_buku' => htmlentities($post['thn']), 
				'isi' => $this->input->post('ket'), 
				'jml'=> htmlentities($post['jml']),  
				'tgl_masuk' => date('Y-m-d H:i:s')
			);

			$this->load->library('upload',$config);
			if(!empty($_FILES['gambar']['name']))
			{
				// setting konfigurasi upload
				$config['upload_path'] = './assets_style/image/buku/';
				$config['allowed_types'] = 'gif|jpg|jpeg|png'; 
				$config['encrypt_name'] = TRUE; //nama yang terupload nantinya
				// load library upload
				$this->load->library('upload',$config);
				$this->upload->initialize($config);

				if ($this->upload->do_upload('gambar')) {
					$this->upload->data();
					$file1 = array('upload_data' => $this->upload->data());
					$this->db->set('sampul', $file1['upload_data']['file_name']);
				}else{
					$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
							<p> Edit Buku Gagal !</p>
						</div></div>');
					redirect(base_url('data')); 
				}
			}

			if(!empty($_FILES['lampiran']['name']))
			{
				// setting konfigurasi upload
				$config['upload_path'] = './assets_style/image/buku/';
				$config['allowed_types'] = 'pdf'; 
				$config['encrypt_name'] = TRUE; //nama yang terupload nantinya
				// load library upload
				$this->load->library('upload',$config);
				$this->upload->initialize($config);
				// script uplaod file kedua
				if ($this->upload->do_upload('lampiran')) {
					$this->upload->data();
					$file2 = array('upload_data' => $this->upload->data());
					$this->db->set('lampiran', $file2['upload_data']['file_name']);
				}else{

					$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
							<p> Edit Buku Gagal !</p>
						</div></div>');
					redirect(base_url('data')); 
				}
			}

			$this->db->insert('tbl_buku', $data);

			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
			<p> Tambah Buku Sukses !</p>
			</div></div>');
			redirect(base_url('data')); 
		}

		// edit aksi form proses buku
		if(!empty($this->input->post('edit')))
		{
			$post = $this->input->post();
			$data = array(
				'id_kategori'=>htmlentities($post['kategori']), 
				'id_rak' => htmlentities($post['rak']), 
				'isbn' => htmlentities($post['isbn']), 
				'title'  => htmlentities($post['title']),
				'pengarang'=> htmlentities($post['pengarang']), 
				'penerbit'=> htmlentities($post['penerbit']),  
				'thn_buku' => htmlentities($post['thn']), 
				'isi' => $this->input->post('ket'), 
				'jml'=> htmlentities($post['jml']),  
				'tgl_masuk' => date('Y-m-d H:i:s')
			);

			if(!empty($_FILES['gambar']['name']))
			{
				// setting konfigurasi upload
				$config['upload_path'] = './assets_style/image/buku/';
				$config['allowed_types'] = 'gif|jpg|jpeg|png'; 
				$config['encrypt_name'] = TRUE; //nama yang terupload nantinya
				// load library upload
				$this->load->library('upload',$config);
				$this->upload->initialize($config);

				if ($this->upload->do_upload('gambar')) {
					$this->upload->data();
					$gambar = './assets/image/buku/'.htmlentities($post['gmbr']);
					if(file_exists($gambar)) {
						unlink($gambar);
					}
					$file1 = array('upload_data' => $this->upload->data());
					$this->db->set('sampul', $file1['upload_data']['file_name']);
				}else{
					$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
							<p> Edit Buku Gagal !</p>
						</div></div>');
					redirect(base_url('data')); 
				}
			}

			if(!empty($_FILES['lampiran']['name']))
			{
				// setting konfigurasi upload
				$config['upload_path'] = './assets_style/image/buku/';
				$config['allowed_types'] = 'pdf'; 
				$config['encrypt_name'] = TRUE; //nama yang terupload nantinya
				// load library upload
				$this->load->library('upload',$config);
				$this->upload->initialize($config);
				// script uplaod file kedua
				if ($this->upload->do_upload('lampiran')) {
					$this->upload->data();
					$lampiran = './assets_style/image/buku/'.htmlentities($post['lamp']);
					if(file_exists($lampiran)) {
						unlink($lampiran);
					}
					$file2 = array('upload_data' => $this->upload->data());
					$this->db->set('lampiran', $file2['upload_data']['file_name']);
				}else{

					$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
							<p> Edit Buku Gagal !</p>
						</div></div>');
					redirect(base_url('data')); 
				}
			}

			$this->db->where('id_buku',htmlentities($post['edit']));
			$this->db->update('tbl_buku', $data);

			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
					<p> Edit Buku Sukses !</p>
				</div></div>');
			redirect(base_url('data/bukuedit/'.$post['edit'])); 
		}
	}
	
	// Code LDK Pekanbaru Pelatihan
		public function pelatihantambah()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');

		
		$this->data['pegawais'] =  $this->db->query("SELECT * FROM tbl_pegawai ORDER BY id_pegawai DESC")->result_array();
		$this->data['roles'] =  $this->db->query("SELECT * FROM tbl_role ORDER BY id_role DESC")->result_array();

        $this->data['title_web'] = 'Tambah Pelatihan';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('pelatihan/pelatihan_tambah_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function pelatihanedit()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_pelatihan','id_pelatihan',$this->uri->segment('3'));

		if($count > 0)
		{
			$this->data['pelatihan'] = $this->M_Admin->get_tableid_edit('tbl_pelatihan','id_pelatihan',$this->uri->segment('3'));

			// ✅ Tambahkan ini
			$this->data['pegawais'] = $this->db->query("SELECT * FROM tbl_pegawai ORDER BY id_pegawai DESC")->result_array();
			$this->data['roles'] = $this->db->query("SELECT * FROM tbl_role ORDER BY id_role DESC")->result_array();

		} else {
			echo '<script>alert("DATA PELATIHAN TIDAK DITEMUKAN");window.location="'.base_url('data').'"</script>';
		}

		$this->data['title_web'] = 'Edit Data Pelatihan';
		$this->load->view('header_view',$this->data);
		$this->load->view('sidebar_view',$this->data);
		$this->load->view('pelatihan/pelatihan_edit_view',$this->data);
		$this->load->view('footer_view',$this->data);
	}


	public function pelatihandetail()
	{
    $this->data['idbo'] = $this->session->userdata('ses_id');

    // Cek apakah data pelatihan dengan ID yang dimaksud ada
    $count = $this->M_Admin->CountTableId('tbl_pelatihan', 'id_pelatihan', $this->uri->segment('3'));

    if ($count > 0) {
        // Ambil data pelatihan
        $this->data['pelatihan'] = $this->M_Admin->get_tableid_edit('tbl_pelatihan', 'id_pelatihan', $this->uri->segment('3'));

        // Ambil data pegawai & role sebagai referensi detail pejabat pembuka/penutup
        $this->data['pegawais'] = $this->db->query("SELECT * FROM tbl_pegawai ORDER BY id_pegawai DESC")->result_array();
        $this->data['roles'] = $this->db->query("SELECT * FROM tbl_role ORDER BY id_role DESC")->result_array();

    } else {
        // Jika tidak ditemukan, tampilkan notifikasi dan redirect
        echo '<script>alert("DATA PELATIHAN TIDAK DITEMUKAN");window.location="' . base_url('data') . '"</script>';
        return;
    }

    $this->data['title_web'] = 'Detail Data Pelatihan';
    $this->load->view('header_view', $this->data);
    $this->load->view('sidebar_view', $this->data);
    $this->load->view('pelatihan/pelatihan_detail', $this->data); // Pastikan file ini ada
    $this->load->view('footer_view', $this->data);
	}


	public function prosespelatihan()
{
    if ($this->session->userdata('masuk_perpus') != TRUE) {
        $url = base_url('login');
        redirect($url);
    }

    // === DELETE PELATIHAN ===
    if (!empty($this->input->get('id_pelatihan'))) {
		$id_pelatihan = htmlentities($this->input->get('id_pelatihan')); // ✅ Tambahkan baris ini
		$pelatihan = $this->M_Admin->get_tableid_edit(
			'tbl_pelatihan',
			'id_pelatihan',
			$id_pelatihan
		);

		$this->db->set('deleted_at', date('Y-m-d H:i:s'));
		$this->db->where('id_pelatihan', $id_pelatihan); // ✅ Sekarang variabel terdefinisi
		$this->db->update('tbl_pelatihan');


        $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-warning">
            <p> Berhasil Hapus Data Pelatihan!</p>
        </div></div>');
        redirect(base_url('data'));
    }

    // === TAMBAH PELATIHAN ===
    if (!empty($this->input->post('tambah'))) {
        $post = $this->input->post();

	// 	if (!isset($post['id_pejabat_pembuka']) || !isset($post['id_role_pembuka']) || 
	// 	!isset($post['id_pejabat_penutup']) || !isset($post['id_role_penutup'])) {
	// 	$this->session->set_flashdata('pesan', '<div class="alert alert-danger">Data pejabat dan jabatan belum lengkap.</div>');
	// 	redirect(base_url('data/pelatihantambah'));
	// }

        $data = array(
            'nama_kegiatan' => htmlentities($post['nama_kegiatan']),
            'nama_pelatihan' => htmlentities($post['nama_pelatihan']),
            'provinsi' => htmlentities($post['provinsi']),
            'kab_kota' => htmlentities($post['kab_kota']),
            'tempat' => htmlentities($post['tempat']),
            'tanggal_mulai_pelatihan' => $post['tanggal_mulai'],
            'tanggal_selesai_pelatihan' => $post['tanggal_selesai'],
            'bulan_ttd_lap' => htmlentities($post['bulan_ttd']),
            'tahun' => htmlentities($post['tahun']),
            'hari_tanggal_pembukaan' => $post['hari_tanggal_pembukaan'],
            'waktu_pembukaan' => $post['waktu_pembukaan'],
            'id_pejabat_pembuka' => htmlentities($post['id_pejabat_pembuka']),
            'id_role_pembuka' => htmlentities($post['id_role_pembuka']),
            'hari_tanggal_penutupan' => $post['hari_tanggal_penutupan'],
            'waktu_penutupan' => $post['waktu_penutupan'],
            'id_pejabat_penutup' => htmlentities($post['id_pejabat_penutup']),
            'id_role_penutup' => htmlentities($post['id_role_penutup']),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
        );

        $this->db->insert('tbl_pelatihan', $data);

        $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-success">
            <p>Tambah Data Pelatihan Berhasil!</p>
        </div></div>');
        redirect(base_url('data'));
    }

    // === EDIT PELATIHAN ===
    if (!empty($this->input->post('edit'))) {
        $post = $this->input->post();

        $data = array(
            'nama_kegiatan' => htmlentities($post['nama_kegiatan']),
            'nama_pelatihan' => htmlentities($post['nama_pelatihan']),
            'provinsi' => htmlentities($post['provinsi']),
            'kab_kota' => htmlentities($post['kab_kota']),
            'tempat' => htmlentities($post['tempat']),
            'tanggal_mulai_pelatihan' => $post['tanggal_mulai'],
            'tanggal_selesai_pelatihan' => $post['tanggal_selesai'],
            'bulan_ttd_lap' => htmlentities($post['bulan_ttd']),
            'tahun' => htmlentities($post['tahun']),
            'hari_tanggal_pembukaan' => $post['hari_tanggal_pembukaan'],
            'waktu_pembukaan' => $post['waktu_pembukaan'],
            'id_pejabat_pembuka' => htmlentities($post['id_pejabat_pembuka']),
            'id_role_pembuka' => htmlentities($post['id_role_pembuka']),
            'hari_tanggal_penutupan' => $post['hari_tanggal_penutupan'],
            'waktu_penutupan' => $post['waktu_penutupan'],
            'id_pejabat_penutup' => htmlentities($post['id_pejabat_penutup']),
            'id_role_penutup' => htmlentities($post['id_role_penutup']),
            'updated_at' => date('Y-m-d H:i:s'),
        );

        $this->db->where('id_pelatihan', htmlentities($post['edit']));
        $this->db->update('tbl_pelatihan', $data);

        $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-success">
            <p>Edit Data Pelatihan Berhasil!</p>
        </div></div>');
		redirect(base_url('data'));
        // redirect(base_url('data/pelatihanedit/' . $post['edit']));
    }
}

	// Code LDK Pekanbaru Detail Pelatihan

			public function detailpelatihan()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		// Ambil semua role yang belum dihapus (deleted_at IS NULL)
    	$this->data['pelatihan'] = $this->db->query("SELECT * FROM tbl_detail_pelatihan WHERE deleted_at IS NULL ORDER BY id_detail_pelatihan DESC");
        $this->data['title_web'] = 'Data Detail Pelatihan';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('pelatihan/pelatihan_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}
	

	public function kategori()
	{
		
        $this->data['idbo'] = $this->session->userdata('ses_id');
		$this->data['kategori'] =  $this->db->query("SELECT * FROM tbl_kategori ORDER BY id_kategori DESC");

		if(!empty($this->input->get('id'))){
			$id = $this->input->get('id');
			$count = $this->M_Admin->CountTableId('tbl_kategori','id_kategori',$id);
			if($count > 0)
			{			
				$this->data['kat'] = $this->db->query("SELECT *FROM tbl_kategori WHERE id_kategori='$id'")->row();
			}else{
				echo '<script>alert("KATEGORI TIDAK DITEMUKAN");window.location="'.base_url('data/kategori').'"</script>';
			}
		}

        $this->data['title_web'] = 'Data Kategori ';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('kategori/kat_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function katproses()
	{
		if(!empty($this->input->post('tambah')))
		{
			$post= $this->input->post();
			$data = array(
				'nama_kategori'=>htmlentities($post['kategori']),
			);

			$this->db->insert('tbl_kategori', $data);

			
			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
			<p> Tambah Kategori Sukses !</p>
			</div></div>');
			redirect(base_url('data/kategori'));  
		}

		if(!empty($this->input->post('edit')))
		{
			$post= $this->input->post();
			$data = array(
				'nama_kategori'=>htmlentities($post['kategori']),
			);
			$this->db->where('id_kategori',htmlentities($post['edit']));
			$this->db->update('tbl_kategori', $data);


			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
			<p> Edit Kategori Sukses !</p>
			</div></div>');
			redirect(base_url('data/kategori')); 		
		}

		if(!empty($this->input->get('kat_id')))
		{
			$this->db->where('id_kategori',$this->input->get('kat_id'));
			$this->db->delete('tbl_kategori');

			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-warning">
			<p> Hapus Kategori Sukses !</p>
			</div></div>');
			redirect(base_url('data/kategori')); 
		}
	}

	public function rak()
	{
		
        $this->data['idbo'] = $this->session->userdata('ses_id');
		$this->data['rakbuku'] =  $this->db->query("SELECT * FROM tbl_rak ORDER BY id_rak DESC");

		if(!empty($this->input->get('id'))){
			$id = $this->input->get('id');
			$count = $this->M_Admin->CountTableId('tbl_rak','id_rak',$id);
			if($count > 0)
			{	
				$this->data['rak'] = $this->db->query("SELECT *FROM tbl_rak WHERE id_rak='$id'")->row();
			}else{
				echo '<script>alert("KATEGORI TIDAK DITEMUKAN");window.location="'.base_url('data/rak').'"</script>';
			}
		}

        $this->data['title_web'] = 'Data Rak Buku ';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('rak/rak_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}


	// Code LDK Pekanbaru Controller Menu Pegawai
	public function pegawai()
{
    // Ambil ID user yang login
    $this->data['idbo'] = $this->session->userdata('ses_id');

    // Ambil semua role yang belum dihapus (deleted_at IS NULL)
    $this->data['pegawai'] = $this->db->query("SELECT * FROM tbl_pegawai WHERE deleted_at IS NULL ORDER BY id_pegawai DESC");

    // Cek apakah ada parameter ?id= di URL
    if (!empty($this->input->get('id'))) {
        $id = $this->input->get('id');
        $count = $this->M_Admin->CountTableId('tbl_pegawai', 'id_pegawai', $id);

        if ($count > 0) {
            // Tetap ambil datanya (tanpa filtering deleted_at karena ini konteks pengeditan spesifik)
            $this->data['roles'] = $this->db->query("SELECT * FROM tbl_pegawai WHERE id_pegawai='$id'")->row();
        } else {
            echo '<script>alert("KATEGORI TIDAK DITEMUKAN");window.location="' . base_url('data/pegawai') . '"</script>';
        }
    }

    // Set judul dan load view
    $this->data['title_web'] = 'Data Pegawai ';
    $this->load->view('header_view', $this->data);
    $this->load->view('sidebar_view', $this->data);
    $this->load->view('pegawai/pegawai_view', $this->data);
    $this->load->view('footer_view', $this->data);
}

public function prosespegawai()
{
    // Pastikan user sudah login
    if ($this->session->userdata('masuk_perpus') != TRUE) {
        redirect(base_url('login'));
    }

    // === SOFT DELETE PEGAWAI ===
    if (!empty($this->input->get('id_pegawai'))) {
        $id_pegawai = htmlentities($this->input->get('id_pegawai'));

        // Cek apakah data pegawai ada
        $pegawai = $this->M_Admin->get_tableid_edit(
            'tbl_pegawai',
            'id_pegawai',
            $id_pegawai
        );

        if ($pegawai) {
            // Lakukan soft delete dengan mengisi kolom deleted_at
            $this->db->set('deleted_at', date('Y-m-d H:i:s'));
            $this->db->where('id_pegawai', $id_pegawai);
            $this->db->update('tbl_pegawai');

            $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-warning">
                <p>Berhasil Hapus (Soft Delete) Data Pegawai!</p>
            </div></div>');
        } else {
            $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-danger">
                <p>Data Pegawai tidak ditemukan!</p>
            </div></div>');
        }

        redirect(base_url('data/pegawai'));
    }

    // === TAMBAH PEGAWAI ===
    if (!empty($this->input->post('tambah'))) {
        $post = $this->input->post();

        $data = array(
            'nama'         => htmlentities($post['nama']),
            'NIP'          => htmlentities($post['nip']),
            'jabatan'      => htmlentities($post['jabatan']),
            'asal_satker'  => htmlentities($post['asal_satker']),
            'created_at'   => date('Y-m-d H:i:s'),
            'updated_at'   => date('Y-m-d H:i:s'),
            'deleted_at'   => NULL
        );

        $this->db->insert('tbl_pegawai', $data);

        $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-success">
            <p>Tambah Pegawai Sukses!</p>
        </div></div>');
        redirect(base_url('data/pegawai'));
    }

    // === EDIT PEGAWAI ===
    if (!empty($this->input->post('edit'))) {
        $post = $this->input->post();

        $data = array(
            'nama'         => htmlentities($post['nama']),
            'NIP'          => htmlentities($post['nip']),
            'jabatan'      => htmlentities($post['jabatan']),
            'asal_satker'  => htmlentities($post['asal_satker']),
            'updated_at'   => date('Y-m-d H:i:s')
        );

        $this->db->where('id_pegawai', htmlentities($post['edit']));
        $this->db->update('tbl_pegawai', $data);

        $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-success">
            <p>Edit Pegawai Sukses!</p>
        </div></div>');
        redirect(base_url('data/pegawai'));
    }
}

	public function pegawaitambah()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');

		$this->data['roles'] =  $this->db->query("SELECT * FROM tbl_role ORDER BY id_role DESC")->result_array();

        $this->data['title_web'] = 'Tambah Pegawai';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('pegawai/tambah_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

		public function pegawaidetail()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_pegawai','id_pegawai',$this->uri->segment('3'));
		if($count > 0)
		{
			$this->data['pegawai'] = $this->M_Admin->get_tableid_edit('tbl_pegawai','id_pegawai',$this->uri->segment('3'));
			$this->data['roles'] =  $this->db->query("SELECT * FROM tbl_role ORDER BY id_role DESC")->result_array();

		}else{
			echo '<script>alert("PEGAWAI TIDAK DITEMUKAN");window.location="'.base_url('data/pegawai').'"</script>';
		}

		$this->data['title_web'] = 'Data Pegawai Detail';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('pegawai/detail',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function pegawaiedit()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_pegawai','id_pegawai',$this->uri->segment('3'));
		if($count > 0)
		{
			
			$this->data['pegawai'] = $this->M_Admin->get_tableid_edit('tbl_pegawai','id_pegawai',$this->uri->segment('3'));

			$this->data['roles'] =  $this->db->query("SELECT * FROM tbl_role ORDER BY id_role DESC")->result_array();

		}else{
			echo '<script>alert("PEGAWAI TIDAK DITEMUKAN");window.location="'.base_url('data/pegawai').'"</script>';
		}

		$this->data['title_web'] = 'Data Pegawai Edit';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('pegawai/edit_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

// Code LDK Pekanbaru Controller Menu Role
	
		public function role()
{
    // Ambil ID user yang login
    $this->data['idbo'] = $this->session->userdata('ses_id');

    // Ambil semua role yang belum dihapus (deleted_at IS NULL)
    $this->data['role'] = $this->db->query("SELECT * FROM tbl_role WHERE deleted_at IS NULL ORDER BY id_role DESC");

    // Cek apakah ada parameter ?id= di URL
    if (!empty($this->input->get('id'))) {
        $id = $this->input->get('id');
        $count = $this->M_Admin->CountTableId('tbl_role', 'id_role', $id);

        if ($count > 0) {
            // Tetap ambil datanya (tanpa filtering deleted_at karena ini konteks pengeditan spesifik)
            $this->data['roles'] = $this->db->query("SELECT * FROM tbl_role WHERE id_role='$id'")->row();
        } else {
            echo '<script>alert("KATEGORI TIDAK DITEMUKAN");window.location="' . base_url('data/role') . '"</script>';
        }
    }

    // Set judul dan load view
    $this->data['title_web'] = 'Data Role ';
    $this->load->view('header_view', $this->data);
    $this->load->view('sidebar_view', $this->data);
    $this->load->view('role/role_view', $this->data);
    $this->load->view('footer_view', $this->data);
}


	public function prosesrole()
	{
	if($this->session->userdata('masuk_perpus') != TRUE){
		redirect(base_url('login'));
	}

	// hapus aksi form proses role (soft delete)
	if(!empty($this->input->get('role_id')))
	{

		     $role = $this->M_Admin->get_tableid_edit(
            'tbl_role',
            'id_role',
            htmlentities($this->input->get('id_role'))
        );
		$role_id = htmlentities($this->input->get('role_id'));

		// Soft delete: set deleted_at timestamp
		$this->db->set('deleted_at', date('Y-m-d H:i:s'));
		$this->db->where('id_role', $role_id);
		$this->db->update('tbl_role');

		$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-warning">
			<p>Berhasil Hapus Role!</p>
		</div></div>');
		redirect(base_url('data/role'));
	}

	// tambah aksi form proses role
	if(!empty($this->input->post('tambah')))
	{
		$post = $this->input->post();
		$data = array(
			'nama_role' => htmlentities($post['nama_role']),
			'created_at' => date('Y-m-d H:i:s'),
			'updated_at' => date('Y-m-d H:i:s'),
			'deleted_at' => NULL
		);

		$this->db->insert('tbl_role', $data);

		$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
			<p>Tambah Role Sukses!</p>
		</div></div>');
		redirect(base_url('data/role'));
	}

	// edit aksi form proses role
	if(!empty($this->input->post('edit')))
	{
		$post = $this->input->post();
		$data = array(
			'nama_role' => htmlentities($post['nama_role']),
			'updated_at' => date('Y-m-d H:i:s')
		);

		$this->db->where('id_role', htmlentities($post['edit']));
		$this->db->update('tbl_role', $data);

		$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
			<p>Edit Role Sukses!</p>
		</div></div>');
		// redirect(base_url('data/roleedit/'.$post['edit']));

		 // Ganti redirect ke halaman utama data role
    	redirect(base_url('data/role'));
	}
	}

		public function roletambah()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');

        $this->data['title_web'] = 'Tambah Role';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('role/tambah_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

		public function roledetail()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_role','id_role',$this->uri->segment('3'));
		if($count > 0)
		{
			$this->data['role'] = $this->M_Admin->get_tableid_edit('tbl_role','id_role',$this->uri->segment('3'));

		}else{
			echo '<script>alert("BUKU TIDAK DITEMUKAN");window.location="'.base_url('data').'"</script>';
		}

		$this->data['title_web'] = 'Data Buku Detail';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('role/detail',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function roleedit()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_role','id_role',$this->uri->segment('3'));
		if($count > 0)
		{
			
			$this->data['role'] = $this->M_Admin->get_tableid_edit('tbl_role','id_role',$this->uri->segment('3'));

		}else{
			echo '<script>alert("BUKU TIDAK DITEMUKAN");window.location="'.base_url('data').'"</script>';
		}

		$this->data['title_web'] = 'Data Role Edit';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('role/edit_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function rakproses()
	{
		if(!empty($this->input->post('tambah')))
		{
			$post= $this->input->post();
			$data = array(
				'nama_rak'=>htmlentities($post['rak']),
			);

			$this->db->insert('tbl_rak', $data);

			
			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
			<p> Tambah Rak Buku Sukses !</p>
			</div></div>');
			redirect(base_url('data/rak'));  
		}

		if(!empty($this->input->post('edit')))
		{
			$post= $this->input->post();
			$data = array(
				'nama_rak'=>htmlentities($post['rak']),
			);
			$this->db->where('id_rak',htmlentities($post['edit']));
			$this->db->update('tbl_rak', $data);


			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
			<p> Edit Rak Sukses !</p>
			</div></div>');
			redirect(base_url('data/rak')); 		
		}

		if(!empty($this->input->get('rak_id')))
		{
			$this->db->where('id_rak',$this->input->get('rak_id'));
			$this->db->delete('tbl_rak');

			$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-warning">
			<p> Hapus Rak Buku Sukses !</p>
			</div></div>');
			redirect(base_url('data/rak')); 
		}
	}
}
