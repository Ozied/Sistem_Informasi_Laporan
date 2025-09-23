<?php if(! defined('BASEPATH')) exit('No direct script acess allowed');

class M_Admin extends CI_Model
{
  function __construct()
  {
	 parent::__construct();
	 //validasi jika user belum login
	 }

  //  Get Data Pelatihan
  //  function dataPelatihan($id_pelatihan){
  //   // Di model M_Admin->dataPelatihan(), ganti dengan:
  //   $this->db->select('
  //       p.*,
  //       d.id_detail_pelatihan,
  //       d.id_penanggung_jawab,
  //       d.id_ketua_panitia,
  //       d.id_akademis,
  //       d.id_keuangan,
  //       d.id_administrasi,
  //       d.id_wi_1,
  //       d.id_wi_2,
  //       d.id_wi_3,
  //       d.id_wi_rapat_kelulusan,
  //       d.id_wi_4,
  //       d.id_pengajar_1,
  //       d.id_pengajar_2,
  //       d.id_pengajar_3,
  //       d.jumlah_wi_pengajar,
  //       d.jumlah_pendidikan_wi_s1,
  //       d.jumlah_pendidikan_wi_s2,
  //       d.jumlah_pendidikan_wi_s3,
  //       d.jumlah_peserta,
  //       d.jumlah_lulus,
  //       d.jumlah_tidak_lulus,
  //       d.jabatan_peserta,
  //       d.jumlah_peserta_asn,
  //       d.jumlah_peserta_non_asn,
  //       d.jumlah_peserta_laki,
  //       d.jumlah_peserta_wanita,
  //       d.jumlah_pendidikan_peserta_sma,
  //       d.jumlah_pendidikan_wi_d2,
  //       d.jumlah_pendidikan_peserta_d3,
  //       d.jumlah_pendidikan_peserta_s1,
  //       d.jumlah_pendidikan_peserta_s2,
  //       d.jumlah_pendidikan_peserta_s3,
  //       d.rab,
  //       d.realisasi,
  //       j.nama_jenis_pelatihan,
  //       pembuka.nama as nama_pejabat_pembuka,
  //       pembuka.NIP as nip_pejabat_pembuka,
  //       pembuka.jabatan as jabatan_pejabat_pembuka,
  //       pembuka.asal_satker as satker_pejabat_pembuka,
  //       penutup.nama as nama_pejabat_penutup,
  //       penutup.NIP as nip_pejabat_penutup,
  //       penutup.jabatan as jabatan_pejabat_penutup,
  //       penutup.asal_satker as satker_pejabat_penutup
  //   ');

  //   $this->db->from('tbl_pelatihan p');
  //   $this->db->join('tbl_detail_pelatihan d', 'p.id_pelatihan = d.id_pelatihan', 'left');
  //   $this->db->join('tbl_jenis_pelatihan j', 'p.id_jenis_pelatihan = j.id_jenis_pelatihan', 'left');
  //   $this->db->join('tbl_pegawai pembuka', 'p.id_pejabat_pembuka = pembuka.id_pegawai', 'left');
  //   $this->db->join('tbl_pegawai penutup', 'p.id_pejabat_penutup = penutup.id_pegawai', 'left');
  //   $this->db->where('p.id_pelatihan', $id_pelatihan);

  //   $pelatihan = $this->db->get()->row();

  //   // $pelatihan->materi->tujuan_parsed = $this->parseTujuanKursil($pelatihan->materi->tujuan_kursil ?? '');

  //   if(!$pelatihan) return null;

  //   $pegawai_ids = [];
  //   $pegawai_fields = [
  //     'id_pejabat_pembuka',
  //     'id_pejabat_penutup',
  //     'id_penanggung_jawab',
  //     'id_ketua_panitia',
  //     'id_akademis',
  //     'id_keuangan',
  //     'id_administrasi',
  //     'id_wi_1',
  //     'id_wi_2',
  //     'id_wi_3',
  //     'id_wi_4',
  //     'id_wi_rapat_kelulusan',
  //     'id_pengajar_1',
  //     'id_pengajar_2',
  //     'id_pengajar_3'
  //   ];

  //   foreach ($pegawai_fields as $field){
  //     if (!empty($pelatihan->{$field})) {
  //       $pegawai_ids[] = $pelatihan->{$field};
  //     }
  //   }

  //   if(!empty($pegawai_ids)) {
  //     $this->db->select('p.*, r.nama_role as jabatan');
  //     $this->db->from('tbl_pegawai p');
  //     $this->db->join('tbl_role r', 'p.jabatan = r.id_role', 'left');
  //     $this->db->where_in('p.id_pegawai', array_unique($pegawai_ids));
  //     $pegawai_data = $this->db->get()->result();

  //     $pegawai_map = array_column($pegawai_data, null, 'id_pegawai');

  //     foreach ($pegawai_fields as $field) {
  //       $key = str_replace('id_', '', $field);
  //       if (!empty($pelatihan->{$field}) && isset($pegawai_map[$pelatihan->{$field}])) {
  //         $pelatihan->{$key} = $pegawai_map[$pelatihan->{$field}];
  //       }
  //     }

  //     //Ambil materi pelatihan
  //    $materi = $this->db->get_where('tbl_materi_pelatihan', ['id_pelatihan' => $id_pelatihan])->result();

  //    //Daftar materi
  //     $kolom_materi = [
  //         'nama_mata_pelatihan_kel_dasar',
  //         'nama_mata_pelatihan_kel_inti',
  //         'nama_mata_pelatihan_kel_penunjang'
  //     ];

  //    foreach ($materi as $m) {
  //     $m->tujuan_kursil_parsed = $this->parseTujuanKursil($m->tujuan_kursil ?? '');
  //     foreach ($kolom_materi as $kolom){
  //       $materi_parsed = str_replace('nama_mata_pelatihan_', '', $kolom) . '_parsed';
  //       $m->{$materi_parsed} = $this->_parse_materi($m->{$kolom} ?? '');
  //     }
  //    }

  //    $pelatihan->materi = $materi;

  //     return $pelatihan;
  //   }
  // }


  public function dataPelatihan($id_pelatihan)
{
    // 1) Ambil baris induk + detail + pejabat pembuka/penutup + jenis
    $this->db->select('
        p.*,
        d.id_detail_pelatihan,
        d.id_penanggung_jawab,
        d.id_ketua_panitia,
        d.id_akademis,
        d.id_keuangan,
        d.id_administrasi,
        d.id_wi_1,
        d.id_wi_2,
        d.id_wi_3,
        d.id_wi_rapat_kelulusan,
        d.id_wi_4,
        d.id_pengajar_1,
        d.id_pengajar_2,
        d.id_pengajar_3,
        d.jumlah_wi_pengajar,
        d.jumlah_pendidikan_wi_s1,
        d.jumlah_pendidikan_wi_s2,
        d.jumlah_pendidikan_wi_s3,
        d.jumlah_peserta,
        d.jumlah_lulus,
        d.jumlah_tidak_lulus,
        d.jabatan_peserta,
        d.jumlah_peserta_asn,
        d.jumlah_peserta_non_asn,
        d.jumlah_peserta_laki,
        d.jumlah_peserta_wanita,
        d.jumlah_pendidikan_peserta_sma,
        d.jumlah_pendidikan_wi_d2,
        d.jumlah_pendidikan_peserta_d3,
        d.jumlah_pendidikan_peserta_s1,
        d.jumlah_pendidikan_peserta_s2,
        d.jumlah_pendidikan_peserta_s3,
        d.rab,
        d.realisasi,
        d.pic_smartbangkom,
        d.jml_peserta_nilai_sm,
        d.jml_peserta_nilai_m,
        d.jml_peserta_nilai_cm,
        d.jml_peserta_nilai_dl,
        d.jml_peserta_tm,
        d.peserta_peringkat_1,
        d.peserta_peringkat_2,
        d.peserta_peringkat_3,

        j.nama_jenis_pelatihan,

        pembuka.nama         AS nama_pejabat_pembuka,
        pembuka.NIP          AS nip_pejabat_pembuka,
        pembuka.jabatan      AS jabatan_pejabat_pembuka,
        pembuka.asal_satker  AS satker_pejabat_pembuka,

        penutup.nama         AS nama_pejabat_penutup,
        penutup.NIP          AS nip_pejabat_penutup,
        penutup.jabatan      AS jabatan_pejabat_penutup,
        penutup.asal_satker  AS satker_pejabat_penutup
    ');
    $this->db->from('tbl_pelatihan p');
    $this->db->join('tbl_detail_pelatihan d', 'p.id_pelatihan = d.id_pelatihan', 'left');
    $this->db->join('tbl_jenis_pelatihan j', 'p.id_jenis_pelatihan = j.id_jenis_pelatihan', 'left');
    $this->db->join('tbl_pegawai pembuka', 'p.id_pejabat_pembuka = pembuka.id_pegawai', 'left');
    $this->db->join('tbl_pegawai penutup', 'p.id_pejabat_penutup = penutup.id_pegawai', 'left');
    $this->db->where('p.id_pelatihan', (int)$id_pelatihan);

    $pelatihan = $this->db->get()->row();
    if (!$pelatihan) return null;

    // Pastikan tipe numerik aman untuk percabangan
    $pelatihan->id_jenis_pelatihan = (int)$pelatihan->id_jenis_pelatihan;

    // 2) PETAKAN pegawai untuk semua field id_pegawai (termasuk pic_smartbangkom)
    $pegawai_fields = [
        'id_pejabat_pembuka','id_pejabat_penutup',
        'id_penanggung_jawab','id_ketua_panitia','id_akademis','id_keuangan','id_administrasi',
        'id_wi_1','id_wi_2','id_wi_3','id_wi_4','id_wi_rapat_kelulusan',
        'id_pengajar_1','id_pengajar_2','id_pengajar_3',
        'pic_smartbangkom'
    ];
    $pegawai_ids = [];
    foreach ($pegawai_fields as $f) if (!empty($pelatihan->{$f})) $pegawai_ids[] = (int)$pelatihan->{$f};
    $pegawai_map = [];
    if ($pegawai_ids) {
        $this->db->select('p.*, r.nama_role as jabatan');
        $this->db->from('tbl_pegawai p');
        $this->db->join('tbl_role r', 'p.jabatan = r.id_role', 'left');
        $this->db->where_in('p.id_pegawai', array_unique($pegawai_ids));
        $pegawai_data = $this->db->get()->result();
        $pegawai_map  = array_column($pegawai_data, null, 'id_pegawai');

        foreach ($pegawai_fields as $f) {
            $key = str_replace('id_', '', $f); // id_ketua_panitia -> ketua_panitia; pic_smartbangkom -> pic_smartbangkom
            if (!empty($pelatihan->{$f}) && isset($pegawai_map[$pelatihan->{$f}])) {
                $pelatihan->{$key} = $pegawai_map[$pelatihan->{$f}];
            }
        }
    }

    // 3) MATERI (tetap seperti sebelumnya)
    $materi = $this->db->get_where('tbl_materi_pelatihan', ['id_pelatihan' => (int)$id_pelatihan])->result();
    $kolom_materi = [
        'nama_mata_pelatihan_kel_dasar',
        'nama_mata_pelatihan_kel_inti',
        'nama_mata_pelatihan_kel_penunjang'
    ];
    foreach ($materi as $m) {
        $m->tujuan_kursil_parsed = $this->parseTujuanKursil($m->tujuan_kursil ?? '');
        foreach ($kolom_materi as $k) {
            $parsed_key = str_replace('nama_mata_pelatihan_', '', $k) . '_parsed';
            $m->{$parsed_key} = $this->_parse_materi($m->{$k} ?? '');
        }
    }
    $pelatihan->materi = $materi;

    // 4) PESERTA (tbl_peserta) + buat peta untuk resolusi peringkat
    $this->db->select('
        id_peserta,
        nama_peserta  AS nama,
        nip,
        pangkatgol    AS golru,
        jabatan,
        unit_kerja
    ');
    $this->db->from('tbl_peserta_pelatihan');
    $this->db->where('id_pelatihan', (int)$id_pelatihan);
    $this->db->where('deleted_at IS NULL', null, false);
    $this->db->order_by('nama_peserta', 'asc');
    $peserta = $this->db->get()->result();
    $pelatihan->peserta = $peserta;

    $peserta_map = [];
    if ($peserta) {
        foreach ($peserta as $ps) {
            $peserta_map[(int)$ps->id_peserta] = $ps;
        }
    }

    // 5) Peringkat 1-3 (resolve ke objek peserta)
    $pelatihan->peringkat_1 = !empty($pelatihan->peserta_peringkat_1) && isset($peserta_map[$pelatihan->peserta_peringkat_1])
        ? $peserta_map[$pelatihan->peserta_peringkat_1] : null;
    $pelatihan->peringkat_2 = !empty($pelatihan->peserta_peringkat_2) && isset($peserta_map[$pelatihan->peserta_peringkat_2])
        ? $peserta_map[$pelatihan->peserta_peringkat_2] : null;
    $pelatihan->peringkat_3 = !empty($pelatihan->peserta_peringkat_3) && isset($peserta_map[$pelatihan->peserta_peringkat_3])
        ? $peserta_map[$pelatihan->peserta_peringkat_3] : null;

    // 6) AGENDA + nested TOPIK + GRUP (dengan teacher)
    //    a) ambil daftar agenda untuk id_pelatihan
    $this->db->select('agenda_id, id_pelatihan, agenda_title, main_teacher_id');
    $this->db->from('tbl_agenda');
    $this->db->where('id_pelatihan', (int)$id_pelatihan);
    $this->db->order_by('agenda_id', 'asc');
    $agenda_rows = $this->db->get()->result();

    // Kumpulkan id guru (main teacher & grup) untuk 1x fetch
    $teacher_ids = [];
    foreach ($agenda_rows as $a) if (!empty($a->main_teacher_id)) $teacher_ids[] = (int)$a->main_teacher_id;

    // Ambil grup per agenda lalu kumpulkan teacher_id juga
    $agenda_ids = array_column($agenda_rows, 'agenda_id');
    $grup_by_agenda = [];
    if ($agenda_ids) {
        $this->db->select('agenda_group_id, agenda_id, group_no, teacher_id');
        $this->db->from('tbl_grup_agenda');
        $this->db->where_in('agenda_id', $agenda_ids);
        $this->db->order_by('group_no', 'asc');
        $grup_rows = $this->db->get()->result();
        foreach ($grup_rows as $g) {
            $grup_by_agenda[$g->agenda_id][] = $g;
            if (!empty($g->teacher_id)) $teacher_ids[] = (int)$g->teacher_id;
        }
    }

    // Ambil topik per agenda
    $topik_by_agenda = [];
    if ($agenda_ids) {
        $this->db->select('topic_id, agenda_id, topic_no, topic_title, jp_async, jp_sync');
        $this->db->from('tbl_topik');
        $this->db->where_in('agenda_id', $agenda_ids);
        $this->db->order_by('topic_no', 'asc');
        $topik_rows = $this->db->get()->result();
        foreach ($topik_rows as $t) {
            $topik_by_agenda[$t->agenda_id][] = $t;
        }
    }

    // 1x fetch untuk semua teacher yang diperlukan (main teacher & grup teacher)
    $teacher_map = [];
    $teacher_ids = array_values(array_unique(array_filter($teacher_ids)));
    if ($teacher_ids) {
        $this->db->select('p.*, r.nama_role as jabatan');
        $this->db->from('tbl_pegawai p');
        $this->db->join('tbl_role r', 'p.jabatan = r.id_role', 'left');
        $this->db->where_in('p.id_pegawai', $teacher_ids);
        $trows = $this->db->get()->result();
        $teacher_map = array_column($trows, null, 'id_pegawai');
    }

    // Rakit struktur agenda final
    $agenda_final = [];
    foreach ($agenda_rows as $a) {
        $obj = (object)[
            'agenda_id'      => (int)$a->agenda_id,
            'agenda_title'   => $a->agenda_title,
            'main_teacher'   => (!empty($a->main_teacher_id) && isset($teacher_map[$a->main_teacher_id])) ? $teacher_map[$a->main_teacher_id] : null,
            'topik'          => isset($topik_by_agenda[$a->agenda_id]) ? $topik_by_agenda[$a->agenda_id] : [],
            'grup'           => [],
        ];

        // Tambahkan teacher object untuk tiap grup
        if (isset($grup_by_agenda[$a->agenda_id])) {
            foreach ($grup_by_agenda[$a->agenda_id] as $g) {
                $obj->grup[] = (object)[
                    'agenda_group_id' => (int)$g->agenda_group_id,
                    'group_no'        => (int)$g->group_no,
                    'teacher'         => (!empty($g->teacher_id) && isset($teacher_map[$g->teacher_id])) ? $teacher_map[$g->teacher_id] : null,
                ];
            }
        }

        $agenda_final[] = $obj;
    }
    $pelatihan->agenda = $agenda_final;

    // 7) Bentuk flatten "tenaga_pengajar" agar kompatibel dengan Word template Anda
    //    Aturan: satu baris per (agenda_title, topik) x setiap group_no yang ada.
    //    nama_pengajar = teacher pada grup jika ada; jika tidak ada grup, pakai main_teacher.
    $tenaga_pengajar = [];
    foreach ($pelatihan->agenda as $ag) {
        $topiks = $ag->topik ?: [];
        $grups  = $ag->grup  ?: [];

        // Jika tidak ada grup sama sekali → buat satu entri tanpa "kel", nama_pengajar main_teacher
        if (!$grups) {
            foreach ($topiks as $tp) {
                $tenaga_pengajar[] = (object)[
                    'agenda'        => $ag->agenda_title,
                    'jp_async'      => (int)$tp->jp_async,
                    'jp_sync'       => (int)$tp->jp_sync,
                    'kel'           => null,
                    'nama_pengajar' => $ag->main_teacher->nama ?? '-', // fallback '-'
                ];
            }
            continue;
        }

        // Ada grup → duplikasi per group_no
        foreach ($grups as $gr) {
            $nama_pengajar = $gr->teacher->nama ?? ($ag->main_teacher->nama ?? '-');
            foreach ($topiks as $tp) {
                $tenaga_pengajar[] = (object)[
                    'agenda'        => $ag->agenda_title,
                    'jp_async'      => (int)$tp->jp_async,
                    'jp_sync'       => (int)$tp->jp_sync,
                    'kel'           => (int)$gr->group_no,
                    'nama_pengajar' => $nama_pengajar,
                ];
            }
        }
    }
    $pelatihan->tenaga_pengajar = $tenaga_pengajar;

    // Susun tim_penyelenggara dari pegawai yang sudah dipetakan
$tim = [];
$slot_to_label = [
    'penanggung_jawab' => 'Penanggung Jawab',
    'ketua_panitia'    => 'Ketua Panitia',
    'akademis'         => 'Koordinator Akademis',
    'administrasi'     => 'Koordinator Administrasi',
    'pic_smartbangkom'         => 'PIC Smartbangkom',
];

foreach ($slot_to_label as $slot => $label) {
    if (isset($pelatihan->{$slot}) && is_object($pelatihan->{$slot})) {
        $tim[] = (object)[
            'nama'    => $pelatihan->{$slot}->nama ?? '-',
            'nip'     => $pelatihan->{$slot}->NIP  ?? '-',
            'jabatan' => $label,
        ];
    }
}
$pelatihan->tim_penyelenggara = $tim;

// Default-kan agar aman dipakai di generator
if (!isset($pelatihan->peserta) || !is_array($pelatihan->peserta)) {
    $pelatihan->peserta = [];
}
if (!isset($pelatihan->tenaga_pengajar) || !is_array($pelatihan->tenaga_pengajar)) {
    $pelatihan->tenaga_pengajar = [];
}

// Total peserta riil (hanya yang belum di-soft delete)
$pelatihan->jumlah_peserta_riil = (int)$this->db
    ->where('id_pelatihan', (int)$id_pelatihan)
    ->where('deleted_at IS NULL', null, false)
    ->count_all_results('tbl_peserta_pelatihan');


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
  function getJenisPelatihan() {
    return $this->db
      ->where('deleted_at IS NULL', null, false)
      ->order_by('id_jenis_pelatihan', 'DESC')
      ->get('tbl_jenis_pelatihan')
      ->result_array();
  }

// function getJenisPelatihan() {
//     return $this->db
//         ->where('deleted_at IS NULL', null, false) // existing condition
//         ->where('id_jenis_pelatihan', 1)          // new condition
//         ->order_by('id_jenis_pelatihan', 'DESC')
//         ->get('tbl_jenis_pelatihan')
//         ->result_array();
// }


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
