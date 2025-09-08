<?php if(! defined('BASEPATH')) exit('No direct script acess allowed');

class M_Admin extends CI_Model
{
  function __construct()
  {
	 parent::__construct();
	 //validasi jika user belum login
	 }

  //  Get Data Pelatihan
   function dataPelatihan($id_pelatihan){
    $this->db->select('p.*, d.*');
    $this->db->from('tbl_pelatihan p');
    $this->db->join('tbl_detail_pelatihan d', 'p.id_pelatihan = d.id_pelatihan', 'left');
    $this->db->where('p.id_pelatihan', $id_pelatihan);
    $pelatihan = $this->db->get()->row();

    // $pelatihan->materi->tujuan_parsed = $this->parseTujuanKursil($pelatihan->materi->tujuan_kursil ?? '');

    if(!$pelatihan) return null;

    $pegawai_ids = [];
    $pegawai_fields = [
      'id_pejabat_pembuka',
      'id_pejabat_penutup',
      'id_penanggung_jawab',
      'id_ketua_panitia',
      'id_akademis',
      'id_keuangan',
      'id_administrasi',
      'id_wi_1',
      'id_wi_2',
      'id_wi_3',
      'id_wi_4',
      'id_wi_rapat_kelulusan',
      'id_pengajar_1',
      'id_pengajar_2',
      'id_pengajar_3'
    ];

    foreach ($pegawai_fields as $field){
      if (!empty($pelatihan->{$field})) {
        $pegawai_ids[] = $pelatihan->{$field};
      }
    }

    if(!empty($pegawai_ids)) {
      $this->db->select('p.*, r.nama_role as jabatan');
      $this->db->from('tbl_pegawai p');
      $this->db->join('tbl_role r', 'p.jabatan = r.id_role', 'left');
      $this->db->where_in('p.id_pegawai', array_unique($pegawai_ids));
      $pegawai_data = $this->db->get()->result();

      $pegawai_map = array_column($pegawai_data, null, 'id_pegawai');

      foreach ($pegawai_fields as $field) {
        $key = str_replace('id_', '', $field);
        if (!empty($pelatihan->{$field}) && isset($pegawai_map[$pelatihan->{$field}])) {
          $pelatihan->{$key} = $pegawai_map[$pelatihan->{$field}];
        }
      }

      //Ambil materi pelatihan
     $materi = $this->db->get_where('tbl_materi_pelatihan', ['id_pelatihan' => $id_pelatihan])->result();

     //Daftar materi
      $kolom_materi = [
          'nama_mata_pelatihan_kel_dasar',
          'nama_mata_pelatihan_kel_inti',
          'nama_mata_pelatihan_kel_penunjang'
      ];

     foreach ($materi as $m) {
      $m->tujuan_kursil_parsed = $this->parseTujuanKursil($m->tujuan_kursil ?? '');
      foreach ($kolom_materi as $kolom){
        $materi_parsed = str_replace('nama_mata_pelatihan_', '', $kolom) . '_parsed';
        $m->{$materi_parsed} = $this->_parse_materi($m->{$kolom} ?? '');
      }
     }

     $pelatihan->materi = $materi;

      return $pelatihan;
    }
  }

  private function _parse_materi($text){
    if (empty(trim($text))) return ["-"];

    return array_values(array_filter(
      array_map('trim', preg_split("/\r\n|\n|\r/", $text)),
      function($item){
        return !empty($item);
      }
    ));
  }

  public function get_ketua_loka() {
    return $this->db->get_where('tbl_pegawai', ['id_pegawai' => 3])->row();
  }

  public function parseTujuanKursil($text) {
    if (empty($text)) return [];

    // Normalisasi newline dan pecah menjadi array
    $items = array_filter(
        explode("\n", str_replace(["\r\n", "\r"], "\n", $text)),
        function($line) {
            return !empty(trim($line));
        }
    );

    // Kelompokkan judul dan deskripsi berpasangan
    $result = [];
    for ($i = 0; $i < count($items); $i += 2) {
        $result[] = [
            'judul' => trim($items[$i] ?? ''),
            'deskripsi' => trim($items[$i+1] ?? '')
        ];
    }

    return $result;
  }

   public function get_durasi_pelatihan($id_pelatihan){
    //Ambil data tanggal
    $this->db->select('tanggal_mulai_pelatihan, tanggal_selesai_pelatihan');
    $this->db->where('id_pelatihan', $id_pelatihan);
    $pelatihan = $this->db->get('tbl_pelatihan')->row();

    if(!$pelatihan) return 0;

    //Hitung durasi
    $mulai = new DateTime($pelatihan->tanggal_mulai_pelatihan);
    $selesai = new DateTime($pelatihan->tanggal_selesai_pelatihan);
    $interval = $mulai->diff($selesai);

    //Return jumlah hari + 1
    return $interval->days;
   }

  //  Get Jenis Pelatihan
  // function getJenisPelatihan() {
  //   return $this->db
  //     ->where('deleted_at IS NULL', null, false)
  //     ->order_by('id_jenis_pelatihan', 'DESC')
  //     ->get('tbl_jenis_pelatihan')
  //     ->result_array();
  // }

function getJenisPelatihan() {
    return $this->db
        ->where('deleted_at IS NULL', null, false) // existing condition
        ->where('id_jenis_pelatihan', 1)          // new condition
        ->order_by('id_jenis_pelatihan', 'DESC')
        ->get('tbl_jenis_pelatihan')
        ->result_array();
}


  function get_pelatihan_by_jenis($id_jenis = null) {
    // $id_jenis = ($jenis == 'PJJ') ? 1 : 2;
    // Ambil semua role yang belum dihapus (deleted_at IS NULL)
    $this->db->select('p.*, j.nama_jenis_pelatihan as nama_jenis_pelatihan');
    $this->db->from('tbl_pelatihan p');
    $this->db->join('tbl_jenis_pelatihan j', 'p.id_jenis_pelatihan = j.id_jenis_pelatihan', 'left');
    $this->db->where('p.deleted_at IS NULL', null, false);

    if ($id_jenis !== NULL) {
      $this->db->where('p.id_jenis_pelatihan', $id_jenis);
    }

    $this->db->order_by('p.id_pelatihan', 'DESC');

    return $this->db->get();

  }

  function tambahJenisPelatihan($data)
   {
     $this->db->insert('tbl_jenis_pelatihan',$data)->result_array();
     return $this->db->insert_id();
   }

   function get_table($table_name)
   {
     $get_user = $this->db->get($table_name);
     return $get_user->result_array();
   }

   function get_tableid($table_name,$where,$id)
   {
     $this->db->where($where,$id);
     $edit = $this->db->get($table_name);
     return $edit->result_array();
   }

   function get_tableid_edit($table_name,$where,$id)
   {
     $this->db->where($where,$id);
     $edit = $this->db->get($table_name);
     return $edit->row();
   }

   function add_multiple($table,$data = array())
  {
      $total_array = count($data);

      if($total_array != 0)
      {
      $this->db->insert_batch($table, $data);
      }
  }

   function insertTable($table_name,$data)
   {
     $tambah = $this->db->insert($table_name,$data);
     return $tambah;
   }

   function LastinsertId($table_name,$data)
   {
     $this->db->insert($table_name,$data);
     $insert_id = $this->db->insert_id();
     return $insert_id;
   }

   function update_table($table_name,$where,$id,$data)
   {
     $this->db->where($where,$id);
     $update = $this->db->update($table_name,$data);
     return $update;
   }

   function delete_table($table_name,$where,$id)
   {
     $this->db->where($where,$id);
     $hapus = $this->db->delete($table_name);
     return $hapus;
   }

   function delete_table_multiple($table_name,$where,$id)
   {
      if (!empty($id)) {
         $this->db->where_in($where,$id);
         $hapus = $this->db->delete($table_name);
         return $hapus;
      }
   }

   function edit_table($table_name,$where,$id)
   {
     $this->db->where($where,$id);
     $edit = $this->db->get($table_name);
     return $edit->row();
   }

   function CountTable($table_name)
   {
     $Count = $this->db->get($table_name);
     return $Count->num_rows();
   }

   function CountTableId($table_name,$where,$id)
   {
     $this->db->where($where,$id);
     $Count = $this->db->get($table_name);
     return $Count->num_rows();
   }

   function SelectTable($table_name,$query,$id,$orderby)
   {
       $this->db->select($query, FALSE); // select('RIGHT(user.id_odojers,4) as kode', FALSE);
       $this->db->order_by($id,$orderby);
       $query = $this->db->get($table_name); // cek dulu apakah ada sudah ada kode di tabel.
       return $query;
   }

   function SelectTableSQL($query)
   {
       $row = $this->db->query($query);
       return $row;
   }

  function get_user($user)
  {
    $this->db->where('id_login',$user);
    $get_user = $this->db->get('tbl_login');
    return $get_user->row();
	}
	
	function rp($angka){
			$hasil_rupiah = "Rp" . number_format($angka,0,',','.'). ',-';
			return $hasil_rupiah;
	}

 
	public function buat_kode($table_name,$kodeawal,$idkode,$orderbylimit)
  {
      $query = $this->db->query("select * from $table_name $orderbylimit"); // cek dulu apakah ada sudah ada kode di tabel.
      
		  if($query->num_rows() > 0){
        //jika kode ternyata sudah ada.
        $hasil = $query->row();
        $kd = $hasil->$idkode;
        $cd = $kd;
        $nomor = $query->num_rows();
        $kode = $cd + 1;
        $kodejadi = $kodeawal."00".$kode;    // hasilnya CUS-0001 dst.
        $kdj = $kodejadi;
		  }else {
        //jika kode belum ada
        $kode = 0+1;
        $kodejadi = $kodeawal."00".$kode;    // hasilnya CUS-0001 dst.
        $kdj = $kodejadi;
      }
		  return $kdj;
  }

  public function buat_kode_join($table_name,$kodeawal,$idkode)
  {
      $query = $this->db->query($table_name); // cek dulu apakah ada sudah ada kode di tabel.
		  if($query->num_rows() > 0){
        //jika kode ternyata sudah ada.
        $hasil = $query->row();
        $kd = $hasil->$idkode;
        $cd = $kd;
        $kode = $cd + 1;
        $kodejadi = $kodeawal."00".$kode;    // hasilnya CUS-0001 dst.
        $kdj = $kodejadi;
		  }else {
        //jika kode belum ada
        $kode = 0+1;
        $kodejadi = $kodeawal."00".$kode;    // hasilnya CUS-0001 dst.
        $kdj = $kodejadi;
      }
		  return $kdj;
  }
  
  function acak($panjang)
  {
      $karakter= 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789';
      $string = '';
      for ($i = 0; $i < $panjang; $i++) {
        $pos = rand(0, strlen($karakter)-1);
        $string .= $karakter[$pos];
      }
      return $string;
  }
}
?>
