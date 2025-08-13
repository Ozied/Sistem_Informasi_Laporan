<?php

use PhpOffice\PhpWord\IOFactory;
use PhpOffice\PhpWord\PhpWord;
use PhpOffice\PhpWord\Shared\Converter;
use PhpOffice\PhpWord\SimpleType\Jc;
use PhpOffice\PhpWord\Style\Font;
use PhpOffice\PhpWord\Style\Paragraph;
use PhpOffice\PhpWord\Style\Tab;

use function PHPSTORM_META\type;

defined('BASEPATH') OR exit('No direct script access allowed');

class wordGenerator_pdwk{
    protected $CI;
    
    public function __construct()
    {
        $this->CI =& get_instance();
        if (!function_exists('generate_list_style')){
            include_once(APPPATH . 'helpers/word_helper.php');
        }
    }
    

    public function generate($data = [])
    {
        try{

            $phpword = new PhpWord();
            $pelatihan = is_array($data) ? (object)$data['pelatihan'] : $data->pelatihan;
            $durasi = is_array($data) ? ($data['durasi'] ?? 0) : $data->durasi ?? 0;
            $ketua_loka = is_array($data) ? ($data['ketua_loka'] ?? 0) : $data->ketua_loka ?? 0;
            
            $phpword->addTitleStyle(1, ['size'=>16, 'bold'=>true], ['alignment'=>'center']);
            $phpword->addTitleStyle(2, ['size'=>12, 'bold'=>true]);
            $phpword->setDefaultFontName('Times New Roman');
            $phpword->setDefaultFontSize(12);
            $phpword->addNumberingStyle(
            'alphaList',  // Your custom style name
            array(
                'type' => 'multilevel',
                'levels' => array(
                    array(
                        'format' => 'lowerLetter',  // Use 'lowerLetter' for a, b, c
                        'text' => '%1.',
                        'alignment' => 'left',
                        'left' => 720,
                        'hanging' => 360,
                        'font' => 'Arial',
                        'hint' => 'default'
                    )
                )
            )
        );
            
            $fontstyle=['name' => 'Times New Roman', 'size' => 12];
            $paragraphstyle = [
                'alignment' => 'both',
                'indentation' => ['firstLine' => 700],
                'spacing' => 240,
                'lineHeight' => 1.5,
                'spaceAfter' => 0
            ];
            $paragraphstyle2 = [
                'alignment' => 'both',
                'indentation' => ['left' => 720],
                'spacing' => 240,
                'lineHeight' => 1.5,
                'spaceAfter' => 0
            ];

           //LAPORAN PENYELENGGARAAN//
            // Kata Pengantar
            $section = $phpword->addSection();
            $section->addPageBreak();
            // $section->setStyle(['tabs' => []]);
            $section->addText("Puji dan syukur kehadirat Allah SWT, berkat rahmat serta karunianya, laporan " . $pelatihan->nama_kegiatan . " di Wilayah Kerja Kantor Kementerian Agama" . $pelatihan->kab_kota . "ini telah dapat disusun.", $fontstyle, $paragraphstyle);
            $section->addText("Laporan pelatihan ini terdiri dari tiga bab. Bab I Pendahuluan, memuat organisasi diklat, nama unit/satuan kerja, nama diklat yang diselenggarakan, dasar hukum, sumber pembiayaan, susunan panitia, dan alamat penyelenggara. Bab II berisi tentang pelaksanaan " . $pelatihan->nama_kegiatan . "yang mencakup tujuan dan sasaran, kurikulum, peserta, widyaiswara/narasumber, evaluasi, penyelenggaraan, keuangan, penjaminan mutu, dan lain-lain. Bab III sebagai penutup terdiri dari Laporan Keuangan / SPJ Akhir Pelatihan ini. Laporan ini juga dilengkapi dengan lampiran-lampiran sebagai bukti fisik.", $fontstyle, $paragraphstyle);
            $section->addText("Diharapkan bahwa dengan selesainya laporan ini, semua kegiatan yang berhubungan dengan " . $pelatihan->nama_kegiatan . "dapat dipertanggungjawabkan.", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Ketua', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addTextBreak(3);
            $section->addText("{$pelatihan->ketua_panitia->nama}", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText("NIP. {$pelatihan->ketua_panitia->NIP}", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
                
            
            // Daftar Isi
            $section->addPageBreak();
            $section->addTitle("DAFTAR ISI");

            // BAB I
            $section->addPageBreak();
            $section->setStyle([
                'tabs' => [
                    new Tab('left', 3000),
                    new Tab('left', 3500)
                    ]
            ]);
            $section->addTitle("BAB I", 1);
            $section->addTitle("PENDAHULUAN", 1);
            $section->addTitle("A. Organisasi Diklat", 2);
            $section->addText("Dalam Peraturan Menteri Agama Nomor 75 Tahun 2015 tentang Penyelenggaraan Pendidikan dan Pelatihan Pegawai pada Kementerian Agama dinyatakan bahwa Loka Diklat Keagamaan (LDK) adalah Unit Pelaksana Teknis Diklat  Kementerian Agama yang berkedudukan di daerah. LDK mempunyai tugas melaksanakan Diklat  Administrasi dan Diklat Tenaga Teknis Keagamaan bagi pegawai di wilayah masing-masing dengan berpedoman kepada Kebijakan Kepala Badan Litbang dan Diklat Kementerian Agama", $fontstyle, $paragraphstyle);
            $section->addText("Dalam melaksanakan keputusan tersebut, Loka Diklat Keagamaan Pekanbaru melaksanakan suatu jenis pendidikan dan pelatihan, yaitu $pelatihan->nama_kegiatan" , $fontstyle, $paragraphstyle);
            
            $section->addTitle("B. Nama Unit/Satuan Kerja", 2);
            $section->addText("Nama unit/satuan kerja penyelenggara adalah Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru Jl. Yos Sudarso Kel. Lembah Damai, Kec. Rumbai Pesisir 28263, Website http://www.ldkpekanbaru.kemenag.go.id, Email: loka.pekanbaru@kemenag.go.id, Telp. 0761 8034201.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("C. Nama Diklat yang Diselenggarakan", 2);
            $section->addText("Nama Diklat yang diselenggarakan adalah “$pelatihan->nama_kegiatan di Wilayah Kerja Kantor Kementerian Agama $pelatihan->kab_kota ”", $fontstyle, $paragraphstyle);
            
            $section->addTitle("D. Dasar Hukum", 2);
            $section->addText("Dasar $pelatihan->nama_pelatihan bagi Wilayah Kerja Kementerian Agama $pelatihan->kab_kota ini adalah : ", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Undang-Undang Nomor 20 Tahun 2023 tentang Aparatur Sipil Negara (ASN)", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Pemerintah RI Nomor 11 tahun 2017 tentang Manajemen Pegawai Negeri Sipil", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama RI Nomor  42 Tahun 2016 tentang Organisasi dan Tata Kerja Kementerian Agama;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama Nomor 10 Tahun 2018 tentang perubahan PMA No. 59 Tahun 2015 Tentang Organisasi dan Tata Keja Balai Pendidikan dan Pelatihan Keagamaan;", 0, $fontstyle, $style);
            $section->addListItem("Keputusan Menteri Agama RI Nomor 75 Tahun 2015 tentang Penyelenggaraan Pendidikan dan Pelatihan Pegawai pada Kementerian Agama;", 0, $fontstyle, $style);
            $section->addListItem("Keputusan Kepala Badan Litbang dan Diklat Kementerian Agama Nomor 62 Tahun 2017 Tentang Kurikulum Pendidikan dan Pelatihan Tenaga Teknis Pendidikan dan Keagamaan;", 0, $fontstyle, $style);
            $section->addListItem("DIPA Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru Tahun 2025 Nomor : SP-DIPA/025.11.2.690527/2025 Tanggal 02 Desember 2024;", 0, $fontstyle, $style);

            $section->addTitle("E. Sumber Pembiayaan", 2);
            $section->addText("Sumber biaya penyelenggaraan Pelatihan ini dibebankan pada DIPA Loka Diklat Keagamaan Pekanbaru Nomor : Nomor : SP-DIPA/025.11.2.690527/2025 Tanggal 02 Desember 2024;", $fontstyle, $paragraphstyle);
            
            $section->addTitle("F. Susunan Panitia", 2);
            $section->addText("Adapun susunan panitia penyelenggara $pelatihan->nama_kegiatan adalah sebegai berikut:", $fontstyle, $paragraphstyle);
            $section->addListItem("Ketua\t:{$pelatihan->ketua_panitia->nama}", $fontstyle, $paragraphstyle);
            $section->addListItem("Seketaris/Akademis\t:{$pelatihan->akademis->nama}", $fontstyle, $paragraphstyle);
            $section->addListItem("Anggota/Keuangan\t:{$pelatihan->keuangan->nama}", $fontstyle, $paragraphstyle);
            $section->addListItem("Anggota\t:{$pelatihan->administrasi->nama}", $fontstyle, $paragraphstyle);

            $section->addTitle("G. Alamat Penyelenggara", 2);
            $section->addText("Alamat Pelaksanaan $pelatihan->nama_pelatihan dilaksanakan di $pelatihan->alamat", $fontstyle, $paragraphstyle);

            $section->addTitle("H. Waktu Pelaksanaan", 2);
            $section->addText("Pelaksanaan Pelatihan berlangsung selama terhitung tanggal " . $data['tanggal_mulai'] . " s.d " . $data['tanggal_selesai'] . ".", $fontstyle, $paragraphstyle);

            $section->addTitle("I. Tempat Pelaksanaan", 2);
            $section->addText("Pelatihan dilaksanakan di $pelatihan->tempat", $fontstyle, $paragraphstyle);

            // BAB II
            $section->addPageBreak();
            $section->addTitle("BAB II", 1);
            $section->addTitle("PELAKSANAAN DIKLAT", 1);
            $section->addTitle("A. Tujuan dan Sasaran", 2);
            // $section->addText("$pelatihan->nama_kegiatan di $pelatihan->tempat Tahun $pelatihan->tahun ini memiliki tujuan dan sasaran sebagai berikut :", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Tujuan", 0, array_merge($fontstyle, ['size' => 12]), $style);
            $section->addText("Secara umum Diklat ini bertujuan untuk : ", $fontstyle, $paragraphstyle);
            
            $style = 'alphaList';

            $section->addListItem("Meningkatkan pengetahuan, keahlian, keterampilan dan sikap untuk dapat melaksanakan tugas jabatan secara profesional dengan dilandasi kepribadian dan kode etik pegawai sesuai dengan kebutuhan Kementerian Agama.", 0, $fontstyle, $style);
            $section->addListItem("Menciptakan aparatur yang mampu berperan sebagai pembaharu dan perekat persatuan dan kesatuan bangsa.", 0, $fontstyle, $style);
            $section->addListItem("Memantapkan sikap dan semangat pengabdian yang berorientasi pada pelayanan, pengayoman  dan pemberdayaan masyarakat.", 0, $fontstyle, $style);
            $section->addListItem("Menciptakan kesamaan visi, dinamika pola pikir dan mengembangkan  sinergi dalam melaksanakan tugas pemerintah umum dan pembangunan demi terwujudnya kepemerintahan yang baik dan bersih.", 0, $fontstyle, $style);

            // $section->addListItem("Peningkatan Pemahaman Tentang Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Memahami konsep dasar zakat, jenis-jenis zakat (zakat mal dan zakat fitrah), dan dalil-dalil syariah yang mendasarinya.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Pengelolaan Dana Zakat yang Efektif", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Membekali peserta dengan keterampilan teknis untuk mengelola dana zakat, mulai dari pengumpulan, pendistribusian, hingga pelaporan.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Peningkatan Kapasitas Lembaga Pengelola Zakat (LPZ)", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Memperkuat manajemen lembaga zakat agar lebih profesional, transparan, dan akuntabel.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Strategi Pengumpulan Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Mengajarkan teknik penggalangan dana zakat yang inovatif dan berbasis teknologi untuk menjangkau lebih banyak muzakki (pemberi zakat).", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Distribusi Zakat yang Tepat Sasaran", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Memberikan wawasan mengenai metode pendistribusian zakat yang adil, tepat sasaran, dan berdampak besar bagi mustahik (penerima zakat).", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Peningkatan Kesejahteraan Umat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Menanamkan nilai-nilai bahwa zakat adalah instrumen pemberdayaan ekonomi umat, bukan sekadar kewajiban agama.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Kepatuhan Syariah", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Menjamin bahwa pengelolaan zakat dilakukan sesuai dengan kaidah syariah dan hukum positif yang berlaku, seperti Undang-Undang Pengelolaan Zakat.", $fontstyle, $paragraphstyle2);

            $style = generate_list_style($phpword, 'decimal', 2);

            $section->addListItem("Sasaran", 0, $fontstyle, $style);
            $section->addText("Adapun sasaran Pelatihan $pelatihan->nama_kegiatan Tahun $pelatihan->tahun adalah tersedianya $pelatihan->jumlah_peserta orang alumni pelatihan yang cakap dan kompeten dalam menjalankan tugas dan fungsi sesuai jabatan yang di emban", $fontstyle, $paragraphstyle);
            
            $section->addTitle("B. Implementasi Kurikulum", 2);
            $section->addText("Kurikulum Pelatihan ini disesuaikan dengan kurikulum $materi->asal_kursil Badan Litbang dan Diklat Kementerian Agama Republik Indonesia.", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Mata Diklat dan Jumlah Jam Pelajaran", 0, $fontstyle, $style);
            $section->addListItem("Jadwal Diklat (Terlampir)", 0, $fontstyle, $style);

            $section->addTitle("C. Rencana dan Realisasi Peserta", 2);
            $section->addText("Jumlah, asal daerah, status kepegawaian, dan jenis kelamin peserta Pelatihan sebagai berikut :", $fontstyle, $paragraphstyle);
            
            $section->addListItem("Jumlah dan Asal Peserta", 0, $fontstyle, $style);
            $section->addText("Peserta terdiri dari $pelatihan->jumlah_peserta orang $pelatihan->jabatan_peserta yang ada di wilayah kerja Kantor Kementerian Agama $pelatihan->kab_kota", $fontstyle, $paragraphstyle);

            $section->addListItem("Status Kepegawaian dan Jenis Kelamin", 0, $fontstyle, $style);
            $section->addText("Peserta terdiri dari ASN sebanyak $pelatihan->jumlah_peserta_asn orang dan non ASN sebanyak $pelatihan->jumlah_peserta_non_asn orang dengan rincian $pelatihan->jumlah_peserta_laki orang laki-laki dan $pelatihan->jumlah_peserta_wanita orang perempuan. Pendidikan terakhir dari peserta adalah sebagai berikut:", $fontstyle, $paragraphstyle);

            $section->addText("SMA/MA\t: $pelatihan->jumlah_pendidikan_peserta_sma", $fontstyle, $paragraphstyle);
            $section->addText("D3\t: $pelatihan->jumlah_pendidikan_peserta_d3", $fontstyle, $paragraphstyle);
            $section->addText("S1\t: $pelatihan->jumlah_pendidikan_peserta_s1", $fontstyle, $paragraphstyle);
            $section->addText("S2\t: $pelatihan->jumlah_pendidikan_peserta_s2", $fontstyle, $paragraphstyle);
            $section->addText("S3\t: $pelatihan->jumlah_pendidikan_peserta_s3", $fontstyle, $paragraphstyle);

            $section->addTitle("D. Rencana dan Realisasi Widyaiswara/Tenaga Pengajar", 2);
            $section->addText("Jumlah, asal daerah, dan jenjang akademik Widyaiswara/Tenaga Pengajar Pelatihan ini adalah adalah sebagai berikut :", $fontstyle, $paragraphstyle);

            $section->addListItem("Jumlah dan Asal Widyaiswara/Tenaga Pengajar", 0, $fontstyle, $style);
            $section->addText("Jumlah widyaiswara dan tenaga pengajar adalah $pelatihan->jumlah_wi_pengajar orang Widyaiswara terdiri dari : ", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');
            
            $section->addListItem("{$pelatihan->wi_1->nama} berasal dari {$pelatihan->wi_1->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("{$pelatihan->wi_2->nama} berasal dari {$pelatihan->wi_2->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("{$pelatihan->wi_3->nama} berasal dari {$pelatihan->wi_3->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("{$pelatihan->wi_4->nama} berasal dari {$pelatihan->wi_4->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            
            $section->addText("Tenaga Pengajar terdiri dari :", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');
            
            $section->addListItem("{$pelatihan->pengajar_1->nama} {$pelatihan->pengajar_1->jabatan}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("{$pelatihan->pengajar_2->nama} {$pelatihan->pengajar_2->jabatan}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("{$pelatihan->pengajar_3->nama} {$pelatihan->pengajar_3->jabatan}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            $section->addListItem("Jenjang Akademik/Kualifikasi Widyaiswara/Tenaga Pengajar", 0, $fontstyle, $style);
            $section->addText("Jenjang akademik/kualifikasi pendidikan widyaiswara/tenaga pengajar pada pelatihan ini adalah :", $fontstyle, $paragraphstyle);

            $section->addText("Setara D2/D3\t: $pelatihan->jumlah_pendidikan_wi_d2 orang", $fontstyle, $paragraphstyle);
            $section->addText("S1\t: $pelatihan->jumlah_pendidikan_wi_s1 orang", $fontstyle, $paragraphstyle);
            $section->addText("S2\t: $pelatihan->jumlah_pendidikan_wi_s2 orang", $fontstyle, $paragraphstyle);
            $section->addText("S3\t: $pelatihan->jumlah_pendidikan_wi_s3 orang", $fontstyle, $paragraphstyle);
            $section->addText("(curriculum vitae/biodata terlampir).", $fontstyle, $paragraphstyle);

            $section->addListItem("Daftar hadir Narasumber (Terlampir)", 0, $fontstyle, $style);
            
            $section->addTitle("E. Hasil Evaluasi Pelatihan", 2);
            $section->addText("Evaluasi dilakukan terhadap penyelenggara, widyaiswara/Tenaga Pengajar, dan peserta sebagai berikut :", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Hasil Evaluasi Terhadap Peserta Pelatihan (terlampir)", 0, $fontstyle, $style);
            $section->addListItem("Hasil Evaluasi Terhadap Widyaiswara/Narasumber (terlampir)", 0, $fontstyle, $style);
            $section->addListItem("Hasil Evaluasi terhadap Panitia Penyelenggara Pelatihan (terlampir)", 0, $fontstyle, $style);

            $section->addTitle("F. Realisasi Konsumsi dan Akomodasi", 2);

            $style = 'alphaList';

            $section->addListItem("Konsumsi", 0, $fontstyle, $style);
            $section->addText("Terdapat pada Lampiran RAB", $fontstyle, $paragraphstyle);
            
            $section->addListItem("Akomodasi", 0, $fontstyle, $style);
            $section->addText("Asrama			: -", $fontstyle, $paragraphstyle);
            $section->addText("Ruang Belajar		: Memadai tersedia sesuai kapasitas", $fontstyle, $paragraphstyle);
            $section->addText("Alat bantu belajar	: Tersedia", $fontstyle, $paragraphstyle);
            $section->addText("Ruang Makan		: -", $fontstyle, $paragraphstyle);
            $section->addText("Sarana Olah Raga  	: -", $fontstyle, $paragraphstyle);

            $section->addListItem("Rencana RAB", 0, $fontstyle, $style);
            $section->addText("Terlampir rencana RAB (seluruh akun kegiatan)", $fontstyle, $paragraphstyle);

            $section->addListItem("Realisasi RAB", 0, $fontstyle, $style);
            $section->addText("Terlampir realisasi RAB (seluruh akun kegiatan)", $fontstyle, $paragraphstyle);

            $section->addTitle("G. Penjaminan Mutu", 2);
            $section->addText("Dalam rangka penjaminan mutu dilakukan usaha pembelajaran yang maksimal 10 JP per hari dengan ketentuan materi 30% teori dan 70% praktek. Dengan demikian, peserta dapat memahami materi lebih dalam serta mendapat waktu istirahat yang cukup, selain itu dilakukan monitoring setiap hari terhadap pelaksanaan pembelajaran yang terjadi di dalam ruangan kelas", $fontstyle, $paragraphstyle);

            // $style = generate_list_style($phpword, 'decimal');

            // if (!empty($pelatihan->materi)) {
                
            //     foreach ($pelatihan->materi as $materi) {
            //         //Akses property yang sudah diparsing
            //         if (!empty($materi->kel_dasar_parsed)) {
            //             foreach ($materi->kel_dasar_parsed as $item) {
            //                 $section->addListItem($item, 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            //             }
            //         } else {
            //             $section->addText('Materi tidak tersedia', $fontstyle);
            //         }
            //     }
            // } else {
            //     $section->addText('Tidak ada materi pelatihan', $fontstyle);
            // }
            
            // // $section->addListItem("Moderasi Beragama dan Pembangunan Nasional", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Nilai-Nilai Dasar Sumber Daya Manusia (SDM) Kementerian Agama", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Sistem Pelatihan dan Pengembangan SDM Kementerian Agama", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            // $section->addText("Kelompok Inti yaitu kelompok mata pelajaran yang bertujuan untuk membekali peserta dengan pengetahuan dibidang tugas pokok yang bersangkutan meliputi :", $fontstyle, $paragraphstyle);

            // $style = generate_list_style($phpword, 'decimal');

            // if (!empty($pelatihan->materi)) {
                
            //     foreach ($pelatihan->materi as $materi) {
            //         //Akses property yang sudah diparsing
            //         if (!empty($materi->kel_inti_parsed)) {
            //             foreach ($materi->kel_inti_parsed as $item) {
            //                 $section->addListItem($item, 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            //             }
            //         } else {
            //             $section->addText('Materi tidak tersedia', $fontstyle);
            //         }
            //     }
            // } else {
            //     $section->addText('Tidak ada materi pelatihan', $fontstyle);
            // }

            
            // // $section->addListItem("Peraturan Perundang Undangan Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Fiqh Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Perhitungan Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Fundraising Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Sistem Akuntansi dan Pelaporan Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Zakat dan Pajak", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Pengelolaan zakat di BAZNAS", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            // $section->addText("Kelompok penunjang adalah kelompok mata pelajaran yang bertujuan untuk memperluas pengetahuan dan wawasan, serta mempertajam pemahaman dan penghayatan peserta terhadap berbagai faktor, termasuk lingkungan. Sebagai penunjang pelaksanaan tugas pokok tersebut terdiri dari :", $fontstyle, $paragraphstyle);

            // $style = generate_list_style($phpword, 'decimal');

            // if (!empty($pelatihan->materi)) {
                
            //     foreach ($pelatihan->materi as $materi) {
            //         //Akses property yang sudah diparsing
            //         if (!empty($materi->kel_penunjang_parsed)) {
            //             foreach ($materi->kel_penunjang_parsed as $item) {
            //                 $section->addListItem($item, 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            //             }
            //         } else {
            //             $section->addText('Materi tidak tersedia', $fontstyle);
            //         }
            //     }
            // } else {
            //     $section->addText('Tidak ada materi pelatihan', $fontstyle);
            // }
            
            // // $section->addListItem("Overview", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Building Learning Commitment", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Evaluasi Program", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Rencana Tindak Lanjut", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // // $section->addListItem("Ujian", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            // $section->addTitle("D. Jadwal Pelatihan", 2);
            // $section->addText("Adapun Jadwal $pelatihan->nama_pelatihan Tahun $pelatihan->tahun dimuat di lampiran.", $fontstyle, $paragraphstyle);
            
            // $section->addTitle("E. Peserta", 2);
            
            // $style = generate_list_style($phpword, 'decimal');
            
            // $section->addListItem("Jumlah dan Asal Peserta", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Peserta $pelatihan->nama_pelatihan berjumlah $pelatihan->jumlah_peserta orang yang terdiri dari $pelatihan->jabatan_peserta yang berasal dari $pelatihan->tempat", $fontstyle, $paragraphstyle);
            
            // $section->addListItem("Status Kepegawaian, Jenis Kelamin, dan Pendidikan Peserta", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Peserta yang merupakan Aparatur Sipil Negara (ASN) berjumlah $pelatihan->jumlah_peserta_asn orang dan $pelatihan->jumlah_peserta_non_asn orang non ASN. Peserta terdiri dari $pelatihan->jumlah_peserta_laki orang laki-laki dan $pelatihan->jumlah_peserta_wanita orang perempuan. Pendidikan terakhir dari peserta adalah sebagai berikut:", $fontstyle, $paragraphstyle);

            // $section->addText("SMA/MA\t: $pelatihan->jumlah_pendidikan_peserta_sma", $fontstyle, $paragraphstyle);
            // $section->addText("D3\t: $pelatihan->jumlah_pendidikan_peserta_d3", $fontstyle, $paragraphstyle);
            // $section->addText("S1\t: $pelatihan->jumlah_pendidikan_peserta_s1", $fontstyle, $paragraphstyle);
            // $section->addText("S2\t: $pelatihan->jumlah_pendidikan_peserta_s2", $fontstyle, $paragraphstyle);
            // $section->addText("S3\t: $pelatihan->jumlah_pendidikan_peserta_s3", $fontstyle, $paragraphstyle);

            // $section->addTitle("F. Widyaisuara/Tenaga Pengajar", 2);
            // $section->addText("Jumlah, asal daerah, dan jenjang akademik Widyaiswara/Tenaga Pengajar $pelatihan->nama_kegiatan bagi $pelatihan->tempat Tahun $pelatihan->tahun ini adalah adalah sebagai berikut :", $fontstyle, $paragraphstyle);
            // $section->addText("Jumlah dan Asal Widyaiswara/Tenaga Pengajar", $fontstyle, $paragraphstyle);
            // $section->addText("Widyaiswara/Tenaga Pengajar berjumlah $pelatihan->jumlah_wi_pengajar orang, yakni :", $fontstyle, $paragraphstyle);
            
            // $style = generate_list_style($phpword, 'decimal');
            
            // $section->addListItem("{$pelatihan->wi_1->nama} Berasal dari berasal dari {$pelatihan->wi_1->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("{$pelatihan->wi_2->nama} Berasal dari berasal dari {$pelatihan->wi_2->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("{$pelatihan->wi_3->nama} berasal {$pelatihan->wi_3->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            
            // $section->addText("Widyaiswara/Tenaga Pengajar berjumlah 2 orang, yakni :", $fontstyle, $paragraphstyle);
            
            // $style = generate_list_style($phpword, 'decimal');
            
            // $section->addListItem("{$pelatihan->pengajar_1->nama} {$pelatihan->pengajar_1->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("{$pelatihan->pengajar_2->nama} {$pelatihan->pengajar_2->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("{$pelatihan->pengajar_3->nama} {$pelatihan->pengajar_3->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            // $section->addTitle("G. Jenjang Akademik/Kualifikasi Widyaiswara/Tenaga Pengajar", 2);
            // $section->addText("Jenjang akademik/kualifikasi pendidikan Widyaiswara/Tenaga Pengajar pada Diklat ini adalah:", $fontstyle, $paragraphstyle);

            // $section->addText("Setara D2/D3\t: $pelatihan->jumlah_pendidikan_wi_d2 orang", $fontstyle, $paragraphstyle);
            // $section->addText("S1\t: $pelatihan->jumlah_pendidikan_wi_s1 orang", $fontstyle, $paragraphstyle);
            // $section->addText("S2\t: $pelatihan->jumlah_pendidikan_wi_s2 orang", $fontstyle, $paragraphstyle);
            // $section->addText("S3\t: $pelatihan->jumlah_pendidikan_wi_s3 orang", $fontstyle, $paragraphstyle);
            
            // $section->addTitle("H. Evaluasi", 2);
            // $section->addText("Evaluasi dilakukan terhadap penyelenggara, widyaiswara/Tenaga Pengajar, dan peserta sebagai berikut :", $fontstyle, $paragraphstyle);
            // $section->addText("Hasil Evaluasi Terhadap Penyelenggara (terlampir)", $fontstyle, $paragraphstyle);
            
            // $section->addTitle("I. Hasil Evaluasi Terhadap Widyaiswara/Tenaga Pengajar (terlampir)", 2);
            // $section->addText("Hasil Rekapitulasi Nilai Peserta (terlampir)", $fontstyle, $paragraphstyle);
            
            // $section->addTitle("J. Penyelenggaraan", 2);
            // $section->addText("Pelatihan Jarak Jauh Intensif ini dirancang untuk memberikan pengalaman belajar yang fleksibel dan efektif bagi peserta dari berbagai wilayah. Pelatihan akan berlangsung selama $durasi hari hari dengan kombinasi kegiatan mandiri melalui LMS dan sesi live melalui Zoom.", $fontstyle, $paragraphstyle);
            // $section->addText("Pelatihan ini menggabungkan penggunaan Learning Management System (LMS) https://pjj.kemenag.go.id/ sebagai platform utama pembelajaran dengan aplikasi konferensi video Zoom untuk sesi interaktif secara langsung.", $fontstyle, $paragraphstyle);
            // $section->addText("Platform ini akan menjadi pusat kegiatan belajar peserta. Di sini, peserta akan menemukan:", $fontstyle, $paragraphstyle);
            // $section->addText("Materi Pelatihan berupa modul-modul pembelajaran, presentasi, dan sumber daya lainnya yang disusun secara sistematis.", $fontstyle, $paragraphstyle);
            // $section->addText("Latihan-latihan untuk mengukur pemahaman peserta terhadap materi.", $fontstyle, $paragraphstyle);
            // $section->addText("Forum Diskusi yaitu ruang interaksi bagi peserta untuk berdiskusi, bertukar pikiran, dan bertanya kepada instruktur.", $fontstyle, $paragraphstyle);
            // $section->addText("Pengumpulan tugas yaitu fasilitas untuk mengumpulkan tugas-tugas yang telah diselesaikan.", $fontstyle, $paragraphstyle);
            
            // $section->addTitle("K. Zoom", 2);
            // $section->addText("Sesi live yaitu rtemuan secara langsung dengan instruktur untuk menyampaikan materi, menjawab pertanyaan, dan melakukan diskusi lebih mendalam. Workshop berupa kegiatan praktik langsung dengan bimbingan instruktur. Presentasi peserta merupakan kesempatan bagi peserta untuk mempresentasikan hasil kerja mereka.", $fontstyle, $paragraphstyle);
            
            // $section->addTitle("L. Keuangan", 2);
            
            // $style = generate_list_style($phpword, 'decimal');
            
            // $section->addListItem("Rencana", 0, $fontstyle, $style);
            // $section->addText("Rencana keuangan yang digunakan dari DIPA LDK Pekanbaru No-DIPA 025.11.2.690527/2024 tanggal 30 November 2023 sebesar Rp. $pelatihan->rab,- (terlampir).", $fontstyle, $paragraphstyle);
            // $section->addListItem("Realisasi", 0, $fontstyle, $style);
            // $section->addText("Realisasi keuangan yang digunakan dari DIPA LDK Pekanbaru No-  DIPA 025.11.2. 690527/2024 tanggal 30 November 2023 sebesar Rp. $pelatihan->realisasi.- (terlampir).", $fontstyle, $paragraphstyle);
            
            // $section->addTitle("M. Penjaminan Mutu", 2);
            // $section->addText("Dalam rangka penjaminan mutu dilakukan usaha pembelajaran yang paling sedikit 5 JP perhari dan paling banyak 8 JP per hari yang berupa tatap muka synchronous. Durasi PJJ paling sedikit 5 (lima) hari dan paling banyak 10 (sepuluh) hari sesuai kebutuhan pelatihan. Hal ini berdasarkan Petunjuk Teknis Pengelolaan Pelatihan Jarak Jauh (Distance Learning) yang dikeluarkan oleh Badan Litbang dan Diklat Kementerian Agama Republik Indonesia.", $fontstyle, $paragraphstyle);
            
            // $section->addTitle("N. Lain-Lain", 2);
            // $section->addText("Pembukaan", $fontstyle, $paragraphstyle);
            // $section->addText("Pembukaan dilaksanakan pada hari\t: " . $data['tanggal_mulai'], $fontstyle, $paragraphstyle);
            // $section->addText("Waktu Pembukaan\t: pukul $pelatihan->waktu_pembukaan WIB", $fontstyle, $paragraphstyle);
            // $section->addText("Pejabat yang membuka\t:", $fontstyle, $paragraphstyle);
            // $section->addText("Nama\t: {$pelatihan->pejabat_pembuka->nama}", $fontstyle, $paragraphstyle);
            // $section->addText("Jabatan\t: {$pelatihan->pejabat_pembuka->jabatan}", $fontstyle, $paragraphstyle);
            
            // $section->addText("Penutupan", $fontstyle, $paragraphstyle);
            // $section->addText("Penutupan dilaksanakan pada hari\t: " . $data['tanggal_selesai'], $fontstyle, $paragraphstyle);
            // $section->addText("Waktu Penutupan\t: pukul $pelatihan->waktu_penutupan WIB", $fontstyle, $paragraphstyle);
            // $section->addText("Pejabat yang menutup\t:", $fontstyle, $paragraphstyle);
            // $section->addText("Nama\t: {$pelatihan->pejabat_pembuka->nama}", $fontstyle, $paragraphstyle);
            // $section->addText("Jabatan\t: {$pelatihan->pejabat_pembuka->jabatan}", $fontstyle, $paragraphstyle);

            // $section->addTitle("O. Pemberian Surat Keterangan Diklat", 2);
            // $section->addText("Surat Tanda Tamat Pendidikan dan Pelatihan (STTPP) yang diberikan adalah:", $fontstyle, $paragraphstyle);
            // $section->addText("Jenis Surat\t:Sertifikat", $fontstyle, $paragraphstyle);
            // $section->addText("Pemberian Surat\t:Setelah PJJ Ditutup", $fontstyle, $paragraphstyle);

            //BAB III
            $section->addPageBreak();
            $section->addTitle("BAB III", 1);
            $section->addTitle("PENUTUP", 1);
            $section->addText("Dengan berakhirnya pelatihan ini, diharapkan peserta dapat menerapkan ilmu yang telah diperoleh dalam pekerjaan mereka sehari-hari. Kami mengucapkan terima kasih kepada seluruh pihak yang telah berkontribusi dalam pelaksanaan pelatihan ini, termasuk para peserta, narasumber, panitia, dan semua yang terlibat", $fontstyle, $paragraphstyle);
            $section->addTextBreak(1); // Adds 1 line break
            $section->addText("Semoga ilmu dan pengalaman yang didapatkan dalam pelatihan ini dapat bermanfaat serta memberikan dampak positif dalam peningkatan kompetensi dan profesionalisme. Kami berharap kegiatan serupa dapat terus diadakan untuk mendukung pengembangan sumber daya manusia yang lebih baik. Segala bentuk pesan dan kritikan akan laporan pelaksanaan akan sangat dibutuhkan untuk koreksi agar kegiatan berikutnya menjadi lebih baik lagi.", $fontstyle, $paragraphstyle);
            $section->addTextBreak(2); // Adds 1 line break

            // $section->addTitle("B. Saran", 2);
            // $section->addText("$pelatihan->nama_kegiatan bagi $pelatihan->tempat Tahun $pelatihan->tahun, disarankan sebagai berikut : Menambahkan sesi praktik langsung atau workshop yang memungkinkan peserta untuk mengaplikasikan materi secara langsung.", $fontstyle, $paragraphstyle);
            // $section->addText("Diharapkan Widyaiswara/Tenaga pengajar menambahkan modul tambahan atau referensi untuk topik-topik yang memerlukan pemahaman lebih mendalam.", $fontstyle, $paragraphstyle);
            // $section->addText("Diharapkan kepada panitia agar terus dapat meningkatkan pelayanan, sehingga dicapai tingkat pelayanan yang prima. Disamping itu, panitia diharapkan panduan atau pelatihan singkat tentang penggunaan teknologi yang akan digunakan selama pelatihan.", $fontstyle, $paragraphstyle);
            // $section->addText("Diharapkan kepada Widyaiswara/Tenaga Pengajar, Pengelola serta penyelenggara pelatihan agar melakukan evaluasi rutin terhadap pelatihan untuk mengidentifikasi area perbaikan dan memastikan bahwa pelatihan tetap relevan dengan kebutuhan peserta.", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Ketua', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addTextBreak(3);
            $section->addText("{$pelatihan->ketua_panitia->nama}", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText("NIP. {$pelatihan->ketua_panitia->NIP}", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);

            // Kata Pengantar
            $section->addPageBreak();
            $section->addTitle("KATA PENGANTAR", 1);
            $section->addText("Puji dan syukur kita panjatkan kehadirat Tuhan Yang Maha Esa, karena berkat rahmat serta karunia-Nya Term Of References (TOR) pelaksanaan kegiatan $pelatihan->nama_kegiatan ini dapat disusun.", $fontstyle, $paragraphstyle);
            $section->addText("TOR pelatihan ini memuat latar belakang, dasar hukum, maksud dan tujuan, kepesertaan, metode pelaksanaan kegiatan, waktu dan tempat pelaksanaan, serta biaya kegiatan. TOR ini diharapkan dapat menjadi acuan tata kelola pelatihan dari tahap persiapan hingga pelaporan.", $fontstyle, $paragraphstyle);
            $section->addText("Akhir kata, kritik dan saran yang bersifat membangun sangat diharapkan dalam upaya pengembangan TOR ini guna peningkatan dan perbaikan kualitas pelatihan di Loka Diklat Keagamaan Pekanbaru dimasa yang akan datang", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Kepala Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addTextBreak(3);
            $section->addText("$ketua_loka->nama", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText("NIP. $ketua_loka->NIP", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);

            //Term of References
            $section->addPageBreak();
            $section->addTitle("TERM OF REFERENCES", 1);
            $section->addTitle("$pelatihan->nama_kegiatan", 1);
            $section->addTitle("A. Latar Belakang", 2);
            $section->addText("Peraturan Menteri Agama RI Nomor 15 Tahun 2021 Tentang Organisasi dan Tata Kerja Unit Pelaksana Teknis Pendidikan dan Pelatihan Keagamaan terkait penyelenggaraan Pendidikan dan Pelatihan Pegawai Negeri Sipil di lingkungan Kantor Kementerian Agama bahwa UPT Pendidikan dan Pelatihan Keagamaan mempunyai tugas melaksanakan pendidikan dan pelatihan tenaga administrasi dan tenaga teknis pendidikan dan keagamaan kepada ASN Kementerian Agama di wilayah kerja masing-masing dengan berpedoman kepada kebijakan Kepala Badan Litbang dan pelatihan Kementerian Agama.", $fontstyle, $paragraphstyle);
            $section->addText("Pelatihan di Wilayah Kerja (PDWK) adalah pelatihan yang dilaksanakan di luar kampus pada wilayah kerja Pusdiklat dan Balai Diklat Keagamaan, berdasarkan pertimbangan kebutuhan dan tujuan mengembangkan kompetensi teknis substantif peserta pelatihan di wilayah tersebut. Pelaksanaan PDWK pada Pusdiklat berbasis provinsi atau gabungan provinsi. Pelaksanaan PDWK pada Balai Diklat Keagamaan berbasis kabupaten/kota atau gabungan kabupaten/kota.", $fontstyle, $paragraphstyle);
            $section->addText("Berdasarkan hasil Analisis Kebutuhan Pelatihan (AKP) Loka Pelatihan Keagamaan Pekanbaru tahun 2023, jenis pelatihan yang perlu dilaksanakan adalah $pelatihan->nama_kegiatan. Berdasarkan realita tersebut, Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru memandang perlu melaksanakan $pelatihan->nama_kegiatan di Wilayah Kerja Kantor Kementerian Agama $pelatihan->kab_kota", $fontstyle, $paragraphstyle);

            $section->addTitle("B. Dasar Hukum", 2);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Undang-Undang Nomor 20 Tahun 2023 tentang Aparatur Sipil Negara;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Pemerintah Republik Indonesia Nomor 17 Tahun 2020 Tentang Perubahan Atas Peraturan Pemerintah Nomor 11 Tahun 2017 Tentang Manajemen Pegawai Negeri Sipil;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Presiden Nomor 12 Tahun 2023 tentang Kementerian Agama (Lembaran Negara Republik Indonesia Tahun 2023 Nomor 21);", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Pendayagunaan Aparatur Negara Nomor PER/18/M.PAN/II/2003 tentang Pedoman Organisasi Unit Pelaksana Teknis Kementerian dan Lembaga Pemerintahan Nonkementerian;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama Nomor 59 Tahun 2015 tentang Organisasi Tata Kerja Balai Diklat dan Pelatihan Keagamaan;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama RI Nomor  42 Tahun 2016 tentang Organisasi dan Tata Kerja Kementerian Agama;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama Nomor 15 Tahun 2021 tentang Organisasi Dan Tata Kerja Unit Pelaksana Teknis Pendidikan Dan Pelatihan Keagamaan;", 0, $fontstyle, $style);
            $section->addListItem("DIPA Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru Tahun 2025 Nomor : SP-DIPA/025.11.2.690527/2025 Tanggal 02 Desember 2024.", 0, $fontstyle, $style);

            $section->addTitle("C. Nama Pelatihan", 2);
            $section->addText("Sesuai dengan kurikulum yang berlaku pelatihan ini bernama $pelatihan->nama_kegiatan di $pelatihan->tempat.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("D. Tujuan Pelatihan", 2);
            $section->addText("Pelatihan ini bertujuan:", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            if (!empty($pelatihan->materi)) {
                foreach ($pelatihan->materi as $materi) {
                    if (!empty($materi->parsed_tujuan)) {
                        foreach ($materi->parsed_tujuan as $item) {
                            $section->addListItem($item['judul'], 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
                            if (!empty($item['deskripsi'])) {
                                $section->addText($item['deskripsi'], $fontstyle, $paragraphstyle2);
                            }
                        }
                    }
                }
            }

            // $section->addListItem("Peningkatan Pemahaman Tentang Zakat", 0, $fontstyle, $style);
            // $section->addText("Memahami konsep dasar zakat, jenis-jenis zakat (zakat mal dan zakat fitrah), dan dalil-dalil syariah yang mendasarinya.", $fontstyle, $paragraphstyle);
            // $section->addListItem("Pengelolaan Dana Zakat yang Efektif", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Membekali peserta dengan keterampilan teknis untuk mengelola dana zakat, mulai dari pengumpulan, pendistribusian, hingga pelaporan.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Peningkatan Kapasitas Lembaga Pengelola Zakat (LPZ)", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Memperkuat manajemen lembaga zakat agar lebih profesional, transparan, dan akuntabel.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Strategi Pengumpulan Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Mengajarkan teknik penggalangan dana zakat yang inovatif dan berbasis teknologi untuk menjangkau lebih banyak muzakki (pemberi zakat).", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Distribusi Zakat yang Tepat Sasaran", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Memberikan wawasan mengenai metode pendistribusian zakat yang adil, tepat sasaran, dan berdampak besar bagi mustahik (penerima zakat).", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Peningkatan Kesejahteraan Umat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Menanamkan nilai-nilai bahwa zakat adalah instrumen pemberdayaan ekonomi umat, bukan sekadar kewajiban agama.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Kepatuhan Syariah", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Menjamin bahwa pengelolaan zakat dilakukan sesuai dengan kaidah syariah dan hukum positif yang berlaku, seperti Undang-Undang Pengelolaan Zakat.", $fontstyle, $paragraphstyle2);

            $section->addTitle("E. Peserta Pelatihan", 2);
            $section->addText("Peserta pelatihan ini berjumlah $pelatihan->jumlah_peserta orang yang terdiri dari $pelatihan->jabatan_peserta yang belum pernah mengikuti pelatihan sejenis dan diberi tugas oleh pejabat berwenang untuk mengikuti pelatihan tersebut.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("F. Pelaksanaan Kegiatan", 2);
            $section->addText("Prinsip pelaksanaan Pelatihan adalah pembelajaran bagi orang dewasa (andragogi). Sesuai sasaran capaian kompetensi yang harus diperoleh para Pegawai ASN Kementerian Agama, maka pemilihan metode pengajaran harus disesuaikan dengan karakteristik peserta pelatihan dan aktualisasi kegiatan yang dilaksanakan di lapangan. Untuk itu, metodologi yang memungkinkan untuk dilaksanakan sebagai berikut :", $fontstyle, $paragraphstyle);
           
            $style = generate_list_style($phpword, 'bullet');

            $section->addListItem("Tanya jawab", 0, $fontstyle, $style);
            $section->addListItem("Pemberian tugas", 0, $fontstyle, $style);
            $section->addListItem("Upload video / bahan tayang / bahan ajar", 0, $fontstyle, $style);
            $section->addListItem("Eksplorasi pengalaman peserta", 0, $fontstyle, $style);
            $section->addListItem("Ekplorasi kebutuhan peserta", 0, $fontstyle, $style);
            $section->addListItem("Ceramah", 0, $fontstyle, $style);
            $section->addListItem("Latihan", 0, $fontstyle, $style);
            $section->addListItem("Studi kasus", 0, $fontstyle, $style);
            $section->addListItem("Demonstrasi", 0, $fontstyle, $style);
            $section->addListItem("Diskusi", 0, $fontstyle, $style);

            // $section->addTitle("G. Tahap Pelaksanaan Pelatihan", 2);
            // $section->addText("Peserta diberikan username dan password Learning Management System (LMS).", $fontstyle, $paragraphstyle);
            // $section->addText("Pelaksanaan pelatihan dilaksanakan melalui pembelajaran tatap muka synchronous (video conference, live chat, live diskusi dan kuis) dan asynchronous (belajar mandiri).", $fontstyle, $paragraphstyle);
            // $section->addText("Kegiatan pelatihan meliputi Pembukaan, Membangun Komitmen Belajar (Building Learning Commitment (BLC)), pelaksanaan pembelajaran synchronous dan asynchronous, pengembalian peserta yang tidak berhak melanjutkan pelatihan dan Penutupan.", $fontstyle, $paragraphstyle);
            // $section->addText("Tahap Purna Pelatihan", $fontstyle, $paragraphstyle);
            // $section->addText("Penyampaian Surat Pengembalian Peserta yang telah selesai melakukan kegiatan. Memberikan fasilitas bagi alumni pelatihan berupa media untuk berdiskusi.", $fontstyle, $paragraphstyle);

            $section->addTitle("G. Tempat dan Waktu Pelaksanaan", 2);
            $section->addText("Pelatihan ini dilaksanakan di $pelatihan->tempat " . $data['tanggal_mulai'] . " s.d " . $data['tanggal_selesai'] . " dengan jumlah $materi->jumlah_jp Jam Pelajaran(JP).", $fontstyle, $paragraphstyle);
            
            $section->addTitle("I. Panitia dan Tenaga Pengajar", 2);
            $section->addText("Penyelenggara pelatihan ini adalah Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru , dengan susunan panitia sebagai berikut : ", $fontstyle, $paragraphstyle);
            $section->addText("Penanggung Jawab\t: {$pelatihan->penanggung_jawab->nama}");
            $section->addText("Ketua Panitia\t: {$pelatihan->ketua_panitia->nama}");
            $section->addText("Bidang Akademis\t: {$pelatihan->akademis->nama}");
            $section->addText("Bidang Administrasi\t: {$pelatihan->administrasi->nama}");
            $section->addText("Bidang Kuangan\t: {$pelatihan->keuangan->nama}");
            $section->addText("Widyaisuara\t: 1. {$pelatihan->wi_1->nama}");
            $section->addText("\t: 2. {$pelatihan->wi_2->nama}");
            $section->addText("\t: 3. {$pelatihan->wi_3->nama}");
            $section->addText("Tenaga Pengajar\t: 1. {$pelatihan->pengajar_1->nama}");
            $section->addText("\t: 2. {$pelatihan->pengajar_2->nama}");
            $section->addText("\t: 3. {$pelatihan->pengajar_3->nama}");

            $section->addText("Tenaga pengajar dalam pelatihan ini berjumlah orang dengan persyaratan:", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Widyaiswara;", 0, [], $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("Pejabat Struktural Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru;", 0, [], $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("Pejabat Struktural dari Kementerian Agama;", 0, [], $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("Mampu mengisi waktu yang diberikan oleh panitia dengan kegiatan pembelajaran dengan materi yang sesuai ditetapkan dalam jadwal;", 0, [], $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("Mempersiapkan bahan yang dibutuhkan untuk setiap rincian kegiatan yang dipersyaratkan panitia;", 0, [], $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            $section->addTitle("J. Materi Pelatihan", 2);
            $section->addText("Materi pelatihan ini terlampir sesuai dengan Kurikulum dan Silabus Pelatihan.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("K. Jadwal Tentatif", 2);
            $section->addText("Jadwal tentatif pelatihan ini terlampir.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("L. Pembiayaan", 2);
            $section->addText("Pembiayaan Pelatihan ini dibebankan kepada DIPA Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru Tahun 2025 Nomor : SP-DIPA/025.11.2.690527/2025 Tanggal 02 Desember 2024.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("M. Penutup", 2);
            $section->addText("Demikian Term of reference (TOR) ini dibuat dengan harapan dapat menjadi pedoman pelaksanaan pelatihan ini.", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Kepala Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addTextBreak(3);
            $section->addText("$ketua_loka->nama", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText("NIP. $ketua_loka->NIP", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);

            //Berita Acara
            $section->addPageBreak();
            $section->addText("BERITA ACARA", ['bold' => true], ['alignment' => Jc::CENTER]);
            $section->addText("Evaluasi Kelulusan Peserta", ['bold' => true], ['alignment' => Jc::CENTER]);
            $section->addText("Pelatihan $pelatihan->nama_pelatihan", ['bold' => true], ['alignment' => Jc::CENTER]);
            $section->addText("Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru", ['bold' => true], ['alignment' => Jc::CENTER]);
            $section->addText("Tahun 2024", ['bold' => true], ['alignment' => Jc::CENTER]);

            $section->addText("Pada hari ini " . $data['tanggal_selesai'] . " pukul 13.30 s.d 14.00 WIB bertempat di $pelatihan->tempat serta Widyaiswara secara dalam jaringan telah diadakan Rapat Evaluasi Kelulusan Peserta $pelatihan->nama_pelatihan yang diselenggarakan dari tanggal  " . $data['tanggal_mulai'] . " s.d " . $data['tanggal_selesai'] . ".", $fontstyle, $paragraphstyle);
            $section->addText("Berdasarkan Rapat Evaluasi Kelulusan maka hasil akhir nilai peserta pelatihan adalah dari 30 orang, peserta dinyatakan lulus sebanyak 22 orang dan tidak lulus 8 orang dengan rekapitulasi kualifikasi nilai peserta sebagaimana terlampir.", $fontstyle, $paragraphstyle);
            $section->addText("Demikian berita acara ini dibuat sebagaimana mestinya.", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Diterima Kepala LDK Pekanbaru', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addTextBreak(3);
            $section->addText("{$pelatihan->ketua_panitia->nama}", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText("NIP. {$pelatihan->ketua_panitia->NIP}", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);

            //Buku Panduan//
            // Kata Pengantar
            $section->addPageBreak();
            $section = $phpword->addSection();
            $section->addTitle("KATA PENGANTAR");
            $section->addText("Puji syukur kita ucapkan kepada Allah Subhanahu wa ta’ala, yang senantiasa melimpahkan rahmat dan nikmat serta inayah-Nya kepada kita. Atas  rahmat dan petunjuk-Nya Panduan Penyelenggaraan $pelatihan->nama_kegiatan telah selesai disusun. Panduan Pelatihan ini disusun dalam 5 bab. Dalam panduan ini dikemukakan juga perihal ketentuan-ketentuan yang harus dilaksanakan oleh penyelenggara dan peserta berdasarkan Desain Program Penyelenggaraan Pelatihan dari $materi->asal_kursil", $fontstyle, $paragraphstyle);
            $section->addText("Panduan ini disusun sebagai acuan bagi panitia, peserta, narasumber dan semua pihak yang terlibat dalam pelaksanaan pelatihan ini, dengan harapan terjadinya sinergi dan hubungan yang harmonis antara peserta dengan peserta dan antara peserta dengan panitia dan penceramah/narasumber, sehingga pelaksanaan pelatihan ini dapat berjalan sesuai dengan yang diharapkan.", $fontstyle, $paragraphstyle);
            $section->addText("Apabila ada hal penting dalam proses pelaksanaan pelatihan yang belum  tercantum dalam panduan ini, akan diatur kemudian.", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Kepala Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addTextBreak(3);
            $section->addText('H. Aprianto, S.Ag., M.A.', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);

            // Daftar Isi
            $section->addPageBreak();
            $section->addTitle("DAFTAR ISI");

            // BAB I
            $section->addPageBreak();
            $section->setStyle([
                'tabs' => [
                    new Tab('left', 3000),
                    new Tab('left', 3500)
                    ]
            ]);
            $section->addTitle("BAB I", 1);
            $section->addTitle("PENDAHULUAN", 1);
            $section->addTitle("A. Latar Belakang", 2);
            $section->addText("Peraturan Menteri Agama (PMA) Nomor 19 Tahun 2020 tentang Penyelenggaraan Pelatihan Sumber Daya Manusia pada Kementerian Agama menyatakan bahwa untuk mewujudkan Sumber Daya Manusia pada Kementerian Agama yang memiliki integritas, profesionalitas, inovasi, tanggung jawab dan keteladanan perlu diselenggarakan pelatihan secara terencana dan berjenjang.", $fontstyle, $paragraphstyle);
            $section->addText("Selanjutnya berdasarkan Pasal 2 PMA, penyelenggaraan pelatihan sumber daya manusia bertujuan mengembangkan kompetensi sumber daya manusia meliputi pengetahuan, keterampilan, dan sikap/perilaku", $fontstyle, $paragraphstyle);
            $section->addText("Salah satu kegiatan pelatihan yang menjadi agenda tahun 2025 Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru adalah $pelatihan->nama_pelatihan Pelaksanaan pelatihan mempunyai tiga unsur pokok yang saling melengkapi yaitu peserta, narasumber dan panitia pelaksana. Selama pelaksanaan pelatihan berlangsung ketiga unsur tersebut diharapkan melakukan kegiatan sesuai dengan tugas masing-masing secara terkoordinasi sehingga kelancaran pelaksanaan dan pencapaian tujuan pelatihan dapat terwujud. Panduan dan tata tertib ini diharapkan dapat memperlancar komunikasi dan interaksi antar semua pihak dalam pelaksanaan pelatihan.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("B. Dasar Hukum Penyelenggaraan", 2);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Undang-undang Nomor 1 Tahun 2004 tentang Perbendaharaan Negara, Menteri Keuangan berwenang menetapkan sistem akuntansi dan pelaporan keuangan;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Pemerintah Nomor 8 Tahun 2006 tentang Pelaporan Keuangan dan Kinerja Instansi Pemerintah (Lembaran Negara Republik Indonesia Tahun 2006 Nomor 25, Tambahan Lembaran Negara Republik Indonesia Nomor 4614);", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Pemerintah Nomor 39 Tahun 2006 tentang Tata Cara Pengendalian dan Evaluasi Pelaksanaan Rencana Pembangunan (Lembaran Negara Republik Indonesia Tahun 2006 Nomor 96, Tambahan Lembaran Negara Republik Indonesia Nomor 4663);", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Pemerintah Nomor 40 Tahun 2006 tentang Tata Cara Penyusunan Rencana Pembangunan Nasional (Lembaran Negara Republik Indonesia Tahun 2006 Nomor 97, Tambahan Lembaran Negara Republik Indonesia Nomor 4664);", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Presiden Nomor 29 Tahun 2014 tentang Sistem Akuntabilitas Kinerja Instansi Pemerintah;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Negara PAN dan RB Nomor 25 Tahun 2012 tentang Petunjuk Pelaksanaan Evaluasi Akuntabilitas Kinerja Instansi Pemerintah;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Negara PAN dan RB Nomor 53 Tahun 2014 tentang Petunjuk Teknis Perjanjian Kinerja, Pelaporan Kinerja dan Tata Cara Reviu Atas Laporan Kinerja Instansi Pemerintah;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Negara PAN dan RB Nomor 12 Tahun 2015 tentang Pedoman Evaluasi atas Implementasi Sistem Akuntabilitas Kinerja Instansi Pemerintah;", 0, $fontstyle, $style);
            $section->addListItem("Keputusan Menteri Agama Nomor 94 tentang Pedoman Perjanjian Kinerja, Pelaporan Kinerja dan Tata Cara Reviu atas Laporan Kinerja Kementerian Agama;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Lembaga Administrasi Negara Nomor 10 Tahun 2018 tentang Pengembangan Kompetensi Pegawai Negeri Sipil;", 0, $fontstyle, $style);
            $section->addListItem("Surat Keputusan Kepala Badan Litbang dan Diklat Kementerian Agama RI. Nomor 67 tahun 2021 tentang Petunjuk Pelaksanaan Penyelenggaraan Pelatihan Pada Badan Penelitian Dan Pengembangan Dan Pendidikan Dan Pelatihan Kementerian Agama;", 0, $fontstyle, $style);
            $section->addListItem("DIPA Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru Tahun 2025 Nomor : SP-DIPA/025.11.2.690527/2025 Tanggal 02 Desember 2024;", 0, $fontstyle, $style);

            $section->addTitle("C. Tujuan, Sasaran dan Kompetensi Pelatihan", 2);
            
            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Tujuan;", 0, $fontstyle, $style);
            $section->addText("$pelatihan->nama_kegiatan bertujuan dan berupaya Membekali Pegawai dan meningkatkan kualitas pegawai di Lingkungan Kantor KementerianAgama sehingga terpenuhi standar kompetensi yang diperlukan dalam pelaksanaan tugas-tugas kedinasan.", $fontstyle, $paragraphstyle);

            $section->addListItem("Sasaran", 0, $fontstyle, $style);

            $style = 'alphaList';

            $section->addListItem("Terwujudnya $pelatihan->jumlah_peserta peserta $pelatihan->nama_pelatihan dalam memenuhi kecakapan untuk mengelola dan mengembangkan penilaian Kinerja ASN", 0, $fontstyle, $style);
            $section->addListItem("Terwujudnya peserta $pelatihan->nama_pelatihan yang memiliki komptensi dalam melaksanakan tugas dan fungsinya sebagaimana dipersyaratkan dalam jabatannya dan yang memiliki integritas yang tinggi untuk meningkatkan kemampuannya.", 0, $fontstyle, $style);

            $section->addListItem("Kompetensi Pelatihan", 0, $fontstyle, $style);
            $section->addText("Setelah mengikuti $pelatihan->nama_pelatihan peserta mampu $materi->tujuan_pelatihan", $fontstyle, $paragraphstyle);

            // BAB II
            $section->addPageBreak();
            $section->addTitle("BAB II", 1);
            $section->addTitle("PELAKSANAAN DIKLAT", 1);
            $section->addTitle("A. Waktu, Tempat Pelaksanaan dan Tutorial Pelatihan (Non Klasikal)", 2);
            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Waktu Pelaksanaan", 0, $fontstyle, $style);
            $section->addText("Pelaksanaan Kegiatan $pelatihan->nama_pelatihan di Wilayah Kerja Kantor Kementerian Agama $pelatihan->kab_kota dilaksanakan pada tanggal" . $data['tanggal_mulai'] . " s.d " . $data['tanggal_selesai'] . ".", $fontstyle, $paragraphstyle);
            
            $section->addListItem("Tempat Pelaksanaan", 0, $fontstyle, $style);
            $section->addText("Kegiatan dilaksanakan di $pelatihan->tempat", $fontstyle, $paragraphstyle);
            
            $section->addListItem("Alamat dan Akun resmi :", 0, $fontstyle, $style);
            
            $style = 'alphaList';

            $section->addListItem("Penilaian terhadap Widyaiswara, Panitia dan peserta secara kuantitatif melalui simdiklat.kemenag.go.id", 0, $fontstyle, $style);
            $section->addListItem("Evaluasi Penyelenggaraan pelatihan melalui : simdiklat.kemenag.go.id", 0, $fontstyle, $style);
            
            $section->addTitle("B. Panitia Pelaksana", 2);

            // First level: decimal numbering (1., 2., 3.)
            $decimalStyle = generate_list_style($phpword, 'decimal');

            // Second level: alpha list (a., b., c.)
            $alphaStyle = 'alphaList';

            // Third level: bullet points
            $bulletStyle = generate_list_style($phpword, 'bullet');

            // 1. Kepanitiaan
            $section->addListItem("Kepanitiaan", 0, $fontstyle, $decimalStyle);
            $section->addText("Susunan Kepanitiaan dan tugas penyelenggara pelatihan meliputi :", $fontstyle, $paragraphstyle);

            // a. Penanggung jawab
            $section->addListItem("Penanggung jawab :", 0, $fontstyle, $alphaStyle);
            // Bullet points for responsibilities
            $section->addListItem("Mengarahkan Ketua Panitia", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Memantau Pelaksanaan Tugas panitia", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mempertanggung jawabkan Penyelenggaraan orientasi", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Menegakkan kedisiplinan panitia dan peserta", 1, $fontstyle, $bulletStyle);

            // b. Ketua
            $section->addListItem("Ketua :", 0, $fontstyle, $alphaStyle);
            // Bullet points for responsibilities
            $section->addListItem("Mengkoordinir persiapan, pelaksanaan sampai selesai", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Membuat / menyusun laporan penyelengaraan pelatihan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Berkoordinasi dengan pihak terkait", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Melaporkan kepada penanggung jawab", 1, $fontstyle, $bulletStyle);

            // c. akademik
            $section->addListItem("Akademik :", 0, $fontstyle, $alphaStyle);
            // Bullet points for responsibilities
            $section->addListItem("Mengkonfirmasi kehadiran peserta / Narasumber", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mengelola data SIMDIKLAT/LMS PJJ", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mengantar/memperkenalkan dan mendamping Narasumber", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Memberikan penilaian terhadap sikap dan perilaku peserta", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mengumpulkan bahan ajar dan produk", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Membuat dan mengedarkan daftar hadir peserta", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mengolah Nilai Peserta", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Menghimpun dan mengolah data hasil evaluasi peserta, narasumber dan panitia pelatihan", 1, $fontstyle, $bulletStyle);

            // d. Anggota 1
            $section->addListItem("Anggota 1 :", 0, $fontstyle, $alphaStyle);
            // Bullet points for responsibilities
            $section->addListItem("Membuat daftar hadir narasumber", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Membuat SPJ Keuangan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mengumpulkan surat tugas narasumber", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Menyusun laporan pertanggungjawaban keuangan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mempertanggungjawabkan SPJ ke bendahara", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Melakukan verifikasi kelengkapan persyaratan pada saat registrasi", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Menyiapkan sarana dan prasarana pembelajaran", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Membuat dokumentasi kegiatan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mendampingi peserta di dalam kelas", 1, $fontstyle, $bulletStyle);

            // e. Widyaiswara pendamping Akademis 
            $section->addListItem("Widyaiswara pendamping Akademis :", 0, $fontstyle, $alphaStyle);
            // Bullet points for responsibilities
            $section->addListItem("Menyusun rencana kegiatan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Menyusun jadwal berpedoman pada kurikulum", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mendampingi peserta mencari sumber-sumber pembelajaran pelatihan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Memberikan penilaian terhadap peserta melalui tes penugasan, maupun produk", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Membuat laporan pembelajaran", 1, $fontstyle, $bulletStyle);

            // Continue similarly for other roles (Akademik, Anggota 1, Widyaiswara)

            // 2. Hak dan Kewajiban Panitia
            $section->addListItem("Hak dan Kewajiban Panitia", 0, $fontstyle, $decimalStyle);
            // a. Hak Panitia
            $section->addListItem("Hak Panitia", 0, $fontstyle, $alphaStyle);
            // Bullet points for hak
            $section->addListItem("Mengusulkan penolakan peserta yang tidak sesuai dengan persyaratan, data dan alokasi", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Penginapan perjalanan dinas", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Penggantian biaya transportasi perjalanan dinas Pergi-Pulang", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Uang harian perjalanan dinas ", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Layanan kesehatan; obat-obatan ringan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Memperoleh uang harian dan transport at cost sesuai ketentuan yang berlaku", 1, $fontstyle, $bulletStyle);
            // Continue other hak items

            // b. Kewajiban Panitia
            $section->addListItem("Kewajiban Panitia", 0, $fontstyle, $alphaStyle);
            // Bullet points for kewajiban
            $section->addListItem("Menyiapkan sarana pelatihan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mengelola registrasi peserta", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mendampingi widyaiswara/fasilitator dan peserta selama pelatihan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Menilai sikap peserta", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Membuat spj keuangan", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Membuat laporan penyelenggaraan", 1, $fontstyle, $bulletStyle);
            // Continue other kewajiban items

            // 3. Fasilitas Pelatihan
            $section->addListItem("Fasilitas Pelatihan", 0, $fontstyle, $decimalStyle);
            // Bullet points for fasilitas
            $section->addListItem("Ruang pembelajaran yang representatif", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Alat bantu pembelajaran; LCD Proyektor, soundsystem dll", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Pelatihan kit", 1, $fontstyle, $bulletStyle);

            // C. Kualifikasi, Hak, Kewajiban dan Alokasi Peserta
            $section->addTitle("C. Kualifikasi, Hak, Kewajiban dan Alokasi Peserta", 2);

            // 1. Kualifikasi Peserta
            $section->addListItem("Kualifikasi Peserta", 0, $fontstyle, $decimalStyle);
            $section->addText("Persyaratan Umum :", $fontstyle, $paragraphstyle);

            // a. Persyaratan Umum
            $section->addListItem("Sehat jasmani dan rohani, dibuktikan dengan surat keterangan sehat dari dokter, puskesmas atau rumah sakit pemerintah", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Siap dan mampu mengikuti seluruh kegiatan pelatihan dari awal hingga akhir, dibuktikan surat pernyataan kesiapan/kesanggupan", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Kebijakan internal Loka Diklat Keagmaan Pekanbaru, peserta tidak diperkenankan mengikuti Pelatihan lebih dari satu kali untuk jenis yang sama dalam setahun yang diselenggarakan oleh Loka Diklat Keagamaan Pekanbaru", 0, $fontstyle, $alphaStyle);

            $section->addText("Persyaratan Khusus :", $fontstyle, $paragraphstyle);

            // a. Persyaratan Khusus
            $section->addListItem("Calon Peserta $pelatihan->nama_kegiatan adalah $pelatihan->jabatan_peserta di Wilayah kerja Kantor Kementerian Agama $pelatihan->kab_kota, Penetapan peserta pelatihan bersifat selektif dan merupakan penugasan dari instansi yang bersangkutan yang dibuktikan dengan surat tugas", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Menyerahkan print out Biodata dari aplikasi Simdiklat yang datanya telah direvisi", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Menyerahkan Surat Tugas dari Kantor Kementerian Agama Kabupaten/ Kota", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Menyerahkan foto copy SK terakhir, foto copy NPWP dan foto copy rekening buku tabungan yang masih aktif (disarankan BRI)", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Menyerahkan 2 lembar pas foto berlatar belakang merah ukuran 4 x 6", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Menyerahkan foto copy kartu ASKES/BPJS (bila ada)", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Membawa peralatan belajar yang dibutuhkan (Laptop, terminal kabel dll)", 0, $fontstyle, $alphaStyle);

            // 2. Hak Peserta
            $section->addListItem("Hak Peserta", 0, $fontstyle, $decimalStyle);
            // a. Hak Peserta
            $section->addListItem("Peserta berhak mendapatkan pelayanan dalam proses pendidikan dan pelatihan", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Peserta berhak mendapatkan konsumsi sesuai ketentuan yang berlaku", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Peserta memperoleh uang saku sesuai ketentuan yang berlaku", 0, $fontstyle, $alphaStyle);

            // 3. Kewajiban Peserta
            $section->addListItem("Kewajiban Peserta", 0, $fontstyle, $decimalStyle);
            // a. Kewajiban Peserta
            $section->addListItem("Setiap peserta wajib mentaati segala tata tertib, peraturan dan ketentuan yang dikeluarkan oleh panitia pelaksana", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Setiap peserta wajib mengikuti program pelatihan sesuai dengan jadwal yang ditentukan", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Setiap peserta wajib mengembangkan keilmuan/ketrampilan di tempat tugas", 0, $fontstyle, $alphaStyle);
            $section->addListItem("Pakaian peserta selama mengikuti pelatihan (baik tatap muka maupun daring) adalah baju atas berwarna putih, bawah berwarna hitam, peserta laki-laki mengenakan dasi", 0, $fontstyle, $alphaStyle);

            // 4. Alokasi Peserta Pelatihan
            $section->addListItem("Alokasi Peserta Pelatihan", 0, $fontstyle, $decimalStyle);
            $section->addText("Peserta berjumlah $pelatihan->jumlah_peserta orang berasal dari Wilayah Kerja Kantor Kementerian Agama $pelatihan->kab_kota, dialokasikan ke dalam ruangan yang representatif.", $fontstyle, $paragraphstyle);


            // $section->addListItem("Peningkatan Pemahaman Tentang Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Memahami konsep dasar zakat, jenis-jenis zakat (zakat mal dan zakat fitrah), dan dalil-dalil syariah yang mendasarinya.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Pengelolaan Dana Zakat yang Efektif", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Membekali peserta dengan keterampilan teknis untuk mengelola dana zakat, mulai dari pengumpulan, pendistribusian, hingga pelaporan.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Peningkatan Kapasitas Lembaga Pengelola Zakat (LPZ)", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Memperkuat manajemen lembaga zakat agar lebih profesional, transparan, dan akuntabel.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Strategi Pengumpulan Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Mengajarkan teknik penggalangan dana zakat yang inovatif dan berbasis teknologi untuk menjangkau lebih banyak muzakki (pemberi zakat).", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Distribusi Zakat yang Tepat Sasaran", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Memberikan wawasan mengenai metode pendistribusian zakat yang adil, tepat sasaran, dan berdampak besar bagi mustahik (penerima zakat).", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Peningkatan Kesejahteraan Umat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Menanamkan nilai-nilai bahwa zakat adalah instrumen pemberdayaan ekonomi umat, bukan sekadar kewajiban agama.", $fontstyle, $paragraphstyle2);
            // $section->addListItem("Kepatuhan Syariah", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addText("Menjamin bahwa pengelolaan zakat dilakukan sesuai dengan kaidah syariah dan hukum positif yang berlaku, seperti Undang-Undang Pengelolaan Zakat.", $fontstyle, $paragraphstyle2);

            //BAB III
            $section->addPageBreak();
            $section->addTitle("BAB III", 1);
            $section->addTitle("PENUTUP", 1);
            $section->addTitle("A. Struktur Program", 2);
            // Create a table with 2 columns
            $table = $section->addTable([
                'borderSize' => 6,
                'borderColor' => '000000',
                'cellMargin' => 50
            ]);

            // Add table headers
            $table->addRow();
            $table->addCell(1000)->addText('No', ['bold' => true], ['align' => 'center']);
            $table->addCell(8000)->addText('Mata Pelatihan', ['bold' => true], ['align' => 'left']);

            // Add Kelompok Dasar section
            $table->addRow();
            $table->addCell(1000)->addText('A.', ['bold' => true], ['align' => 'left']);
            $table->addCell(8000)->addText('Kelompok Dasar', ['bold' => true], ['align' => 'left']);

            if (!empty($pelatihan->materi)) {
                foreach ($pelatihan->materi as $materi) {
                    if (!empty($materi->kel_dasar_parsed)) {
                        $counter = 1;
                        foreach ($materi->kel_dasar_parsed as $item) {
                            $table->addRow();
                            $table->addCell(1000)->addText($counter.'.', [], ['align' => 'right']);
                            $table->addCell(8000)->addText($item);
                            $counter++;
                        }
                    } else {
                        $table->addRow();
                        $table->addCell(1000)->addText('');
                        $table->addCell(8000)->addText('Materi tidak tersedia');
                    }
                }
            } else {
                $table->addRow();
                $table->addCell(1000)->addText('');
                $table->addCell(8000)->addText('Tidak ada materi pelatihan');
            }

            // Add empty row for spacing
            $table->addRow();
            $table->addCell(1000)->addText('');
            $table->addCell(8000)->addText('');

            // Add Kelompok Inti section
            $table->addRow();
            $table->addCell(1000)->addText('B.', ['bold' => true], ['align' => 'left']);
            $table->addCell(8000)->addText('Kelompok Inti', ['bold' => true], ['align' => 'left']);

            if (!empty($pelatihan->materi)) {
                foreach ($pelatihan->materi as $materi) {
                    if (!empty($materi->kel_inti_parsed)) {
                        $counter = 1;
                        foreach ($materi->kel_inti_parsed as $item) {
                            $table->addRow();
                            $table->addCell(1000)->addText($counter.'.', [], ['align' => 'right']);
                            $table->addCell(8000)->addText($item);
                            $counter++;
                        }
                    } else {
                        $table->addRow();
                        $table->addCell(1000)->addText('');
                        $table->addCell(8000)->addText('Materi tidak tersedia');
                    }
                }
            } else {
                $table->addRow();
                $table->addCell(1000)->addText('');
                $table->addCell(8000)->addText('Tidak ada materi pelatihan');
            }

            // Add empty row for spacing
            $table->addRow();
            $table->addCell(1000)->addText('');
            $table->addCell(8000)->addText('');

            // Add Kelompok Penunjang section
            $table->addRow();
            $table->addCell(1000)->addText('C.', ['bold' => true], ['align' => 'left']);
            $table->addCell(8000)->addText('Kelompok Penunjang', ['bold' => true], ['align' => 'left']);

            if (!empty($pelatihan->materi)) {
                foreach ($pelatihan->materi as $materi) {
                    if (!empty($materi->kel_penunjang_parsed)) {
                        $counter = 1;
                        foreach ($materi->kel_penunjang_parsed as $item) {
                            $table->addRow();
                            $table->addCell(1000)->addText($counter.'.', [], ['align' => 'right']);
                            $table->addCell(8000)->addText($item);
                            $counter++;
                        }
                    } else {
                        $table->addRow();
                        $table->addCell(1000)->addText('');
                        $table->addCell(8000)->addText('Materi tidak tersedia');
                    }
                }
            } else {
                $table->addRow();
                $table->addCell(1000)->addText('');
                $table->addCell(8000)->addText('Tidak ada materi pelatihan');
            }

            

            $section->addTitle("B. Metode  Pelatihan dan Tenaga Pengajar", 2);
            // Define styles
            $alphaStyle = 'alphaList';
            $decimalStyle = generate_list_style($phpword, 'decimal'); // 1., 2., 3.
            $bulletStyle = generate_list_style($phpword, 'bullet'); // bullet points

            // A. Metode
            $section->addListItem("Metode", 0, $fontstyle, $alphaStyle);
            $section->addText("Prinsip pelaksanaan Pelatihan adalah pembelajaran bagi orang dewasa (andragogi). Sesuai sasaran capaian kompetensi yang harus diperoleh para Pegawai ASN Kementerian Agama, maka pemilihan metode pengajaran harus disesuaikan dengan karakteristik peserta pelatihan dan aktualisasi kegiatan yang dilaksanakan di lapangan. Untuk itu, metodologi yang memungkinkan untuk dilaksanakan sebagai berikut:", $fontstyle, $paragraphstyle);

            // Add bullet points for methods
            $section->addListItem("Tanya jawab", 0, $fontstyle, $bulletStyle);
            $section->addListItem("Pemberian tugas", 0, $fontstyle, $bulletStyle);
            $section->addListItem("Upload Video / bahan tayang / bahan ajar", 0, $fontstyle, $bulletStyle);
            $section->addListItem("Eksplorasi pengalaman peserta", 0, $fontstyle, $bulletStyle);
            $section->addListItem("Eksplorasi kebutuhan peserta", 0, $fontstyle, $bulletStyle);
            $section->addListItem("Ceramah", 0, $fontstyle, $bulletStyle);
            $section->addListItem("Latihan", 0, $fontstyle, $bulletStyle);
            $section->addListItem("Studi kasus", 0, $fontstyle, $bulletStyle);
            $section->addListItem("Demonstrasi", 0, $fontstyle, $bulletStyle);
            $section->addListItem("Diskusi", 0, $fontstyle, $bulletStyle);

            // B. Tenaga Pengajar 
            $section->addListItem("Tenaga Pengajar", 0, $fontstyle, $alphaStyle);
            $section->addText("Tenaga pengajar Pelatihan terdiri atas para Pejabat LDK Pekanbaru/Pejabat Kemenag/Widyaiswara/Widyaiswara luar biasa dan Tenaga Ahli atau Tenaga Profesional di bidang yang sesuai dengan kompetensinya, dengan ketentuan:", $fontstyle, $paragraphstyle);

            // Add decimal list for teacher requirements
            $section->addListItem("Memiliki pengetahuan tentang kurikulum dan menguasai materi yang akan diberikan;", 0, $fontstyle, $decimalStyle);
            $section->addListItem("Menguasai metodologi pengajaran yang tepat serta mampu menerapkan metode belajar bagi orang dewasa (andragogi), Mempunyai kredibilitas, dedikasi, dan reputasi yang baik.", 0, $fontstyle, $decimalStyle);
            $section->addListItem("Sehat jasmani dan rohani, cakap, serta memiliki etika dan kemampuan berkomunikasi yang baik.", 0, $fontstyle, $decimalStyle);
            $section->addListItem("Mampu memotivasi peserta Pelatihan.", 0, $fontstyle, $decimalStyle);

            // C. Kelulusan
            $section->addListItem("Kelulusan", 0, $fontstyle, $alphaStyle);

            // Add decimal list for graduation
            $section->addListItem("Kelulusan peserta pelatihan ditentukan dengan prosedur berikut:", 0, $fontstyle, $decimalStyle);

            // Add nested bullet points for graduation requirements
            $section->addListItem("Setiap peserta pelatihan dinyatakan LULUS dan berhak mendapatkan STTP jika memenuhi persyaratan:", 1, $fontstyle, $bulletStyle);
            $section->addListItem("Mengikuti seluruh kegiatan pelatihan dengan memenuhi syarat kehadiran > 85%.", 2, $fontstyle, $bulletStyle);
            $section->addListItem("Mendapatkan nilai sikap minimal kualifikasi 'BAIK'.", 2, $fontstyle, $bulletStyle);
            $section->addListItem("Memperoleh nilai hasil pelatihan (NHP) minimal 76,00.", 2, $fontstyle, $bulletStyle);

            $section->addListItem("Peserta pelatihan yang tidak memenuhi persyaratan sebagaimana disebutkan pada butir a, dinyatakan tidak lulus.", 0, $fontstyle, $decimalStyle);

            // D. Evaluasi Pelatihan
            $section->addListItem("Evaluasi Pelatihan", 0, $fontstyle, $alphaStyle);
            $section->addText("Evaluasi yang akan dilaksanakan pada kegiatan ini adalah sebagai berikut:", $fontstyle, $paragraphstyle);

            // Add decimal list for evaluation points
            $section->addListItem("Evaluasi terhadap peserta pelatihan, meliputi tiga ranah yaitu Pengetahuan, Keterampilan dan sikap perilaku.", 0, $fontstyle, $decimalStyle);
            $section->addListItem("Instrumen Evaluasi dalam ranah pengetahuan diimplementasikan melalui Pre test dan post test yang akan dilaksanakan secara online serta melalui penugasan penugasan dari widyaiswara;", 0, $fontstyle, $decimalStyle);
            $section->addListItem("Instrumen penilaian keterampilan adalah observasi proses dan observasi produk;", 0, $fontstyle, $decimalStyle);
            $section->addListItem("Instrumen penilaian sikap didapatkan dari observasi proses kegiatan oleh panitia pelaksana, yang indikatornya diturunkan dari Lima Nilai Kementerian Agama;", 0, $fontstyle, $decimalStyle);
            $section->addListItem("Nilai akhir peserta diperoleh dari penilaian sikap, pengetahuan, ketrampilan dan Rencana Tindak Lanjut;", 0, $fontstyle, $decimalStyle);
            $section->addListItem("Evaluasi Penyelenggaraan Pelatihan berupa penilaian terhadap WI dan panitia penyelenggara akan dilaksanakan melalui penilaian online di Simdiklat -Single Sign On (simdiklat-kemenag.id)", 0, $fontstyle, $decimalStyle);

            // E. Sertifikat Pelatihan
            $section->addListItem("Sertifikat Pelatihan", 0, $fontstyle, $alphaStyle);
            $section->addText("Peserta Pelatihan yang memenuhi syarat kelulusan menerima Sertifikat Kelulusan. Batas kelulusan untuk peserta pelatihan adalah 76. Peserta dinyatakan lulus dengan nilai kumulatif minimal 76 ( tujuh puluh enam) berdasarkan hasil evaluasi peserta pelatihan yang diatur dalam Standar Evaluasi sesuai Keputusan Kepala Badan Litbang dan Diklat Nomor 67 Tahun 2021 tentang Petunjuk Pelaksanaan Penyelenggaraan Pelatihan pada Badan Diklat Kementerian Agama", $fontstyle, $paragraphstyle);

            //BAB IV
            $section->addPageBreak();
            $section->addTitle("BAB IV", 1);
            $section->addTitle("PEMBIAYAAN DAN LAPORAN", 1);
            $section->addTitle("A. Pembiayaan", 2);
            $section->addText("Biaya $pelatihan->nama_kegiatan di Wilayah Kerja Kantor Kementerian Agama $pelatihan->kab_kota dibebankan pada Daftar Isian Pelaksanaan Anggaran DIPA Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru Tahun 2025 Nomor : SP-DIPA/025.11.2.690527/2025 Tanggal 02 Desember 2024", $fontstyle, $paragraphstyle);
            $section->addText("Terkait dengan penyelenggaraan kegiatan Pelatihan tersebut peserta tidak dipungut biaya apapun", $fontstyle, $paragraphstyle);

            $section->addTitle("B. Pembiayaan", 2);
            $section->addText("Sebagai pertanggungjawaban dalam pelaksanaan pelatihan akan disusun dalam bentuk laporan penyelenggaraan dan evaluasi pelaksanaan pelatihan yang meliputi :", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Laporan Persiapan Penyelenggaraan Pelatihan (panitia)", 0, $fontstyle, $style);
            $section->addListItem("Laporan Akhir Kegiatan (Panitia)", 0, $fontstyle, $style);

            $section->addTitle("BAB V", 1);
            $section->addTitle("PENUTUP", 1);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Hal-hal yang belum tercantum dalam buku panduan akan diatur kemudian", 0, $fontstyle, $style);
            $section->addListItem("Para peserta wajib mematuhi ketentuan-ketentuan yang telah ditetapkan", 0, $fontstyle, $style);
            $section->addListItem("Ketua kelas ikut bertanggungjawab atas terlaksananya ketertiban pelatihan", 0, $fontstyle, $style);
            $section->addListItem("Pelanggaran terhadap ketentuan yang telah dijelaskan dalam buku panduan akan mengakibatkan peserta kehilangan haknya sebagai peserta, dan akan dikembalikan secara baik-baik kepada instansi pengirim.", 0, $fontstyle, $style);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Kepala Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addTextBreak(3);
            $section->addText("$ketua_loka->nama", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            
            //Berita Acara
            $section->addPageBreak();
            $section->addText("BERITA ACARA", ['bold' => true], ['alignment' => Jc::CENTER]);
            $section->addText("Evaluasi Kelulusan Peserta", ['bold' => true], ['alignment' => Jc::CENTER]);
            $section->addText("Pelatihan $pelatihan->nama_pelatihan", ['bold' => true], ['alignment' => Jc::CENTER]);
            $section->addText("Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru", ['bold' => true], ['alignment' => Jc::CENTER]);
            $section->addText("Tahun $pelatihan->tahun", ['bold' => true], ['alignment' => Jc::CENTER]);

            $section->addText("Pada hari ini " . $data['tanggal_selesai'] . " pukul 13.30 s.d 14.00 WIB bertempat di $pelatihan->tempat telah diadakan Rapat Evaluasi Kelulusan Peserta $pelatihan->nama_pelatihan yang diselenggarakan dari tanggal" . $data['tanggal_mulai'] . " s.d " . $data['tanggal_selesai'] . "." , $fontstyle, $paragraphstyle);
            $section->addText("Berdasarkan Rapat Evaluasi Kelulusan maka hasil akhir nilai peserta pelatihan adalah dari $pelatihan->jumlah_peserta orang, peserta dinyatakan lulus sebanyak $pelatihan->jumlah_lulus orang dan tidak lulus $pelatihan->jumlah_tidak_lulus orang dengan rekapitulasi kualifikasi nilai peserta sebagaimana terlampir.", $fontstyle, $paragraphstyle);
            $section->addText("Demikian berita acara ini dibuat sebagaimana mestinya.", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Panitia Penyelenggara', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addText('Ketua', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addTextBreak(3);
            $section->addText("{$pelatihan->ketua_panitia->nama}", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText("NIP. {$pelatihan->ketua_panitia->NIP}", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);

            //Daftar Hadir
            // $section->addPageBreak();
            // $section->addText("DAFTAR HADIR RAPAT EVALUASI KELULUSAN PESERTA", ['bold' => true], ['alignment' => Jc::CENTER]);
            // $section->addText("Evaluasi Kelulusan Peserta", ['bold' => true], ['alignment' => Jc::CENTER]);
            // $section->addText("Pelatihan Manajemen Zakat Angkatan I", ['bold' => true], ['alignment' => Jc::CENTER]);
            // $section->addText("Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru", ['bold' => true], ['alignment' => Jc::CENTER]);
            // $section->addText("Tahun 2024", ['bold' => true], ['alignment' => Jc::CENTER]);

            // $table = $section->addTable([
            //     'borderSize' => 6,
            //     'borderColor' => '000000',
            //     'cellMargin' => 50,
            // ]);

            //Header
            // $table->addRow();
            // $table->addCell(500)->addText('NO.', ['bold' => true], ['alignment' => Jc::CENTER]);
            // $table->addCell(2500)->addText('NAMA', ['bold' => true], ['alignment' => Jc::CENTER]);
            // $table->addCell(2500)->addText('JABATAN', ['bold' => true], ['alignment' => Jc::CENTER]);
            // $cell = $table->addCell(4000);
            // $cell->getStyle()->setGridSpan(2);
            // $cell->addText('TANDA TANGAN', ['bold' => true], ['alignment' => Jc::CENTER]);

            //Baris 2
            // $table->addRow();
            // $table->addCell(500)->addText('1');
            // $table->addCell(2500)->addText('Eko Oktaviadi, SH');
            // $table->addCell(2500)->addText('Ketua Panitia');
            // $table->addCell(2000, ['borderRightSize' => 0, 'borderRightColor' => 'FFFFFF'])->addText('1......');
            // $table->addCell(2000)->addText('');

            // $section->addText('Pekanbaru, $ September 2024,', $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            // $section->addText('Panitia Penyelenggara', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            // $section->addText('Ketua,', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            // $section->addTextBreak(3);
            // $section->addText('H. Aprianto, S.Ag., M.A.', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            // $section->addText('NIP. 196702161994031005', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            
            //$this->generateListSection($phpword, $section, $lists);
            
            $tempFile = tempnam(sys_get_temp_dir(), 'word_');
            $writer = IOFactory::createWriter($phpword, 'Word2007');
            $writer->save($tempFile);
            
            $filename = 'dokumen_' . time() . '.docx';
            $target = FCPATH . 'downloads/' . $filename;
            rename($tempFile, $target);

            
            // $writer = IOFactory::createWriter($phpword, 'Word2007');
            // $writer->save($filepath);

    
        return $filename;
    } catch (Exception $e) {
        log_message('error', $e->getMessage());
        // Add this to see the actual error during development:
        show_error($e->getMessage(), 500, 'Document Generation Error');
        return false;
    }

    }
}
?>