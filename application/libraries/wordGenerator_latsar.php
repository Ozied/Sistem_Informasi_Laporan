<?php

use PhpOffice\PhpWord\IOFactory;
use PhpOffice\PhpWord\PhpWord;
use PhpOffice\PhpWord\Shared\Converter;
use PhpOffice\PhpWord\SimpleType\Jc;
use PhpOffice\PhpWord\Style\Font;
use PhpOffice\PhpWord\Style\Paragraph;
use PhpOffice\PhpWord\Style\Tab;
use PhpOffice\PhpWord\Style\TOC;
use PhpOffice\PhpWord\Style\Image;

defined('BASEPATH') OR exit('No direct script access allowed');

class wordGenerator_latsar {
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
        try {
            $phpword = new PhpWord();
            $pelatihan = is_array($data) ? (object)$data['pelatihan'] : $data->pelatihan;
            // $ketua_loka = is_array($data) ? ($data['ketua_loka'] ?? 0) : $data->ketua_loka ?? 0;
            // --- SAFE DEFAULTS ---
            $namaKegiatan = isset($pelatihan->nama_kegiatan) ? (string)$pelatihan->nama_kegiatan : 'Kegiatan';
            $tahun        = isset($pelatihan->tahun) ? (string)$pelatihan->tahun : date('Y');
            $bulanTTD     = isset($pelatihan->bulan_ttd_lap) ? (string)$pelatihan->bulan_ttd_lap : '';

            $ketuaObj     = (isset($pelatihan->ketua_panitia) && is_object($pelatihan->ketua_panitia)) ? $pelatihan->ketua_panitia : null;
            $ketuaNama    = $ketuaObj->nama ?? '-';
            $ketuaNIP     = $ketuaObj->NIP  ?? '-';

            // Pastikan koleksi tersedia
            $pelatihan->peserta          = $pelatihan->peserta ?? [];
            $pelatihan->tenaga_pengajar  = $pelatihan->tenaga_pengajar ?? [];
            $pelatihan->tim_penyelenggara= $pelatihan->tim_penyelenggara ?? [];

            
            $phpword->setDefaultFontName('Times New Roman');
            $phpword->setDefaultFontSize(12);
            
            $fontstyle = ['name' => 'Times New Roman', 'size' => 12];
            $phpword->addTitleStyle(1, ['size'=>16, 'bold'=>true], ['alignment'=>'center']);
            $phpword->addTitleStyle(2, ['size'=>14, 'bold'=>true]);
            $phpword->addTitleStyle(3, ['size'=>12, 'bold'=>true]);
            
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
            
            // TOC style
            $tocFontStyle = ['spaceAfter' => 60];
            $tocStyle = [
                'tabPos'    => 9000,
                'indent'    => 200,
                'tabLeader' => PhpOffice\PhpWord\Style\TOC::TAB_LEADER_DOT
            ];

            // Cover Section
            $coverSection = $phpword->addSection([
                'pageSizeW' => Converter::inchToTwip(8.5),
                'pageSizeH' => Converter::inchToTwip(11),
                'marginTop' => Converter::cmToTwip(1),
                'marginLeft' => Converter::cmToTwip(1),
                'marginRight' => Converter::cmToTwip(1),
                'marginBottom' => Converter::cmToTwip(1),
            ]);

            // Add background image
            $imageWidth = Converter::cmToTwip(1.05);
            $coverSection->addImage(
                'assets/cover/Cover_PDWK_Penyelenggaraan.png',
                [
                    'width' => $imageWidth,
                    'positioning' => Image::POSITION_ABSOLUTE,
                    'posHorizontal' => Image::POSITION_HORIZONTAL_CENTER,
                    'posHorizontalRel' => Image::POSITION_RELATIVE_TO_PAGE,
                    'posVertical' => Image::POSITION_VERTICAL_CENTER,
                    'posVerticalRel' => Image::POSITION_RELATIVE_TO_PAGE,
                    'wrap' => Image::WRAP_BEHIND,
                ]
            );

            $coverSection->addTextBreak(13);
            $coverSection->addText(
                'LAPORAN PENYELENGGARAAN',
                [
                    'name' => 'Times New Roman',
                    'size' => 16,
                    'bold' => true,
                    'color' => '000000',
                    'allCaps' => true,
                ],
                [
                    'alignment' => Jc::CENTER,
                    'spaceAfter' => 300,
                ]
            );

            $coverSection->addText(
                strtoupper(($namaKegiatan)),
                [
                    'name' => 'Times New Roman',
                    'size' => 16,
                    'bold' => true,
                    'color' => '000000',
                    'allCaps' => true,
                ],
                [
                    'alignment' => Jc::CENTER,
                    'spaceAfter' => 300,
                ]
            );

            $coverSection->addText(
                'Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru',
                [
                    'name' => 'Times New Roman',
                    'size' => 12,
                ],
                [
                    'alignment' => Jc::CENTER,
                    'spaceAfter' => 300,
                ]
            );

            $coverSection->addText(
                "TAHUN $pelatihan->tahun",
                [
                    'name' => 'Times New Roman',
                    'size' => 12,
                    'bold' => true,
                ],
                [
                    'alignment' => Jc::CENTER,
                ]
            );

            // Kata Pengantar
            $section1 = $phpword->addSection();
            $footer1 = $section1->addFooter();
            $footer1->addPreserveText('{PAGE}', null, ['alignment' => 'right']);
            
            $section1->addTitle("KATA PENGANTAR", 1);
            $section1->addTextBreak(1);
            
            $section1->addText("Puji dan syukur kehadirat Allah SWT, berkat rahmat serta karunianya, laporan Penyelenggaraan $pelatihan->nama_kegiatan di Wilayah Kerja Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru ini telah dapat disusun.", $fontstyle, $paragraphstyle);
            
            $section1->addText("Laporan ini disampaikan kepada Kepala Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru sebagai pertanggungjawaban tertulis dari panitia pelaksana kegiatan, sekaligus sebagai informasi tentang proses pelaksanaan kegiatan tersebut mulai dari tahap perencanaan, pelaksanaan, evaluasi sampai dengan pada tahap laporan.", $fontstyle, $paragraphstyle);
            
            $section1->addText("Kegiatan ini bertujuan untuk mengembangkan kompetensi pembentukan karakter ASN yang profesional sesuai bidang tugas yang diikuti oleh 40 orang Calon Pegawai Negeri Sipil di lingkungan Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru.", $fontstyle, $paragraphstyle);
            
            $section1->addText("Laporan pelatihan ini terdiri dari enam bab. Bab I Latar Belakang, memuat latar belakang penyelenggaraan pelatihan dasar CPNS. Bab II berisi tentang dasar hukum penyelenggaraan pelatihan dasar CPNS. Bab III berisi perencanaan pelatihan dasar CPNS yang memuat peserta dan tenaga pengajar. Bab IV berisi tentang penyelenggaraan pelatihan dasar CPNS yang memuat pembukaan, pelaksanaan dan penutupan. Bab V berisi tentang evaluasi pelatihan dasar CPNS yang memuat evaluasi peserta, evaluasi tenaga pelatihan dan evaluasi penyelenggaraan. Bab VI sebagai penutup. Laporan ini juga dilengkapi dengan lampiran-lampiran sebagai bukti fisik.", $fontstyle, $paragraphstyle);
            
            $section1->addText("Diharapkan bahwa dengan selesainya laporan ini, semua kegiatan yang berhubungan dengan Penyelenggaraan $pelatihan->nama_kegiatan dapat dipertanggungjawabkan.", $fontstyle, $paragraphstyle);
            
            $section1->addTextBreak(2);
            $section1->addText("Pekanbaru, {$bulanTTD} {$tahun},", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section1->addText('Ketua Panitia', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section1->addTextBreak(3);
            $section1->addText($ketuaNama, array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section1->addText("NIP. {$ketuaNIP}", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);

            // Daftar Isi
            $section1->addPageBreak();
            $section1->addTitle("DAFTAR ISI", 1);
            $toc1 = $section1->addTOC($tocFontStyle, $tocStyle);

            // BAB I - LATAR BELAKANG
            $section1->addPageBreak();
            $section1->addTitle("BAB I", 1);
            $section1->addTitle("LATAR BELAKANG", 1);
            $section1->addTextBreak(1);
            
            $section1->addText("Pelatihan Dasar Calon Pegawai Negeri Sipil adalah syarat bagi Calon Pegawai Negeri Sipil (CPNS) untuk dapat diangkat menjadi Pegawai Negeri Sipil (PNS). Pelatihan Dasar CPNS dilaksanakan untuk memberikan pengetahuan dalam pembentukan wawasan kebangsaan, kepribadian dan etika Pegawai Negeri Sipil, pengetahuan dasar tentang sistem penyelenggaraan pemerintah negara, bidang tugas dan budaya organisasinya supaya mampu melaksanakan tugas dan perannya sebagai pelayan masyarakat.", $fontstyle, $paragraphstyle);
            
            $section1->addText("Sejalan dengan Peraturan Pemerintah Nomor 17 Tahun 2020 tentang perubahan atas Peraturan Pemerintah Nomor 11 Tahun 2017 tentang Manajemen Pegawai Negeri Sipil disebutkan bahwa CPNS wajib menjalani masa percobaan selama 1 tahun yang merupakan masa prajabatan. Selama masa prajabatan tersebut, CPNS wajib mengikuti pendidikan dan pelatihan atau yang lebih dikenal dengan sebutan Pelatihan Dasar. Oleh karena itu, pelaksanaan Pelatihan Dasar CPNS Golongan III Angkatan I pada tahun 2025 menjadi salah satu prioritas kegiatan yang harus dilaksanakan oleh Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru. Pada pelaksanaan Pelatihan Dasar CPNS Golongan III Angkatan I pada tahun 2025, Balai Diklat Keagamaan Padang berperan sebagai lembaga penjaminan mutu.", $fontstyle, $paragraphstyle);
            
            $section1->addText("Berdasarkan Peraturan Lembaga Administrasi Negara Nomor 1 Tahun 2021 tentang Pelatihan Dasar Calon Pegawai Negeri Sipil sebagaimana diubah dengan Peraturan Lembaga Administrasi Negara Nomor 10 Tahun 2021 tentang perubahan atas Peraturan Lembaga Administrasi Negara Nomor 1 Tahun 2021 tentang Pelatihan Dasar Calon Pegawai Negeri Sipil. Kurikulum pembelajaran Pelatihan Dasar CPNS menekankan pada nilai-nilai ASN yaitu Berorientasi Pelayanan, Akuntabel, Kompeten, Harmonis, Loyal, Adaptif, dan Kolaboratif atau lebih dikenal dengan singkatan BerAKHLAK. Selain dituntut untuk memahami nilai-nilai dasar ASN tersebut, setiap CPNS yang mengikuti Pelatihan Dasar CPNS juga dituntut untuk menjalankan perannya sebagai pelaksana kebijakan publik, pelayan publik dan perekat serta pemersatu bangsa.", $fontstyle, $paragraphstyle);

            // BAB II - DASAR HUKUM
            $section1->addPageBreak();
            $section1->addTitle("BAB II", 1);
            $section1->addTitle("DASAR HUKUM", 1);
            $section1->addTextBreak(1);
            
            $style = generate_list_style($phpword, 'decimal');
            
            $section1->addListItem("Undang-undang Nomor 20 Tahun 2023 tentang Aparatur Sipil Negara;", 0, $fontstyle, $style);
            $section1->addListItem("Peraturan Pemerintah Nomor 11 Tahun 2017 tentang Manajemen Pegawai Negeri Sipil sebagaimana telah diubah dengan Peraturan Pemerintah Nomor 17 Tahun 2020 tentang Perubahan atas Peraturan Pemerintah Nomor 11 Tahun 2017 tentang Manajemen Pegawai Negeri Sipil;", 0, $fontstyle, $style);
            $section1->addListItem("Peraturan Lembaga Administrasi Negara Republik Indonesia Nomor 1 Tahun 2021 tentang Pelatihan Dasar Calon Pegawai Negeri Sipil sebagaimana telah diubah dengan Peraturan Lembaga Administrasi Negara Republik Indonesia Nomor 10 Tahun 2021 tentang perubahan atas Lembaga Administrasi Negara Republik Indonesia Nomor 1 Tahun 2021 tentang Pelatihan Dasar Calon Pegawai Negeri Sipil;", 0, $fontstyle, $style);
            $section1->addListItem("Peraturan Lembaga Administrasi Negara Republik Indonesia Nomor 2 Tahun 2021 tentang Penjaminan Mutu Pelatihan Aparatus Sipil Negara;", 0, $fontstyle, $style);
            $section1->addListItem("Keputusan Kepala Lembaga Administrasi Negara Nomor 580/K.1/PDP.07/2024 tentang Kurikulum Pelatihan Dasar Calon Pegawai Negeri Sipil;", 0, $fontstyle, $style);
            $section1->addListItem("Keputusan Kepala Lembaga Administrasi Negara Nomor 581/K.1/PDP.07/2024 tentang Pedoman Penyelenggaraan Pelatihan Dasar Calon Pegawai Negeri Sipil;", 0, $fontstyle, $style);

            // BAB III - PERENCANAAN PELATIHAN
            $section1->addPageBreak();
            $section1->addTitle("BAB III", 1);
            $section1->addTitle("PERENCANAAN PELATIHAN", 1);
            $section1->addTextBreak(1);
            
            $section1->addTitle("A. Peserta", 2);
            $section1->addText("Persyaratan peserta mengikuti Pelatihan Dasar CPNS pada wilayah kerja Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru tahun 2025 adalah sebagai berikut:", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');
            $section1->addListItem("Telah ditetapkan sebagai CPNS oleh Pejabat Pembina Kepegawaian instansi masing-masing yang dibuktikan dengan Keputusan Menteri Agama Republik Indonesia tentang Pengangkatan CPNS.", 0, $fontstyle, $style);
            $section1->addListItem("Telah memiliki surat pernyataan melaksanakan tugas (SPMT)", 0, $fontstyle, $style);
            $section1->addListItem("Sehat jasmani dan rohani yang dibuktikan dengan surat keterangan sehat dari dokter pemerintah", 0, $fontstyle, $style);
            $section1->addListItem("Surat Penugasan dari Pejabat Pembina Kepegawaian", 0, $fontstyle, $style);
            $section1->addListItem("Surat pernyataan kesediaan mematuhi ketentuan yang berlaku dalam penyelenggaraan Pelatihan Dasar CPNS", 0, $fontstyle, $style);
            
            $section1->addText("Adapun peserta Pelatihan Dasar CPNS Golongan III Angkatan I berjumlah 40 peserta dengan rincian sebagai berikut:", $fontstyle, $paragraphstyle);
            
            // Create table for participant list
            $table = $section1->addTable([
                'borderSize' => 6,
                'borderColor' => '000000',
                'cellMargin' => 50
            ]);
            
            // Table headers
            $table->addRow();
            $table->addCell(1000)->addText('No', ['bold' => true], ['align' => 'center']);
            $table->addCell(3000)->addText('Nama', ['bold' => true], ['align' => 'center']);
            $table->addCell(2000)->addText('NIP', ['bold' => true], ['align' => 'center']);
            $table->addCell(1500)->addText('GolRu', ['bold' => true], ['align' => 'center']);
            $table->addCell(2500)->addText('Jabatan', ['bold' => true], ['align' => 'center']);
            $table->addCell(3000)->addText('Unit Kerja', ['bold' => true], ['align' => 'center']);
            
            // Add participants data
            if (!empty($pelatihan->peserta)) {
                $no = 1;
                foreach ($pelatihan->peserta as $peserta) {
                    $table->addRow();
                    $table->addCell(1000)->addText($no, null, ['align' => 'center']);
                    $table->addCell(3000)->addText($peserta->nama, null, ['align' => 'left']);
                    $table->addCell(2000)->addText($peserta->nip, null, ['align' => 'center']);
                    $table->addCell(1500)->addText($peserta->golru, null, ['align' => 'center']);
                    $table->addCell(2500)->addText($peserta->jabatan, null, ['align' => 'left']);
                    $table->addCell(3000)->addText($peserta->unit_kerja, null, ['align' => 'left']);
                    $no++;
                }
            }

            $section1->addTitle("B. Tenaga Pengajar", 2);
            $section1->addText(
            "Tenaga pengajar Pelatihan Dasar CPNS Golongan III Angkatan I tahun 2025 merupakan tenaga-tenaga ahli yang berkompeten di bidangnya sesuai dengan mata pelatihan yang diajarkan dalam Pelatihan Dasar CPNS. Rincian tenaga pengajar sebagai berikut:",
            $fontstyle, $paragraphstyle
            );

            // table header
            $table2 = $section1->addTable([
                'borderSize' => 6,
                'borderColor' => '000000',
                'cellMargin' => 50
            ]);
            $table2->addRow();
            $table2->addCell(900)->addText('No', ['bold'=>true], ['align'=>'center']);
            $table2->addCell(5400)->addText('Agenda/Mata Pelatihan', ['bold'=>true]);
            $table2->addCell(1200)->addText('JP Async', ['bold'=>true], ['align'=>'center']);
            $table2->addCell(1200)->addText('JP Sync',  ['bold'=>true], ['align'=>'center']);
            $table2->addCell(900)->addText('Kel.',     ['bold'=>true], ['align'=>'center']);
            $table2->addCell(2600)->addText('Pengajar', ['bold'=>true]);

            $no = 1;
            foreach (($pelatihan->agenda ?? []) as $ag) {
                // kalau tidak ada grup: satu baris saja, gunakan main teacher
                $groups = $ag->grup ?: [ (object)[
                    'group_no' => null,
                    'teacher'  => $ag->main_teacher ?? null
                ]];

                foreach ($groups as $gr) {
                    $teacherName = $gr->teacher->nama ?? ($ag->main_teacher->nama ?? '');
                    $table2->addRow();
                    $table2->addCell(900)->addText($no++, null, ['align'=>'center']);
                    $table2->addCell(5400)->addText($ag->agenda_title);
                    $table2->addCell(1200)->addText((int)($ag->sum_jp_async ?? 0), null, ['align'=>'center']);
                    $table2->addCell(1200)->addText((int)($ag->sum_jp_sync  ?? 0), null, ['align'=>'center']);
                    $table2->addCell(900)->addText(isset($gr->group_no) ? (string)(int)$gr->group_no : '', null, ['align'=>'center']);
                    $table2->addCell(2600)->addText($teacherName);
                }
            }
                        
            $section1->addTitle("C. Tim Penyelenggara", 2);
            $section1->addText("Persyaratan panitia tim penyelenggara Pelatihan Dasar CPNS pada wilayah kerja Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru tahun 2025 adalah sebagai berikut:", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');
            $section1->addListItem("Telah memiliki sertifikat Pelatihan Management of Training (MOT) dan/atau pelatihan lain yang dipersyaratkan bagi Pengelola Pelatihan.", 0, $fontstyle, $style);
            $section1->addListItem("Telah memiliki sertifikat Training Officer Course (TOC) dan/atau pelatihan lain yang Penyelenggara Pelatihan.", 0, $fontstyle, $style);
            
            $section1->addText("Adapun panitia Pelatihan Dasar CPNS Golongan III Angkatan I berjumlah 4 orang dengan rincian sebagai berikut:", $fontstyle, $paragraphstyle);
            
            // Create table for committee
            $table3 = $section1->addTable([
                'borderSize' => 6,
                'borderColor' => '000000',
                'cellMargin' => 50
            ]);
            
            // Table headers
            $table3->addRow();
            $table3->addCell(1000)->addText('No', ['bold' => true], ['align' => 'center']);
            $table3->addCell(3000)->addText('Nama', ['bold' => true], ['align' => 'center']);
            $table3->addCell(2000)->addText('NIP', ['bold' => true], ['align' => 'center']);
            $table3->addCell(3000)->addText('Jabatan', ['bold' => true], ['align' => 'center']);
            
            // Add committee data
            if (!empty($pelatihan->tim_penyelenggara)) {
                $no = 1;
                foreach ($pelatihan->tim_penyelenggara as $anggota) {
                    $table3->addRow();
                    $table3->addCell(1000)->addText($no, null, ['align' => 'center']);
                    $table3->addCell(3000)->addText($anggota->nama, null, ['align' => 'left']);
                    $table3->addCell(2000)->addText($anggota->nip, null, ['align' => 'center']);
                    $table3->addCell(3000)->addText($anggota->jabatan, null, ['align' => 'left']);
                    $no++;
                }
            }
            
            $section1->addTitle("D. Fasilitas Pelatihan", 2);
            $section1->addText("Fasilitas yang disediakan bagi peserta Pelatihan Dasar CPNS Angkatan 1 meliputi konsumsi, sarana pembelajaran, dan ruang belajar sebanyak 4 kelas. Kemudian ruang makan dan ruang sholat, tersedianya halaman luas untuk kegiatan outdoor dan fasilitas pendukung seperti meja dan kursi, sound system, papan tulis, laptop, infocus dan perangkat lunak video yaitu zoom meeting.", $fontstyle, $paragraphstyle);
            
            $section1->addTitle("E. Diseminasi Informasi Penyelenggaraan Pelatihan", 2);
            $section1->addText("Sebagai bentuk komitmen untuk menyelenggarakan Pelatihan Dasar CPNS Golongan III Angkatan 1 Tahun 2025 yang transparan dan terkoordinasi dengan baik, Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru melaksanakan kegiatan diseminasi informasi kepada seluruh stakeholder. Kegiatan ini dilakukan melalui dua rangkaian rapat pembekalan terpisah yang dilaksanakan secara daring pada bulan Februari - Maret 2025 via Zoom Meeting. Masing-masing rapat membahas materi yang disesuaikan dengan kebutuhan audiensnya.", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');
            $section1->addListItem("Rapat Pembekalan bagi Calon Peserta Pelatihan", 0, $fontstyle, $style);
            
            $subStyle = generate_list_style($phpword, 'lowerLetter');
            $section1->addListItem("Sosialisasi Jadwal dan Persiapan Pelatihan Dasar CPNS", 1, $fontstyle, $subStyle);
            $section1->addListItem("Sosialisasi Pembelajaran Mandiri melalui Platform MOOC Swajar ASN Pintar", 1, $fontstyle, $subStyle);
            $section1->addListItem("Sosialisasi Penyamaan Persepsi E-Learning Tahap (Pembelajaran secara Distance Learning)", 1, $fontstyle, $subStyle);
            $section1->addListItem("Sosialisasi Penyamaan Persepsi Pembelajaran Klasikal", 1, $fontstyle, $subStyle);
            
            $section1->addListItem("Rapat Pembekalan bagi Pegawai Instansi Asal CPNS", 0, $fontstyle, $style);
            
            $section1->addListItem("Rapat Koordinasi Pelaksanaan Latsar CPNS Formasi Tahun 2024 Kepada Seluruh Instansi Wilayah Kerja Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru.", 1, $fontstyle, $subStyle);
            $section1->addListItem("Rapat Persiapan Pelatihan Latsar CPNS Loka Pendidikan dan Pelatihan Keagamaan Bersama Tim Penjaminan Mutu BDK Padang.", 1, $fontstyle, $subStyle);
            $section1->addListItem("Rapat Sosialisasi Mentor Latsar CPNS Wilayah Kerja Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru.", 1, $fontstyle, $subStyle);
            $section1->addListItem("Rapat Penyamaan Persepsi Coach dan Penguji Seminar Evaluasi Rancangan Aktualisasi", 1, $fontstyle, $subStyle);
            $section1->addListItem("Rapat Penyamaan Persepsi Coach dan Penguji Seminar Evaluasi Aktualisasi", 1, $fontstyle, $subStyle);
            $section1->addListItem("Rapat Kelulusan Peserta Latsar CPNS Bersama Panitia, Coach, Perwakilan Pengampu Materi (Widyaiswara) dan Penjaminan Mutu BDK Padang.", 1, $fontstyle, $subStyle);

            // BAB IV - PENYELENGGARAAN PELATIHAN
            $section1->addPageBreak();
            $section1->addTitle("BAB IV", 1);
            $section1->addTitle("PENYELENGGARAAN PELATIHAN", 1);
            $section1->addTextBreak(1);
            
            $section1->addText("Pelatihan Dasar Calon Pegawai Negeri Sipil (Latsar CPNS) merupakan pendidikan dan pelatihan dalam masa prajabatan yang dilaksanakan secara terintegrasi. Penyelenggaraan kegiatan ini bertujuan untuk membangun integritas moral, menanamkan kejujuran, menumbuhkan semangat serta motivasi nasionalisme dan kebangsaan, membentuk karakter kepribadian yang unggul dan bertanggung jawab, serta memperkuat profesionalisme dan kompetensi bidang sesuai dengan jabatan yang akan diemban.", $fontstyle, $paragraphstyle);
            
            $section1->addText("Penyelenggaraan Latsar CPNS terdiri dari beberapa tahapan pembelajaran yang dilaksanakan secara berkesinambungan, yaitu:", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');
            $section1->addListItem("Massive Open Online Course (MOOC)", 0, $fontstyle, $style);
            $section1->addText("Tahap awal pelatihan dilakukan melalui MOOC dengan total beban belajar sebanyak 48 Jam Pelajaran (JP). Kegiatan ini berlangsung selama 9 hari kerja dan dilaksanakan secara daring dari kedudukan peserta dengan menggunakan platform SWAJAR ASN Pintar pada tanggal 16 s.d 25 Juni 2025. Melalui MOOC, peserta diperkenalkan dengan dasar-dasar nilai BerAkhlak, serta berbagai materi penguatan wawasan kebangsaan, integritas, dan etika.", $fontstyle, $paragraphstyle);
            
            $section1->addListItem("Pembukaan", 0, $fontstyle, $style);
            
            // Create table for opening details
            $table4 = $section1->addTable([
                'borderSize' => 6,
                'borderColor' => '000000',
                'cellMargin' => 50
            ]);
            
            $table4->addRow();
            $table4->addCell(3000)->addText('Hari, Tanggal', ['bold' => true], ['align' => 'left']);
            $table4->addCell(6000)->addText(': Senin, 20 Juni 2025', null, ['align' => 'left']);
            
            $table4->addRow();
            $table4->addCell(3000)->addText('Tempat', ['bold' => true], ['align' => 'left']);
            $table4->addCell(6000)->addText(': Daring melalui Video Conference Zoom', null, ['align' => 'left']);
            
            $table4->addRow();
            $table4->addCell(3000)->addText('Keterangan', ['bold' => true], ['align' => 'left']);
            $table4->addCell(6000)->addText(': Pembukaan pelatihan dasar CPNS Angkatan 1 diikuti oleh 40 orang cpns di wilayah kerja Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru dibuka secara formal oleh Kepala Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru', null, ['align' => 'left']);
            
            $section1->addListItem("Distance Learning (E-Learning 1)", 0, $fontstyle, $style);
            $section1->addText("Tahap berikutnya adalah pembelajaran jarak jauh dengan metode e-learning yang berlangsung selama 20 hari kerja. Kegiatan ini tetap dilaksanakan dari kedudukan peserta, dengan memanfaatkan media pembelajaran daring yang interaktif. Peserta difasilitasi untuk mendalami materi, melakukan diskusi, serta menyelesaikan berbagai penugasan terkait Sikap Perilaku Bela Negara, Nilai-Nilai Dasar PNS, dan Kedudukan dan Peran PNS untuk mendukung terwujudnya smart governance sesuai dengan ketentuan peraturan perundang-undangan.", $fontstyle, $paragraphstyle);
            
            $section1->addListItem("Aktualisasi di Tempat Kerja", 0, $fontstyle, $style);
            $section1->addText("Setelah mengikuti pembelajaran daring, peserta melaksanakan aktualisasi di tempat kerja masing-masing selama 30 hari kerja. Aktualisasi ini merupakan bentuk penerapan nilai-nilai dasar ASN ke dalam kegiatan nyata yang sesuai dengan tugas dan fungsi unit kerja. Melalui kegiatan aktualisasi, peserta diharapkan mampu menunjukkan sikap profesional, berintegritas, serta memberikan kontribusi nyata terhadap peningkatan kualitas pelayanan publik.", $fontstyle, $paragraphstyle);
            
            $section1->addListItem("Pembelajaran Klasikal", 0, $fontstyle, $style);
            $section1->addText("Tahap terakhir dari rangkaian pelatihan adalah pembelajaran klasikal yang berlangsung selama 3 hari dan dilaksanakan di MIN 1 Kota Pekanbaru Kampus 3. Kegiatan klasikal ini bersifat tatap muka dengan metode interaktif seperti diskusi, simulasi, dan studi kasus. Untuk mendukung kelancaran pelaksanaan klasikal, disediakan sarana dan prasarana yang memadai, antara lain:", $fontstyle, $paragraphstyle);
            
            $subStyle = generate_list_style($phpword, 'lowerLetter');
            $section1->addListItem("4 ruang kelas yang digunakan untuk proses pembelajaran,", 1, $fontstyle, $subStyle);
            $section1->addListItem("1 ruang makan untuk kebutuhan konsumsi peserta,", 1, $fontstyle, $subStyle);
            $section1->addListItem("1 ruang sholat sebagai fasilitas ibadah,", 1, $fontstyle, $subStyle);
            $section1->addListItem("serta sarana prasarana penunjang lainnya seperti ruang administrasi, area parkir, dan fasilitas sanitasi.", 1, $fontstyle, $subStyle);
            
            $section1->addText("Melalui pembelajaran klasikal, peserta berkesempatan untuk melakukan refleksi atas seluruh rangkaian proses pembelajaran, menyampaikan pengalaman aktualisasi, serta memperkuat pemahaman terhadap peran dan tanggung jawab sebagai Aparatur Sipil Negara.", $fontstyle, $paragraphstyle);

            // BAB V - EVALUASI
            $section1->addPageBreak();
            $section1->addTitle("BAB V", 1);
            $section1->addTitle("EVALUASI", 1);
            $section1->addTextBreak(1);
            
            $section1->addText("Evaluasi pelaksanaan Pelatihan Dasar Calon Pegawai Negeri Sipil (Latsar CPNS) dilaksanakan secara menyeluruh untuk mengukur pencapaian kompetensi peserta dan efektivitas penyelenggaraan pelatihan. Evaluasi ini terbagi ke dalam dua aspek utama, yaitu evaluasi peserta dan evaluasi penyelenggara.", $fontstyle, $paragraphstyle);
            
            $section1->addTitle("5.1 Evaluasi Peserta", 2);
            $section1->addText("Evaluasi peserta Latsar CPNS dilaksanakan dengan pendekatan blended learning, yang mengukur aspek akademik, keterampilan, sikap, serta penerapan nilai-nilai dasar ASN melalui kegiatan aktualisasi. Aspek penilaian terdiri atas:", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');
            $section1->addListItem("Evaluasi Akademik dengan bobot 20%, berupa pengukuran pemahaman materi melalui tes akademik dan penugasan daring.", 0, $fontstyle, $style);
            $section1->addListItem("Evaluasi Rancangan Aktualisasi dengan bobot 20%, yaitu penilaian terhadap rencana kegiatan aktualisasi yang disusun peserta.", 0, $fontstyle, $style);
            $section1->addListItem("Evaluasi Pelaksanaan Aktualisasi dengan bobot 30%, berupa penilaian terhadap implementasi rencana aktualisasi di unit kerja masing-masing peserta.", 0, $fontstyle, $style);
            $section1->addListItem("Evaluasi Sikap dan Perilaku dengan bobot 15%, mencakup penilaian terhadap integritas, disiplin, kerja sama, dan etika selama mengikuti seluruh rangkaian pelatihan.", 0, $fontstyle, $style);
            $section1->addListItem("Evaluasi Pengembangan Kompetensi Teknis Bidang Tugas dengan bobot 15%, yang menilai keterampilan peserta dalam mendukung pelaksanaan tugas jabatan.", 0, $fontstyle, $style);
            
            $section1->addText("Hasil evaluasi peserta menunjukkan bahwa dari 40 peserta Latsar CPNS Angkatan 1, sebanyak 38 peserta (95%) dinyatakan lulus dengan nilai rata-rata 85, sedangkan 2 peserta (5%) dinyatakan tidak lulus dan harus mengulang pada tahapan tertentu sesuai dengan ketentuan yang berlaku.", $fontstyle, $paragraphstyle);
            
            $section1->addTitle("5.2 Evaluasi Penyelenggaraan", 2);
            $section1->addText("Evaluasi penyelenggaraan Latsar CPNS dilakukan untuk mengukur efektivitas dan efisiensi pelaksanaan pelatihan. Aspek yang dievaluasi meliputi:", $fontstyle, $paragraphstyle);
            
            $subStyle = generate_list_style($phpword, 'lowerLetter');
            $section1->addListItem("Kesesuaian kurikulum dengan kebutuhan kompetensi peserta,", 0, $fontstyle, $subStyle);
            $section1->addListItem("Kualitas tenaga pengajar dan fasilitator,", 0, $fontstyle, $subStyle);
            $section1->addListItem("Ketersediaan dan kualitas sarana prasarana pembelajaran,", 0, $fontstyle, $subStyle);
            $section1->addListItem("Kualitas materi dan metode pembelajaran,", 0, $fontstyle, $subStyle);
            $section1->addListItem("Tingkat kepuasan peserta terhadap pelaksanaan pelatihan.", 0, $fontstyle, $subStyle);
            
            $section1->addText("Berdasarkan hasil evaluasi penyelenggaraan, secara umum pelaksanaan Latsar CPNS Angkatan 1 telah berjalan dengan baik dan sesuai dengan rencana. Tingkat kepuasan peserta terhadap kualitas pengajar, materi, dan fasilitas pelatihan mencapai rata-rata 4,5 dari skala 5. Beberapa rekomendasi perbaikan untuk penyelenggaraan pelatihan berikutnya antara lain:", $fontstyle, $paragraphstyle);
            
            $section1->addListItem("Peningkatan kualitas jaringan internet untuk mendukung pembelajaran daring,", 0, $fontstyle, $subStyle);
            $section1->addListItem("Optimalisasi pendampingan peserta dalam penyusunan rancangan aktualisasi,", 0, $fontstyle, $subStyle);
            $section1->addListItem("Peningkatan koordinasi dengan instansi asal peserta untuk memastikan dukungan terhadap pelaksanaan aktualisasi.", 0, $fontstyle, $subStyle);

            // BAB VI - PENUTUP
            $section1->addPageBreak();
            $section1->addTitle("BAB VI", 1);
            $section1->addTitle("PENUTUP", 1);
            $section1->addTextBreak(1);
            
            $section1->addTitle("6.1 Kesimpulan", 2);
            $section1->addText("Berdasarkan laporan penyelenggaraan Pelatihan Dasar Calon Pegawai Negeri Sipil (Latsar CPNS) Golongan III Angkatan 1 Tahun 2025 di wilayah kerja Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru, dapat disimpulkan bahwa:", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');
            $section1->addListItem("Pelaksanaan Latsar CPNS telah berjalan sesuai dengan rencana dan ketentuan yang berlaku, mulai dari tahap perencanaan, pelaksanaan, hingga evaluasi.", 0, $fontstyle, $style);
            $section1->addListItem("Sebanyak 38 peserta (95%) dinyatakan lulus dan memenuhi kompetensi sebagai Calon Pegawai Negeri Sipil, sementara 2 peserta (5%) dinyatakan tidak lulus dan harus mengulang pada tahapan tertentu.", 0, $fontstyle, $style);
            $section1->addListItem("Seluruh rangkaian pelatihan, mulai dari MOOC, Distance Learning, Aktualisasi, hingga pembelajaran klasikal, telah dilaksanakan dengan efektif dan memberikan dampak positif terhadap pengembangan kompetensi peserta.", 0, $fontstyle, $style);
            $section1->addListItem("Tingkat kepuasan peserta terhadap kualitas pengajar, materi, dan fasilitas pelatihan mencapai rata-rata 4,5 dari skala 5, menunjukkan bahwa penyelenggaraan pelatihan telah memenuhi harapan peserta.", 0, $fontstyle, $style);
            
            $section1->addTitle("6.2 Saran", 2);
            $section1->addText("Untuk meningkatkan kualitas penyelenggaraan Latsar CPNS pada tahun-tahun berikutnya, disampaikan beberapa saran sebagai berikut:", $fontstyle, $paragraphstyle);
            
            $subStyle = generate_list_style($phpword, 'lowerLetter');
            $section1->addListItem("Perlu peningkatan kualitas jaringan internet dan dukungan teknis lainnya untuk memastikan kelancaran pembelajaran daring.", 0, $fontstyle, $subStyle);
            $section1->addListItem("Diperlukan optimalisasi pendampingan peserta dalam penyusunan rancangan aktualisasi, termasuk peningkatan koordinasi dengan coach dan mentor.", 0, $fontstyle, $subStyle);
            $section1->addListItem("Perlu peningkatan koordinasi dengan instansi asal peserta untuk memastikan dukungan penuh terhadap pelaksanaan aktualisasi di tempat kerja.", 0, $fontstyle, $subStyle);
            $section1->addListItem("Diperlukan pengembangan materi pelatihan yang lebih kontekstual dan sesuai dengan kebutuhan peserta, termasuk penambahan studi kasus yang relevan dengan tugas dan fungsi instansi asal peserta.", 0, $fontstyle, $subStyle);
            
            $section1->addText("Dengan demikian, Latsar CPNS Golongan III Angkatan 1 Tahun 2025 telah berhasil dilaksanakan dan memberikan kontribusi positif terhadap pengembangan kompetensi Calon Pegawai Negeri Sipil di wilayah kerja Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru.", $fontstyle, $paragraphstyle);

            // Lampiran
            $section1->addPageBreak();
            $section1->addTitle("LAMPIRAN-LAMPIRAN", 1);
            $section1->addTextBreak(1);
            
            $style = generate_list_style($phpword, 'decimal');
            $section1->addListItem("Surat Keputusan Penetapan Panitia Penyelenggara Latsar CPNS", 0, $fontstyle, $style);
            $section1->addListItem("Surat Tugas Tenaga Pengajar", 0, $fontstyle, $style);
            $section1->addListItem("Daftar Hadir Peserta", 0, $fontstyle, $style);
            $section1->addListItem("Daftar Nilai Peserta", 0, $fontstyle, $style);
            $section1->addListItem("Foto Dokumentasi Kegiatan", 0, $fontstyle, $style);
            $section1->addListItem("Berita Acara Penyelenggaraan", 0, $fontstyle, $style);
            $section1->addListItem("Rekapitulasi Evaluasi Peserta", 0, $fontstyle, $style);
            $section1->addListItem("Rekapitulasi Evaluasi Penyelenggaraan", 0, $fontstyle, $style);
            
            // Save file
            $tempFile = tempnam(sys_get_temp_dir(), 'word_');
            $writer = IOFactory::createWriter($phpword, 'Word2007');
            $writer->save($tempFile);

            $filename = "LAPORAN_PENYELENGGARAAN_LATSAR_CPNS_ANGGOTA_I_TAHUN_2025.docx";
            $target = FCPATH . 'downloads/' . $filename;
            rename($tempFile, $target);
            
            return $filename;
            
        } catch (Exception $e) {
            log_message('error', 'Error generating Latsar CPNS report: ' . $e->getMessage());
            return false;
        }
    }
}