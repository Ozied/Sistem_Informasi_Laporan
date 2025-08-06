<?php if(! defined('BASEPATH')) exit('No direct script acess allowed');

class M_Admin extends CI_Model
{
  function __construct()
  {
	 parent::__construct();
	 //validasi jika user belum login
	 }

   function dataPelatihan($id_pelatihan){
    $this->db->select('
      p.*,
      d.*,
      peg.nama as nama_pegawai,
      peg.nip,
      r.nama_role
    ');
    $this->db->from('tbl_pelatihan p');
    $this->db->join('tbl_detail_pelatihan d', 'p.id_pelatihan = d.id_pelatihan', 'left');
    $this->db->join('tbl_pegawai peg', 'd.id_pegawai = peg.id_pegawai', 'left');
    $this->db->join('tbl_role r', 'peg.id_role = r.id_role', 'left');
    $this->db->where('p.id_pelatihan', $id_pelatihan);
    $pelatihan = $this->db->get()->row();
    // //Ambil data pelatihan
      // $pelatihan = $this->db->get_where('tbl_pelatihan', ['id_pelatihan' => $id_pelatihan])->row();
    //   if(!$pelatihan) return null;

    //   //Ambil detail pelatihan
    //   $pelatihan->detail = $this->db->get_where('tbl_detail_pelatihan', ['id_pelatihan' => $id_pelatihan])->row();

    //   //Ambil materi pelatihan
     $materi = $this->db->get_where('tbl_materi_pelatihan', ['id_pelatihan' => $id_pelatihan])->result();

     //Daftar materi
      $kolom_materi = [
          'nama_mata_pelatihan_kel_dasar',
          'nama_mata_pelatihan_kel_inti',
          'nama_mata_pelatihan_kel_penunjang'
      ];

     foreach ($materi as $m) {
      foreach ($kolom_materi as $kolom){
        $materi_parsed = str_replace('nama_mata_pelatihan_', '', $kolom) . '_parsed';
        $m->{$materi_parsed} = $this->_parse_materi($m->{$kolom} ?? '');
      }
     }

     $pelatihan->materi = $materi;

      return $pelatihan;
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
