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
    // Ambil ID user yang login
    $this->data['idbo'] = $this->session->userdata('ses_id');

    // Ambil semua data detail pelatihan + join dengan nama pelatihan dan pegawai
    $this->data['detail_pelatihan'] = $this->db->query("
        SELECT 
            dp.*, 
            p.nama_kegiatan,
            pj.nama AS nama_penanggung_jawab,
            kp.nama AS nama_ketua_panitia
        FROM tbl_detail_pelatihan dp
        LEFT JOIN tbl_pelatihan p ON dp.id_pelatihan = p.id_pelatihan
        LEFT JOIN tbl_pegawai pj ON dp.id_penanggung_jawab = pj.id_pegawai
        LEFT JOIN tbl_pegawai kp ON dp.id_ketua_panitia = kp.id_pegawai
        WHERE dp.deleted_at IS NULL
        ORDER BY dp.id_detail_pelatihan DESC
    ")->result();

    // Jika ada parameter ID, ambil data spesifik untuk diedit
    if (!empty($this->input->get('id'))) {
        $id = $this->input->get('id');
        $count = $this->M_Admin->CountTableId('tbl_detail_pelatihan', 'id_detail_pelatihan', $id);

        if ($count > 0) {
            $this->data['detail_pelatihans'] = $this->db->query("
                SELECT 
                    dp.*, 
                    p.nama_kegiatan,
                    pj.nama AS nama_penanggung_jawab,
                    kp.nama AS nama_ketua_panitia
                FROM tbl_detail_pelatihan dp
                LEFT JOIN tbl_pelatihan p ON dp.id_pelatihan = p.id_pelatihan
                LEFT JOIN tbl_pegawai pj ON dp.id_penanggung_jawab = pj.id_pegawai
                LEFT JOIN tbl_pegawai kp ON dp.id_ketua_panitia = kp.id_pegawai
                WHERE dp.id_detail_pelatihan = '$id'
            ")->row();
        } else {
            echo '<script>alert("KATEGORI TIDAK DITEMUKAN");window.location="' . base_url('data/detailpelatihan') . '"</script>';
        }
    }

    // Set judul dan tampilkan view
    $this->data['title_web'] = 'Data Detail Pelatihan';
    $this->load->view('header_view', $this->data);
    $this->load->view('sidebar_view', $this->data);
    $this->load->view('detail_pelatihan/detail_pelatihan_view', $this->data);
    $this->load->view('footer_view', $this->data);
}

	public function prosesdetailpelatihan()
{
    // Pastikan user sudah login
    if ($this->session->userdata('masuk_perpus') != TRUE) {
        redirect(base_url('login'));
    }

    // === SOFT DELETE DETAIL PELATIHAN ===
    if (!empty($this->input->get('id_detail_pelatihan'))) {
        $id_detail_pelatihan = htmlentities($this->input->get('id_detail_pelatihan'));

        $detail_pelatihan = $this->M_Admin->get_tableid_edit(
            'tbl_detail_pelatihan',
            'id_detail_pelatihan',
            $id_detail_pelatihan
        );

        if ($detail_pelatihan) {
            $this->db->set('deleted_at', date('Y-m-d H:i:s'));
            $this->db->where('id_detail_pelatihan', $id_detail_pelatihan);
            $this->db->update('tbl_detail_pelatihan');

            $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-warning">
                <p>Berhasil Hapus (Soft Delete) Data Detail Pelatihan!</p>
            </div></div>');
        } else {
            $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-danger">
                <p>Data Detail Pelatihan tidak ditemukan!</p>
            </div></div>');
        }

        redirect(base_url('data/detailpelatihan'));
    }

    // === TAMBAH DETAIL PELATIHAN ===
    if (!empty($this->input->post('tambah'))) {
        $post = $this->input->post();

        $data = array(
			'id_pelatihan' => htmlentities($post['id_pelatihan']),
			'id_penanggung_jawab' => !empty($post['id_penanggung_jawab']) ? htmlentities($post['id_penanggung_jawab']) : NULL,
			'id_ketua_panitia' => !empty($post['id_ketua_panitia']) ? htmlentities($post['id_ketua_panitia']) : NULL,
			'id_akademis' => !empty($post['id_akademis']) ? htmlentities($post['id_akademis']) : NULL,
			'id_keuangan' => !empty($post['id_keuangan']) ? htmlentities($post['id_keuangan']) : NULL,
			'id_administrasi' => !empty($post['id_administrasi']) ? htmlentities($post['id_administrasi']) : NULL,

			'id_wi_1' => !empty($post['id_wi_1']) ? htmlentities($post['id_wi_1']) : NULL,
			'id_wi_2' => !empty($post['id_wi_2']) ? htmlentities($post['id_wi_2']) : NULL,
			'id_wi_3' => !empty($post['id_wi_3']) ? htmlentities($post['id_wi_3']) : NULL,
			'id_wi_4' => !empty($post['id_wi_4']) ? htmlentities($post['id_wi_4']) : NULL,
			'id_wi_rapat_kelulusan' => !empty($post['id_wi_rapat_kelulusan']) ? htmlentities($post['id_wi_rapat_kelulusan']) : NULL,

			'id_pengajar_1' => !empty($post['id_pengajar_1']) ? htmlentities($post['id_pengajar_1']) : NULL,
			'id_pengajar_2' => !empty($post['id_pengajar_2']) ? htmlentities($post['id_pengajar_2']) : NULL,
			'id_pengajar_3' => !empty($post['id_pengajar_3']) ? htmlentities($post['id_pengajar_3']) : NULL,

			'jumlah_wi_pengajar' => htmlentities($post['jumlah_wi_pengajar']),
			'jumlah_pendidikan_wi_s1' => htmlentities($post['jumlah_pendidikan_wi_s1']),
			'jumlah_pendidikan_wi_s2' => htmlentities($post['jumlah_pendidikan_wi_s2']),
			'jumlah_pendidikan_wi_s3' => htmlentities($post['jumlah_pendidikan_wi_s3']),

			'jumlah_peserta' => htmlentities($post['jumlah_peserta']),
			'jumlah_lulus' => htmlentities($post['jumlah_lulus']),
			'jumlah_tidak_lulus' => htmlentities($post['jumlah_tidak_lulus']),
			'jabatan_peserta' => htmlentities($post['jabatan_peserta']),

			'jumlah_peserta_asn' => htmlentities($post['jumlah_peserta_asn']),
			'jumlah_peserta_non_asn' => htmlentities($post['jumlah_peserta_non_asn']),

			'jumlah_peserta_laki' => htmlentities($post['jumlah_peserta_laki']),
			'jumlah_peserta_wanita' => htmlentities($post['jumlah_peserta_wanita']),

			'jumlah_pendidikan_peserta_sma' => htmlentities($post['jumlah_pendidikan_peserta_sma']),
			'jumlah_pendidikan_peserta_s1' => htmlentities($post['jumlah_pendidikan_peserta_s1']),
			'jumlah_pendidikan_peserta_s2' => htmlentities($post['jumlah_pendidikan_peserta_s2']),
			'jumlah_pendidikan_peserta_s3' => htmlentities($post['jumlah_pendidikan_peserta_s3']),

			'rab' => htmlentities($post['rab']),
			'realisasi' => htmlentities($post['realisasi']),

            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'deleted_at' => NULL
        );

        $this->db->insert('tbl_detail_pelatihan', $data);

        $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-success">
            <p>Tambah Detail Pelatihan Sukses!</p>
        </div></div>');
        redirect(base_url('data/detailpelatihan'));
    }

    // === EDIT DETAIL PELATIHAN ===
    if (!empty($this->input->post('edit'))) {
        $post = $this->input->post();

        $data = array(
			'id_pelatihan' => htmlentities($post['id_pelatihan']),
			'id_penanggung_jawab' => !empty($post['id_penanggung_jawab']) ? htmlentities($post['id_penanggung_jawab']) : NULL,
			'id_ketua_panitia' => !empty($post['id_ketua_panitia']) ? htmlentities($post['id_ketua_panitia']) : NULL,
			'id_akademis' => !empty($post['id_akademis']) ? htmlentities($post['id_akademis']) : NULL,
			'id_keuangan' => !empty($post['id_keuangan']) ? htmlentities($post['id_keuangan']) : NULL,
			'id_administrasi' => !empty($post['id_administrasi']) ? htmlentities($post['id_administrasi']) : NULL,

			'id_wi_1' => !empty($post['id_wi_1']) ? htmlentities($post['id_wi_1']) : NULL,
			'id_wi_2' => !empty($post['id_wi_2']) ? htmlentities($post['id_wi_2']) : NULL,
			'id_wi_3' => !empty($post['id_wi_3']) ? htmlentities($post['id_wi_3']) : NULL,
			'id_wi_4' => !empty($post['id_wi_4']) ? htmlentities($post['id_wi_4']) : NULL,
			'id_wi_rapat_kelulusan' => !empty($post['id_wi_rapat_kelulusan']) ? htmlentities($post['id_wi_rapat_kelulusan']) : NULL,

			'id_pengajar_1' => !empty($post['id_pengajar_1']) ? htmlentities($post['id_pengajar_1']) : NULL,
			'id_pengajar_2' => !empty($post['id_pengajar_2']) ? htmlentities($post['id_pengajar_2']) : NULL,
			'id_pengajar_3' => !empty($post['id_pengajar_3']) ? htmlentities($post['id_pengajar_3']) : NULL,

			'jumlah_wi_pengajar' => htmlentities($post['jumlah_wi_pengajar']),
			'jumlah_pendidikan_wi_s1' => htmlentities($post['jumlah_pendidikan_wi_s1']),
			'jumlah_pendidikan_wi_s2' => htmlentities($post['jumlah_pendidikan_wi_s2']),
			'jumlah_pendidikan_wi_s3' => htmlentities($post['jumlah_pendidikan_wi_s3']),

			'jumlah_peserta' => htmlentities($post['jumlah_peserta']),
			'jumlah_lulus' => htmlentities($post['jumlah_lulus']),
			'jumlah_tidak_lulus' => htmlentities($post['jumlah_tidak_lulus']),
			'jabatan_peserta' => htmlentities($post['jabatan_peserta']),

			'jumlah_peserta_asn' => htmlentities($post['jumlah_peserta_asn']),
			'jumlah_peserta_non_asn' => htmlentities($post['jumlah_peserta_non_asn']),

			'jumlah_peserta_laki' => htmlentities($post['jumlah_peserta_laki']),
			'jumlah_peserta_wanita' => htmlentities($post['jumlah_peserta_wanita']),

			'jumlah_pendidikan_peserta_sma' => htmlentities($post['jumlah_pendidikan_peserta_sma']),
			'jumlah_pendidikan_peserta_s1' => htmlentities($post['jumlah_pendidikan_peserta_s1']),
			'jumlah_pendidikan_peserta_s2' => htmlentities($post['jumlah_pendidikan_peserta_s2']),
			'jumlah_pendidikan_peserta_s3' => htmlentities($post['jumlah_pendidikan_peserta_s3']),

			'rab' => htmlentities($post['rab']),
			'realisasi' => htmlentities($post['realisasi']),
            'updated_at' => date('Y-m-d H:i:s')
        );

        $this->db->where('id_detail_pelatihan', htmlentities($post['edit']));
        $this->db->update('tbl_detail_pelatihan', $data);

        $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-success">
            <p>Edit Detail Pelatihan Sukses!</p>
        </div></div>');
        redirect(base_url('data/detailpelatihan'));
    }
}

	public function detailpelatihantambah()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');

		// Ambil id_pelatihan yang sudah dipakai di tbl_detail_pelatihan
		$existing_detail_ids = $this->db->select('id_pelatihan')
										->from('tbl_detail_pelatihan')
										->where('deleted_at', NULL) // Opsional jika menggunakan soft delete
										->get()
										->result_array();

		// Konversi ke array satu dimensi
		$used_ids = array_column($existing_detail_ids, 'id_pelatihan');

		// Ambil hanya pelatihan yang belum dipakai
		if (!empty($used_ids)) {
			$this->data['pelatihans'] = $this->db
				->where_not_in('id_pelatihan', $used_ids)
				->where('deleted_at', NULL) // Opsional untuk soft delete
				->order_by('id_pelatihan', 'DESC')
				->get('tbl_pelatihan')
				->result_array();
		} else {
			// Jika belum ada data di tbl_detail_pelatihan, ambil semua
			$this->data['pelatihans'] = $this->db
				->where('deleted_at', NULL)
				->order_by('id_pelatihan', 'DESC')
				->get('tbl_pelatihan')
				->result_array();
		}

		// Ambil semua pegawai
		$this->data['pegawais'] = $this->db
			->where('deleted_at', NULL)
			->order_by('id_pegawai', 'DESC')
			->get('tbl_pegawai')
			->result_array();

		$this->data['title_web'] = 'Tambah Detail Pelatihan';

		// Load views
		$this->load->view('header_view', $this->data);
		$this->load->view('sidebar_view', $this->data);
		$this->load->view('detail_pelatihan/tambah_view', $this->data);
		$this->load->view('footer_view', $this->data);
	}


		public function detailpelatihandetail()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_detail_pelatihan','id_detail_pelatihan',$this->uri->segment('3'));
		if($count > 0)
		{
			$this->data['detail_pelatihan'] = $this->M_Admin->get_tableid_edit('tbl_detail_pelatihan','id_detail_pelatihan',$this->uri->segment('3'));
			$this->data['pelatihans'] =  $this->db->query("SELECT * FROM tbl_pelatihan ORDER BY id_pelatihan DESC")->result_array();
			$this->data['pegawais'] =  $this->db->query("SELECT * FROM tbl_pegawai ORDER BY id_pegawai DESC")->result_array();

		}else{
			echo '<script>alert("PEGAWAI TIDAK DITEMUKAN");window.location="'.base_url('data/detailpelatihan').'"</script>';
		}

		$this->data['title_web'] = 'Data Detail Pelatihan';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('detail_pelatihan/detail',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function detailpelatihanedit()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_detail_pelatihan','id_detail_pelatihan',$this->uri->segment('3'));
		if($count > 0)
		{
			
			$this->data['detail_pelatihan'] = $this->M_Admin->get_tableid_edit('tbl_detail_pelatihan','id_detail_pelatihan',$this->uri->segment('3'));
			$this->data['pelatihans'] =  $this->db->query("SELECT * FROM tbl_pelatihan ORDER BY id_pelatihan DESC")->result_array();
			$this->data['pegawais'] =  $this->db->query("SELECT * FROM tbl_pegawai ORDER BY id_pegawai DESC")->result_array();

		}else{
			echo '<script>alert("PEGAWAI TIDAK DITEMUKAN");window.location="'.base_url('data/pegawai').'"</script>';
		}

		$this->data['title_web'] = 'Data Pegawai Edit';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('detail_pelatihan/edit_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	// Code LDK Pekanbaru Materi Pelatihan

	public function materipelatihan()
{
    // Ambil ID user yang login
    $this->data['idbo'] = $this->session->userdata('ses_id');

    // Ambil semua data detail pelatihan + join dengan nama pelatihan dan pegawai
	$this->data['materi_pelatihan'] = $this->db->query("
		SELECT 
			mp.*, 
			p.nama_kegiatan
		FROM tbl_materi_pelatihan mp
		LEFT JOIN tbl_pelatihan p ON mp.id_pelatihan = p.id_pelatihan
		WHERE mp.deleted_at IS NULL
		ORDER BY mp.id_materi_pelatihan DESC
	")->result();

    // Jika ada parameter ID, ambil data spesifik untuk diedit
    if (!empty($this->input->get('id'))) {
        $id = $this->input->get('id');
        $count = $this->M_Admin->CountTableId('tbl_materi_pelatihan', 'id_materi_pelatihan', $id);

        if ($count > 0) {
            $this->data['materi_pelatihans'] = $this->db->query("
				SELECT 
					mp.*, 
					p.nama_kegiatan
				FROM tbl_materi_pelatihan mp
				LEFT JOIN tbl_pelatihan p ON mp.id_pelatihan = p.id_pelatihan
				WHERE mp.id_materi_pelatihan = '$id'
			")->row();
        } else {
            echo '<script>alert("MATERI PELATIHAN TIDAK DITEMUKAN");window.location="' . base_url('data/materipelatihan') . '"</script>';
        }
    }

    // Set judul dan tampilkan view
    $this->data['title_web'] = 'Data Materi Pelatihan';
    $this->load->view('header_view', $this->data);
    $this->load->view('sidebar_view', $this->data);
    $this->load->view('materi_pelatihan/materi_pelatihan_view', $this->data);
    $this->load->view('footer_view', $this->data);
}

	public function prosesmateripelatihan()
{
    // Cek apakah user sudah login
    if ($this->session->userdata('masuk_perpus') != TRUE) {
        redirect(base_url('login'));
    }

    // === SOFT DELETE MATERI PELATIHAN ===
    if (!empty($this->input->get('id_materi_pelatihan'))) {
        $id_materi_pelatihan = htmlentities($this->input->get('id_materi_pelatihan'));

        $materi_pelatihan = $this->M_Admin->get_tableid_edit(
            'tbl_materi_pelatihan',
            'id_materi_pelatihan',
            $id_materi_pelatihan
        );

        if ($materi_pelatihan) {
            $this->db->set('deleted_at', date('Y-m-d H:i:s'));
            $this->db->where('id_materi_pelatihan', $id_materi_pelatihan);
            $this->db->update('tbl_materi_pelatihan');

            $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-warning">
                <p>Berhasil Hapus (Soft Delete) Materi Pelatihan!</p>
            </div></div>');
        } else {
            $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-danger">
                <p>Data Materi Pelatihan tidak ditemukan!</p>
            </div></div>');
        }

        redirect(base_url('data/materipelatihan'));
    }

    // === TAMBAH MATERI PELATIHAN ===
    if (!empty($this->input->post('tambah'))) {
        $post = $this->input->post();

        $data = array(
            'id_pelatihan' => htmlentities($post['id_pelatihan']),
            'jumlah_jp' => !empty($post['jumlah_jp']) ? htmlentities($post['jumlah_jp']) : 0,
            'jp_kel_dasar' => !empty($post['jp_kel_dasar']) ? htmlentities($post['jp_kel_dasar']) : 0,
            'jp_kel_inti' => !empty($post['jp_kel_inti']) ? htmlentities($post['jp_kel_inti']) : 0,
            'jp_kel_penunjang' => !empty($post['jp_kel_penunjang']) ? htmlentities($post['jp_kel_penunjang']) : 0,
            'nama_mata_pelatihan_kel_dasar' => htmlentities($post['nama_mata_pelatihan_kel_dasar']),
            'nama_mata_pelatihan_kel_inti' => htmlentities($post['nama_mata_pelatihan_kel_inti']),
            'nama_mata_pelatihan_kel_penunjang' => htmlentities($post['nama_mata_pelatihan_kel_penunjang']),
            'latar_belakang' => htmlentities($post['latar_belakang']),
            'tujuan_pelatihan' => htmlentities($post['tujuan_pelatihan']),
            'tujuan_kursil' => htmlentities($post['tujuan_kursil']),
            'asal_kursil' => htmlentities($post['asal_kursil']),
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s'),
            'deleted_at' => NULL
        );

        $this->db->insert('tbl_materi_pelatihan', $data);

        $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-success">
            <p>Tambah Materi Pelatihan Sukses!</p>
        </div></div>');
        redirect(base_url('data/materipelatihan'));
    }

    // === EDIT MATERI PELATIHAN ===
    if (!empty($this->input->post('edit'))) {
        $post = $this->input->post();

        $data = array(
            'id_pelatihan' => htmlentities($post['id_pelatihan']),
            'jumlah_jp' => !empty($post['jumlah_jp']) ? htmlentities($post['jumlah_jp']) : 0,
            'jp_kel_dasar' => !empty($post['jp_kel_dasar']) ? htmlentities($post['jp_kel_dasar']) : 0,
            'jp_kel_inti' => !empty($post['jp_kel_inti']) ? htmlentities($post['jp_kel_inti']) : 0,
            'jp_kel_penunjang' => !empty($post['jp_kel_penunjang']) ? htmlentities($post['jp_kel_penunjang']) : 0,
            'nama_mata_pelatihan_kel_dasar' => htmlentities($post['nama_mata_pelatihan_kel_dasar']),
            'nama_mata_pelatihan_kel_inti' => htmlentities($post['nama_mata_pelatihan_kel_inti']),
            'nama_mata_pelatihan_kel_penunjang' => htmlentities($post['nama_mata_pelatihan_kel_penunjang']),
            'latar_belakang' => htmlentities($post['latar_belakang']),
            'tujuan_pelatihan' => htmlentities($post['tujuan_pelatihan']),
            'tujuan_kursil' => htmlentities($post['tujuan_kursil']),
            'asal_kursil' => htmlentities($post['asal_kursil']),
            'updated_at' => date('Y-m-d H:i:s')
        );

        $this->db->where('id_materi_pelatihan', htmlentities($post['edit']));
        $this->db->update('tbl_materi_pelatihan', $data);

        $this->session->set_flashdata('pesan', '<div id="notifikasi"><div class="alert alert-success">
            <p>Edit Materi Pelatihan Sukses!</p>
        </div></div>');
        redirect(base_url('data/materipelatihan'));
    }
}


	public function materipelatihantambah()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');

		// Ambil id_pelatihan yang sudah dipakai di tbl_detail_pelatihan
		$existing_detail_ids = $this->db->select('id_pelatihan')
										->from('tbl_materi_pelatihan')
										->where('deleted_at', NULL) // Opsional jika menggunakan soft delete
										->get()
										->result_array();

		// Konversi ke array satu dimensi
		$used_ids = array_column($existing_detail_ids, 'id_pelatihan');

		// Ambil hanya pelatihan yang belum dipakai
		if (!empty($used_ids)) {
			$this->data['pelatihans'] = $this->db
				->where_not_in('id_pelatihan', $used_ids)
				->where('deleted_at', NULL) // Opsional untuk soft delete
				->order_by('id_pelatihan', 'DESC')
				->get('tbl_pelatihan')
				->result_array();
		} else {
			// Jika belum ada data di tbl_detail_pelatihan, ambil semua
			$this->data['pelatihans'] = $this->db
				->where('deleted_at', NULL)
				->order_by('id_pelatihan', 'DESC')
				->get('tbl_pelatihan')
				->result_array();
		}

		// // Ambil semua pegawai
		// $this->data['pegawais'] = $this->db
		// 	->where('deleted_at', NULL)
		// 	->order_by('id_pegawai', 'DESC')
		// 	->get('tbl_pegawai')
		// 	->result_array();

		$this->data['title_web'] = 'Tambah Materi Pelatihan';

		// Load views
		$this->load->view('header_view', $this->data);
		$this->load->view('sidebar_view', $this->data);
		$this->load->view('materi_pelatihan/tambah_view', $this->data);
		$this->load->view('footer_view', $this->data);
	}

		public function materipelatihandetail()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_materi_pelatihan','id_materi_pelatihan',$this->uri->segment('3'));
		if($count > 0)
		{
			$this->data['materi_pelatihan'] = $this->M_Admin->get_tableid_edit('tbl_materi_pelatihan','id_materi_pelatihan',$this->uri->segment('3'));
			$this->data['pelatihans'] =  $this->db->query("SELECT * FROM tbl_pelatihan ORDER BY id_pelatihan DESC")->result_array();

		}else{
			echo '<script>alert("PEGAWAI TIDAK DITEMUKAN");window.location="'.base_url('data/materipelatihan').'"</script>';
		}

		$this->data['title_web'] = 'Data Materi Pelatihan Detail';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('materi_pelatihan/detail',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function materipelatihanedit()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_materi_pelatihan','id_materi_pelatihan',$this->uri->segment('3'));
		if($count > 0)
		{
			
			$this->data['materi_pelatihan'] = $this->M_Admin->get_tableid_edit('tbl_materi_pelatihan','id_materi_pelatihan',$this->uri->segment('3'));
			$this->data['pelatihans'] =  $this->db->query("SELECT * FROM tbl_pelatihan ORDER BY id_pelatihan DESC")->result_array();

		}else{
			echo '<script>alert("PEGAWAI TIDAK DITEMUKAN");window.location="'.base_url('data/materipelatihan').'"</script>';
		}

		$this->data['title_web'] = 'Data Materi Pelatihan Edit';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('materi_pelatihan/edit_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	// Code LDK Pekanbaru Controller Menu Master Document
	
	public function dokumen()
{
    // Ambil ID user yang login
    $this->data['idbo'] = $this->session->userdata('ses_id');

    // Ambil semua dokumen yang belum dihapus (deleted_at IS NULL)
    $this->data['dokumen'] = $this->db->query("SELECT * FROM tbl_dokumen WHERE deleted_at IS NULL ORDER BY id_dokumen DESC");

    // Cek apakah ada parameter ?id= di URL
    if (!empty($this->input->get('id'))) {
        $id = $this->input->get('id');
        $count = $this->M_Admin->CountTableId('tbl_dokumen', 'id_dokumen', $id);

        if ($count > 0) {
            // Tetap ambil datanya (tanpa filtering deleted_at karena ini konteks pengeditan spesifik)
            $this->data['dokumen'] = $this->db->query("SELECT * FROM tbl_dokumen WHERE id_dokumen='$id'")->row();
        } else {
            echo '<script>alert("KATEGORI TIDAK DITEMUKAN");window.location="' . base_url('data/dokumen') . '"</script>';
        }
    }

    // Set judul dan load view
    $this->data['title_web'] = 'Data Dokumen';
    $this->load->view('header_view', $this->data);
    $this->load->view('sidebar_view', $this->data);
    $this->load->view('dokumen/dokumen_view', $this->data);
    $this->load->view('footer_view', $this->data);
}


	public function prosesdokumen()
	{
	if($this->session->userdata('masuk_perpus') != TRUE){
		redirect(base_url('login'));
	}

	// hapus aksi form proses role (soft delete)
	if(!empty($this->input->get('id_dokumen')))
	{

		     $dokumen = $this->M_Admin->get_tableid_edit(
            'tbl_dokumen',
            'id_dokumen',
            htmlentities($this->input->get('id_dokumen'))
        );
		$id_dokumen = htmlentities($this->input->get('id_dokumen'));

		// Soft delete: set deleted_at timestamp
		$this->db->set('deleted_at', date('Y-m-d H:i:s'));
		$this->db->where('id_dokumen', $id_dokumen);
		$this->db->update('tbl_dokumen');

		$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-warning">
			<p>Berhasil Hapus Dokumen!</p>
		</div></div>');
		redirect(base_url('data/dokumen'));
	}

	// tambah aksi form proses role
	if(!empty($this->input->post('tambah')))
	{
		$post = $this->input->post();
		$data = array(
			'nama_dokumen' => htmlentities($post['nama_dokumen']),
			'deskripsi' => htmlentities($post['deskripsi']),
			'created_at' => date('Y-m-d H:i:s'),
			'updated_at' => date('Y-m-d H:i:s'),
			'deleted_at' => NULL
		);

		$this->db->insert('tbl_dokumen', $data);

		$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
			<p>Tambah Dokumen Sukses!</p>
		</div></div>');
		redirect(base_url('data/dokumen'));
	}

	// edit aksi form proses role
	if(!empty($this->input->post('edit')))
	{
		$post = $this->input->post();
		$data = array(
			'nama_dokumen' => htmlentities($post['nama_dokumen']),
			'deskripsi' => htmlentities($post['deskripsi']),
			'updated_at' => date('Y-m-d H:i:s')
		);

		$this->db->where('id_dokumen', htmlentities($post['edit']));
		$this->db->update('tbl_dokumen', $data);

		$this->session->set_flashdata('pesan','<div id="notifikasi"><div class="alert alert-success">
			<p>Edit Dokumen Sukses!</p>
		</div></div>');
		// redirect(base_url('data/roleedit/'.$post['edit']));

		 // Ganti redirect ke halaman utama data role
    	redirect(base_url('data/dokumen'));
	}
	}

		public function dokumentambah()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');

        $this->data['title_web'] = 'Tambah Dokumen';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('dokumen/tambah_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

		public function dokumendetail()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_dokumen','id_dokumen',$this->uri->segment('3'));
		if($count > 0)
		{
			$this->data['dokumen'] = $this->M_Admin->get_tableid_edit('tbl_dokumen','id_dokumen',$this->uri->segment('3'));

		}else{
			echo '<script>alert("DOKUMEN TIDAK DITEMUKAN");window.location="'.base_url('data/dokumen').'"</script>';
		}

		$this->data['title_web'] = 'Data Dokumen Detail';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('dokumen/detail',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function dokumenedit()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
		$count = $this->M_Admin->CountTableId('tbl_dokumen','id_dokumen',$this->uri->segment('3'));
		if($count > 0)
		{
			
			$this->data['dokumen'] = $this->M_Admin->get_tableid_edit('tbl_dokumen','id_dokumen',$this->uri->segment('3'));

		}else{
			echo '<script>alert("DOKUMEN TIDAK DITEMUKAN");window.location="'.base_url('data/dokumen').'"</script>';
		}

		$this->data['title_web'] = 'Data Role Edit';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('dokumen/edit_view',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	// Code LDK Pekanbaru Controller Menu Dokumen Pelatihan

	public function dokumenpelatihan()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
    	$this->data['pelatihan'] = $this->db->query("SELECT * FROM tbl_pelatihan WHERE deleted_at IS NULL ORDER BY id_pelatihan DESC");
        $this->data['title_web'] = 'Data Pelatihan Lampiran Dokumen';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('dokumen_pelatihan/list_pelatihan',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function listdokumenpelatihan($id_pelatihan)
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');

		$cek_pelatihan = $this->db->get_where('tbl_pelatihan', [
			'id_pelatihan' => $id_pelatihan,
			'deleted_at' => NULL
		])->row();

		if (!$cek_pelatihan) {
			echo '<script>alert("Data pelatihan tidak ditemukan."); window.location="' . base_url('data/dokumenpelatihan') . '"</script>';
			return;
		}

		$this->data['pelatihan'] = $cek_pelatihan;
		$this->data['dokumen_pelatihan'] = $this->db->query("
			SELECT pd.*, d.nama_dokumen, d.deskripsi 
			FROM tbl_pelatihan_dokumen pd
			JOIN tbl_dokumen d ON pd.id_dokumen = d.id_dokumen
			WHERE pd.id_pelatihan = ? AND pd.deleted_at IS NULL
			ORDER BY pd.id_pelatihan_dokumen DESC
		", [$id_pelatihan]);

		// Ambil dokumen yang sudah dipakai di tbl_pelatihan_dokumen untuk pelatihan ini
		$used_doc_ids = $this->db->select('id_dokumen')
			->from('tbl_pelatihan_dokumen')
			->where('id_pelatihan', $id_pelatihan)
			->where('deleted_at', NULL)
			->get()
			->result_array();

		$used_ids = array_column($used_doc_ids, 'id_dokumen');

		// Ambil dokumen yang belum digunakan
		if (!empty($used_ids)) {
			$this->data['dokumen_all'] = $this->db
				->where_not_in('id_dokumen', $used_ids)
				->where('deleted_at', NULL)
				->order_by('id_dokumen', 'DESC')
				->get('tbl_dokumen')
				->result();
		} else {
			$this->data['dokumen_all'] = $this->db
				->where('deleted_at', NULL)
				->order_by('id_dokumen', 'DESC')
				->get('tbl_dokumen')
				->result();
		}

		if (!empty($used_ids)) {
		// INI AKAN DIPAKAI UNTUK EDIT, MAKA AMBIL SEMUA, TERMASUK YANG SUDAH DIPILIH
		$this->data['dokumen_all_raw'] = $this->db
			->where('deleted_at', NULL)
			->order_by('id_dokumen', 'DESC')
			->get('tbl_dokumen')
			->result();
	} else {
		$this->data['dokumen_all_raw'] = $this->db
			->where('deleted_at', NULL)
			->order_by('id_dokumen', 'DESC')
			->get('tbl_dokumen')
			->result();
}

		$this->data['id_pelatihan'] = $id_pelatihan;
		$this->data['title_web'] = 'Lampiran Dokumen - ' . htmlentities($cek_pelatihan->nama_pelatihan);
		$this->load->view('header_view', $this->data);
		$this->load->view('sidebar_view', $this->data);
		$this->load->view('dokumen_pelatihan/list_dokumen_pelatihan', $this->data);
		$this->load->view('footer_view', $this->data);
	}

	public function prosesdokumenpelatihan()
	{
		$config['upload_path'] = './assets_style/assets/dokumen/';
		$config['allowed_types'] = 'pdf|doc|docx|ppt|pptx|xls|xlsx|txt';
		$config['max_size'] = 2048; // 2 MB
		$config['encrypt_name'] = TRUE;

		$this->load->library('upload', $config);

		if ($this->session->userdata('masuk_perpus') != TRUE) {
			redirect(base_url('login'));
		}

		// Handle tambah dokumen pelatihan
		if (!empty($this->input->post('tambah'))) {
		$post = $this->input->post();
		$id_pelatihan = htmlentities($post['id_pelatihan']);
		$id_dokumen = htmlentities($post['id_dokumen']);
		$file_path = '';

		if (!empty($_FILES['file_upload']['name'])) {
			if (!$this->upload->do_upload('file_upload')) {
				$this->session->set_flashdata('pesan', '<div class="alert alert-danger">' . $this->upload->display_errors() . '</div>');
				redirect(base_url('data/listdokumenpelatihan/' . $id_pelatihan));
				return;
			} else {
				$upload_data = $this->upload->data();
				$file_path = $upload_data['file_name'];
			}
		}

		$cek = $this->db->get_where('tbl_pelatihan_dokumen', [
			'id_pelatihan' => $id_pelatihan,
			'id_dokumen' => $id_dokumen,
			'deleted_at' => NULL
		])->num_rows();

		if ($cek > 0) {
			$this->session->set_flashdata('pesan', '<div class="alert alert-danger"><p>Dokumen ini sudah ditambahkan pada pelatihan!</p></div>');
			redirect(base_url('data/listdokumenpelatihan/' . $id_pelatihan));
			return;
		}

		$data = [
			'id_pelatihan' => $id_pelatihan,
			'id_dokumen' => $id_dokumen,
			'file_path' => $file_path,
			'tanggal_upload' => date('Y-m-d'),
			'created_at' => date('Y-m-d H:i:s'),
			'updated_at' => date('Y-m-d H:i:s'),
			'deleted_at' => NULL
		];

		$this->db->insert('tbl_pelatihan_dokumen', $data);
		$this->session->set_flashdata('pesan', '<div class="alert alert-success"><p>Dokumen berhasil ditambahkan ke pelatihan!</p></div>');
		redirect(base_url('data/listdokumenpelatihan/' . $id_pelatihan));
	}


		// Handle edit dokumen pelatihan
		if (!empty($this->input->post('edit'))) {
		$post = $this->input->post();
		$id_pelatihan_dokumen = htmlentities($post['edit']);
		$id_pelatihan = htmlentities($post['id_pelatihan']);
		$id_dokumen = htmlentities($post['id_dokumen']);

		$dokumen_old = $this->db->get_where('tbl_pelatihan_dokumen', ['id_pelatihan_dokumen' => $id_pelatihan_dokumen])->row();
		$file_path = $dokumen_old->file_path;

		if (!empty($_FILES['file_upload']['name'])) {
			if (!$this->upload->do_upload('file_upload')) {
				$this->session->set_flashdata('pesan', '<div class="alert alert-danger">' . $this->upload->display_errors() . '</div>');
				redirect(base_url('data/listdokumenpelatihan/' . $id_pelatihan));
				return;
			} else {
				// Optional: delete old file
				if (file_exists('./assets_style/assets/dokumen/' . $file_path) && !empty($file_path)) {
					unlink('./assets_style/assets/dokumen/' . $file_path);
				}
				$upload_data = $this->upload->data();
				$file_path = $upload_data['file_name'];
			}
		}

		$this->db->where('id_pelatihan_dokumen', $id_pelatihan_dokumen);
		$this->db->update('tbl_pelatihan_dokumen', [
			'id_dokumen' => $id_dokumen,
			'file_path' => $file_path,
			'updated_at' => date('Y-m-d H:i:s')
		]);

		$this->session->set_flashdata('pesan', '<div class="alert alert-success"><p>Dokumen pelatihan berhasil diperbarui!</p></div>');
		redirect(base_url('data/listdokumenpelatihan/' . $id_pelatihan));
	}

		// Handle hapus dokumen pelatihan (soft delete)
		if (!empty($this->input->get('id_pelatihan_dokumen'))) {
			$id_pelatihan_dokumen = htmlentities($this->input->get('id_pelatihan_dokumen'));

			$data = $this->db->get_where('tbl_pelatihan_dokumen', [
				'id_pelatihan_dokumen' => $id_pelatihan_dokumen
			])->row();

			if ($data) {
				$this->db->set('deleted_at', date('Y-m-d H:i:s'));
				$this->db->where('id_pelatihan_dokumen', $id_pelatihan_dokumen);
				$this->db->update('tbl_pelatihan_dokumen');

				$this->session->set_flashdata('pesan', '<div class="alert alert-warning"><p>Dokumen pelatihan berhasil dihapus!</p></div>');
				redirect(base_url('data/listdokumenpelatihan/' . $data->id_pelatihan));
			} else {
				echo '<script>alert("Data tidak ditemukan."); window.location="' . base_url('data/dokumenpelatihan') . '"</script>';
			}
		}
	}

	// Code LDK Pekanbaru Controller Menu Dokumentasi Pelatihan

	public function dokumentasipelatihan()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
    	$this->data['pelatihan'] = $this->db->query("SELECT * FROM tbl_pelatihan WHERE deleted_at IS NULL ORDER BY id_pelatihan DESC");
        $this->data['title_web'] = 'Data Kegiatan Pelatihan';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('dokumentasi_pelatihan/list_pelatihan',$this->data);
        $this->load->view('footer_view',$this->data);
	}

	public function listkegiatanpelatihan($id_pelatihan)
{
    $this->data['idbo'] = $this->session->userdata('ses_id');

    $cek_pelatihan = $this->db->get_where('tbl_pelatihan', [
        'id_pelatihan' => $id_pelatihan,
        'deleted_at' => NULL
    ])->row();

    if (!$cek_pelatihan) {
        echo '<script>alert("Data pelatihan tidak ditemukan."); window.location="' . base_url('data/kegiatanpelatihan') . '"</script>';
        return;
    }

    $this->data['pelatihan'] = $cek_pelatihan;

    // Ambil semua kegiatan pelatihan terkait
    $this->data['dokumentasi_pelatihan'] = $this->db->query("
        SELECT a.*, p.nama as nama_narasumber
        FROM tbl_pelatihan_activity a
        LEFT JOIN tbl_pegawai p ON a.id_narasumber = p.id_pegawai
        WHERE a.id_pelatihan = ? AND a.deleted_at IS NULL
        ORDER BY a.tanggal_activity ASC, a.jam_mulai ASC
    ", [$id_pelatihan]);

    $this->data['pegawai'] = $this->db
        ->where('deleted_at', NULL)
        ->order_by('nama', 'ASC')
        ->get('tbl_pegawai')
        ->result();

    $this->data['id_pelatihan'] = $id_pelatihan;
    $this->data['title_web'] = 'Kegiatan Pelatihan - ' . htmlentities($cek_pelatihan->nama_pelatihan);
    $this->load->view('header_view', $this->data);
    $this->load->view('sidebar_view', $this->data);
    $this->load->view('dokumentasi_pelatihan/list_kegiatan_pelatihan', $this->data);
    $this->load->view('footer_view', $this->data);
}

public function proseskegiatanpelatihan()
{
    if ($this->session->userdata('masuk_perpus') != TRUE) {
        redirect(base_url('login'));
    }

	// Handle Upload Foto
	if (!empty($this->input->post('upload_foto'))) {
		$id_activity = htmlentities($this->input->post('id_activity'));
		$id_pelatihan = htmlentities($this->input->post('id_pelatihan'));
		$tanggal_foto = htmlentities($this->input->post('tanggal_foto'));
		$keterangan = htmlentities($this->input->post('keterangan'));

		if (!empty($_FILES['foto_kegiatan']['name'][0])) {
			$files = $_FILES['foto_kegiatan'];
			$count = count($files['name']);

			for ($i = 0; $i < $count; $i++) {
				if ($files['error'][$i] == 0) {
					$filename = time() . '_' . basename($files['name'][$i]);
					$upload_path = './assets/foto_kegiatan/';
					$save_path = 'assets/foto_kegiatan/' . $filename;

					if (!file_exists($upload_path)) {
						mkdir($upload_path, 0777, true);
					}

					move_uploaded_file($files['tmp_name'][$i], $upload_path . $filename);

					// Simpan ke database
					$this->db->insert('tbl_pelatihan_foto', [
						'id_activity'   => $id_activity,
						'foto_path'     => $save_path,
						'keterangan'    => $keterangan,
						'tanggal_foto'  => $tanggal_foto,
						'created_at'    => date('Y-m-d H:i:s'),
						'updated_at'    => date('Y-m-d H:i:s'),
						'deleted_at'    => NULL,
					]);
				}
			}

			$this->session->set_flashdata('pesan', '<div class="alert alert-success">Foto berhasil diupload.</div>');
		} else {
			$this->session->set_flashdata('pesan', '<div class="alert alert-danger">Tidak ada file yang dipilih.</div>');
		}

		redirect(base_url('data/listkegiatanpelatihan/' . $id_pelatihan));
	}

    // Handle Tambah
    if (!empty($this->input->post('tambah'))) {
        $post = $this->input->post();

        $data = [
            'id_pelatihan'      => htmlentities($post['id_pelatihan']),
            'sesi_ke'           => htmlentities($post['sesi_ke']),
            'day_ke'            => htmlentities($post['day_ke']),
            'nama_kegiatan'     => htmlentities($post['nama_kegiatan']),
            'id_narasumber'     => htmlentities($post['id_narasumber']),
            'activity_desc'     => htmlentities($post['activity_desc']),
            'tanggal_activity'  => htmlentities($post['tanggal_activity']),
            'jam_mulai'         => htmlentities($post['jam_mulai']),
            'jam_selesai'       => htmlentities($post['jam_selesai']),
            'created_at'        => date('Y-m-d H:i:s'),
            'updated_at'        => date('Y-m-d H:i:s'),
            'deleted_at'        => NULL
        ];

        $this->db->insert('tbl_pelatihan_activity', $data);
        $this->session->set_flashdata('pesan', '<div class="alert alert-success">Kegiatan berhasil ditambahkan!</div>');
        redirect(base_url('data/listkegiatanpelatihan/' . $post['id_pelatihan']));
    }

    // Handle Edit
    if (!empty($this->input->post('edit'))) {
        $post = $this->input->post();

        $data = [
            'sesi_ke'           => htmlentities($post['sesi_ke']),
            'day_ke'            => htmlentities($post['day_ke']),
            'nama_kegiatan'     => htmlentities($post['nama_kegiatan']),
            'id_narasumber'     => htmlentities($post['id_narasumber']),
            'activity_desc'     => htmlentities($post['activity_desc']),
            'tanggal_activity'  => htmlentities($post['tanggal_activity']),
            'jam_mulai'         => htmlentities($post['jam_mulai']),
            'jam_selesai'       => htmlentities($post['jam_selesai']),
            'updated_at'        => date('Y-m-d H:i:s'),
        ];

        $this->db->where('id_activity', htmlentities($post['edit']));
        $this->db->update('tbl_pelatihan_activity', $data);
        $this->session->set_flashdata('pesan', '<div class="alert alert-success">Kegiatan berhasil diperbarui!</div>');
        redirect(base_url('data/listkegiatanpelatihan/' . $post['id_pelatihan']));
    }

	// Handle Delete Foto (soft delete)
	if (!empty($this->input->get('delete_foto'))) {
		$id_foto = htmlentities($this->input->get('delete_foto'));
		$id_pelatihan = htmlentities($this->input->get('id_pelatihan'));

		$data = $this->db->get_where('tbl_pelatihan_foto', [
			'id_foto' => $id_foto
		])->row();

		if ($data) {
			$this->db->set('deleted_at', date('Y-m-d H:i:s'));
			$this->db->where('id_foto', $id_foto);
			$this->db->update('tbl_pelatihan_foto');

			$this->session->set_flashdata('pesan', '<div class="alert alert-warning">Foto berhasil dihapus!</div>');
			redirect(base_url('data/listkegiatanpelatihan/' . $id_pelatihan));
		} else {
			echo '<script>alert("Data tidak ditemukan."); window.location="' . base_url('data/kegiatanpelatihan') . '"</script>';
		}
	}


    // Handle Delete (soft delete)
    if (!empty($this->input->get('id_activity'))) {
        $id_activity = htmlentities($this->input->get('id_activity'));

        $data = $this->db->get_where('tbl_pelatihan_activity', [
            'id_activity' => $id_activity
        ])->row();

        if ($data) {
            $this->db->set('deleted_at', date('Y-m-d H:i:s'));
            $this->db->where('id_activity', $id_activity);
            $this->db->update('tbl_pelatihan_activity');

            $this->session->set_flashdata('pesan', '<div class="alert alert-warning">Kegiatan berhasil dihapus!</div>');
            redirect(base_url('data/listkegiatanpelatihan/' . $data->id_pelatihan));
        } else {
            echo '<script>alert("Data tidak ditemukan."); window.location="' . base_url('data/kegiatanpelatihan') . '"</script>';
        }
    }
}

	// Code LDK Pekanbaru Controller Cetak Laporan

	public function cetaklaporan()
	{
		$this->data['idbo'] = $this->session->userdata('ses_id');
    	$this->data['pelatihan'] = $this->db->query("SELECT * FROM tbl_pelatihan WHERE deleted_at IS NULL ORDER BY id_pelatihan DESC");
        $this->data['title_web'] = 'Data Cetak Laporan Pelatihan';
        $this->load->view('header_view',$this->data);
        $this->load->view('sidebar_view',$this->data);
        $this->load->view('cetak_laporan/list_pelatihan_pjj',$this->data);
        $this->load->view('footer_view',$this->data);
	}



	// public function listkegiatanpelatihan($id_pelatihan)
	// {
	// 	$this->data['idbo'] = $this->session->userdata('ses_id');

	// 	$cek_pelatihan = $this->db->get_where('tbl_pelatihan', [
	// 		'id_pelatihan' => $id_pelatihan,
	// 		'deleted_at' => NULL
	// 	])->row();

	// 	if (!$cek_pelatihan) {
	// 		echo '<script>alert("Data pelatihan tidak ditemukan."); window.location="' . base_url('data/kegiatanpelatihan') . '"</script>';
	// 		return;
	// 	}

	// 	$this->data['pelatihan'] = $cek_pelatihan;

	// 	// Ambil semua kegiatan pelatihan terkait
	// 	$this->data['dokumentasi_pelatihan'] = $this->db->query("
	// 		SELECT a.*, p.nama as nama_narasumber 
	// 		FROM tbl_pelatihan_activity a 
	// 		LEFT JOIN tbl_pegawai p ON a.id_narasumber = p.id_pegawai 
	// 		WHERE a.id_pelatihan = ? AND a.deleted_at IS NULL
	// 		ORDER BY a.tanggal_activity ASC, a.jam_mulai ASC
	// 	", [$id_pelatihan]);

	// 	$this->data['pegawai'] = $this->db
	// 		->where('deleted_at', NULL)
	// 		->order_by('nama', 'ASC')
	// 		->get('tbl_pegawai')
	// 		->result();

	// 	$this->data['id_pelatihan'] = $id_pelatihan;
	// 	$this->data['title_web'] = 'Kegiatan Pelatihan - ' . htmlentities($cek_pelatihan->nama_pelatihan);
	// 	$this->load->view('header_view', $this->data);
	// 	$this->load->view('sidebar_view', $this->data);
	// 	$this->load->view('dokumentasi_pelatihan/list_kegiatan_pelatihan', $this->data);
	// 	$this->load->view('footer_view', $this->data);
	// }

	// public function proseskegiatanpelatihan()
	// {
	// 	if ($this->session->userdata('masuk_perpus') != TRUE) {
	// 		redirect(base_url('login'));
	// 	}

	// 	// Handle Tambah
	// 	if (!empty($this->input->post('tambah'))) {
	// 		$post = $this->input->post();

	// 		$data = [
	// 			'id_pelatihan'      => htmlentities($post['id_pelatihan']),
	// 			'sesi_ke'           => htmlentities($post['sesi_ke']),
	// 			'day_ke'            => htmlentities($post['day_ke']),
	// 			'nama_kegiatan'     => htmlentities($post['nama_kegiatan']),
	// 			'id_narasumber'     => htmlentities($post['id_narasumber']),
	// 			'activity_desc'     => htmlentities($post['activity_desc']),
	// 			'tanggal_activity'  => htmlentities($post['tanggal_activity']),
	// 			'jam_mulai'         => htmlentities($post['jam_mulai']),
	// 			'jam_selesai'       => htmlentities($post['jam_selesai']),
	// 			'created_at'        => date('Y-m-d H:i:s'),
	// 			'updated_at'        => date('Y-m-d H:i:s'),
	// 			'deleted_at'        => NULL
	// 		];

	// 		$this->db->insert('tbl_pelatihan_activity', $data);
	// 		$this->session->set_flashdata('pesan', '<div class="alert alert-success">Kegiatan berhasil ditambahkan!</div>');
	// 		redirect(base_url('data/listkegiatanpelatihan/' . $post['id_pelatihan']));
	// 	}

	// 	// Handle Edit
	// 	if (!empty($this->input->post('edit'))) {
	// 		$post = $this->input->post();

	// 		$data = [
	// 			'sesi_ke'           => htmlentities($post['sesi_ke']),
	// 			'day_ke'            => htmlentities($post['day_ke']),
	// 			'nama_kegiatan'     => htmlentities($post['nama_kegiatan']),
	// 			'id_narasumber'     => htmlentities($post['id_narasumber']),
	// 			'activity_desc'     => htmlentities($post['activity_desc']),
	// 			'tanggal_activity'  => htmlentities($post['tanggal_activity']),
	// 			'jam_mulai'         => htmlentities($post['jam_mulai']),
	// 			'jam_selesai'       => htmlentities($post['jam_selesai']),
	// 			'updated_at'        => date('Y-m-d H:i:s'),
	// 		];

	// 		$this->db->where('id_activity', htmlentities($post['edit']));
	// 		$this->db->update('tbl_pelatihan_activity', $data);
	// 		$this->session->set_flashdata('pesan', '<div class="alert alert-success">Kegiatan berhasil diperbarui!</div>');
	// 		redirect(base_url('data/listkegiatanpelatihan/' . $post['id_pelatihan']));
	// 	}

	// 	// Handle Delete (soft delete)
	// 	if (!empty($this->input->get('id_activity'))) {
	// 		$id_activity = htmlentities($this->input->get('id_activity'));

	// 		$data = $this->db->get_where('tbl_pelatihan_activity', [
	// 			'id_activity' => $id_activity
	// 		])->row();

	// 		if ($data) {
	// 			$this->db->set('deleted_at', date('Y-m-d H:i:s'));
	// 			$this->db->where('id_activity', $id_activity);
	// 			$this->db->update('tbl_pelatihan_activity');

	// 			$this->session->set_flashdata('pesan', '<div class="alert alert-warning">Kegiatan berhasil dihapus!</div>');
	// 			redirect(base_url('data/listkegiatanpelatihan/' . $data->id_pelatihan));
	// 		} else {
	// 			echo '<script>alert("Data tidak ditemukan."); window.location="' . base_url('data/kegiatanpelatihan') . '"</script>';
	// 		}
	// 	}
	// }


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
