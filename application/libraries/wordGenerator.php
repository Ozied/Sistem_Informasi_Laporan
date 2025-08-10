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

class wordGenerator{
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
          
            // Kata Pengantar
            $section = $phpword->addSection();
            $section->addTitle("KATA PENGANTAR");
            $section->addText("Puji syukur kita ucapkan kepada Allah Subhanahu wa ta’ala, yang senantiasa melimpahkan rahmat dan nikmat serta inayah-Nya kepada kita. Atas rahmat dan petunjuk-Nya Panduan Penyelenggaraan Pelatihan Jarak Jauh (PJJ) " . $pelatihan->nama_pelatihan . " telah selesai disusun.", $fontstyle, $paragraphstyle);
            $section->addText("Panduan ini antara lain memuat tujuan, garis-garis besar program, peserta dan narasumber, tata tertib, hak dan kewajiban peserta dan lain sebagainya. Panduan ini disusun sebagai acuan bagi panitia, peserta, narasumber dan semua pihak yang terlibat dalam pelaksanaan pelatihan ini, dengan harapan terjadinya sinergi dan hubungan yang harmonis antara peserta dengan peserta dan antara peserta dengan panitia dan penceramah/ narasumber, sehingga pelaksanaan pelatihan ini dapat berjalan sesuai dengan yang diharapkan. Apabila ada hal penting dalam proses pelaksanaan pelatihan yang belum tercantum dalam panduan ini, akan diatur kemudian.", $fontstyle, $paragraphstyle);
            $section->addText("Apabila ada hal penting dalam proses pelaksanaan pelatihan yang belum tercantum dalam panduan ini, akan diatur kemudian.", $fontstyle, $paragraphstyle);
                    
            //Pendahuluan
            $section->addPageBreak();
            $section->addTitle("PENDAHULUAN");
            $section->addTitle("A. Latar Belakang", 2);
            $section->addText("Peraturan Menteri Agama (PMA) Nomor 19 Tahun 2020 tentang Penyelenggaraan Pelatihan Sumber Daya Manusia pada Kementerian Agama menyatakan bahwa untuk mewujudkan Sumber Daya Manusia pada Kementerian Agama yang memiliki integritas, profesionalitas, inovasi, tanggung jawab dan keteladanan perlu diselenggarakan pelatihan secara terencana dan berjenjang.", $fontstyle, $paragraphstyle);
            $section->addText("Selanjutnya berdasarkan Pasal 2 PMA, penyelenggaraan pelatihan sumber daya manusia bertujuan mengembangkan kompetensi sumber daya manusia meliputi pengetahuan, keterampilan, dan sikap/perilaku.", $fontstyle, $paragraphstyle);
            $section->addText("Salah satu kegiatan pelatihan yang menjadi agenda tahun " . $pelatihan->tahun . " Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru adalah " . $pelatihan->nama_pelatihan . ". Pelaksanaan pelatihan mempunyai tiga unsur pokok yang saling melengkapi yaitu peserta, narasumber dan panitia pelaksana. Selama pelaksanaan pelatihan berlangsung ketiga unsur tersebut diharapkan melakukan kegiatan sesuai dengan tugas masing-masing secara terkoordinasi sehingga kelancaran pelaksanaan dan pencapaian tujuan pelatihan dapat terwujud.", $fontstyle, $paragraphstyle);
            $section->addText("Panduan dan tata tertib ini diharapkan dapat memperlancar komunikasi dan interaksi antar semua pihak dalam pelaksanaan pelatihan.", $fontstyle, $paragraphstyle);		
        
            $section->addTitle("B. Tujuan", 2);
            $section->addText("Panduan ini dibuat sebagai acuan bagi penyelenggara, peserta, widyaiswara, serta semua pihak yang terkait dalam pelaksanaan kegiatan pelatihan, sehingga pelatihan ini dapat berjalan sesuai yang diharapkan.", $fontstyle, $paragraphstyle);

            $section->addTitle("C. Ruang Lingkup", 2);
            $section->addText("Panduan ini memuat antara lain:", $fontstyle, $paragraphstyle);
            $style = generate_list_style($phpword, 'decimal');
            $section->addListItem("Pendahuluan", 0, $fontstyle, $style);
            $section->addListItem("Garis-Garis Besar Program Pelatihan", 0, $fontstyle, $style);
            $section->addListItem("Peserta dan Narasumber/WI", 0, $fontstyle, $style);
            $section->addListItem("Penyelenggaraan Pelatihan", 0, $fontstyle, $style);
            $section->addListItem("Tata Tertib Pelatihan", 0, $fontstyle, $style);
    
            //Garis Besar Pelatihan
            $section->addPageBreak();

            $style = generate_list_style($phpword, 'decimal');

            $section->addTitle("GARIS-GARIS BESAR PROGRAM PELATIHAN");
            $section->addTitle("A. Kelompok Dasar", 2);
            $section->addText("Kelompok dasar yaitu kelompok mata pelatihan yang bertujuan untuk menanamkan, memperkuat dan meningkatkan kesetiaan dan ketaatan peserta sebagai dasar dalam melaksanakan tugas atau jabatannya sebagai abdi negara dan abdi masyarakat, yang terdiri dari:", $fontstyle, $paragraphstyle);

            if (!empty($pelatihan->materi)) {
                
                foreach ($pelatihan->materi as $materi) {
                    //Akses property yang sudah diparsing
                    if (!empty($materi->kel_dasar_parsed)) {
                        foreach ($materi->kel_dasar_parsed as $item) {
                            $section->addListItem($item, 0, $fontstyle, $style);
                        }
                    } else {
                        $section->addText('Materi tidak tersedia', $fontstyle);
                    }
                }
            } else {
                $section->addText('Tidak ada materi pelatihan', $fontstyle);
            }
        
            $section->addTitle("B. Kelompok Inti", 2);
            $section->addText("Kelompok inti yaitu kelompok mata pelatihan yang bertujuan untuk membekali peserta dengan berbagai pengetahuan dan keterampilan di bidang tugas pokok yang bersangkutan. Kelompok ini terdiri dari:", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            if (!empty($pelatihan->materi)) {
                
                foreach ($pelatihan->materi as $materi) {
                    //Akses property yang sudah diparsing
                    if (!empty($materi->kel_inti_parsed)) {
                        foreach ($materi->kel_inti_parsed as $item) {
                            $section->addListItem($item, 0, $fontstyle, $style);
                        }
                    } else {
                        $section->addText('Materi tidak tersedia', $fontstyle);
                    }
                }
            } else {
                $section->addText('Tidak ada materi pelatihan', $fontstyle);
            }

            // $section->addListItem("Peraturan Perundang Undangan Zakat", 0, $fontstyle, $style);

            $section->addTitle("C. Kelompok Penunjang", 2);
            $section->addText("Kelompok penunjang adalah kelompok mata pelatihan yang bertujuan untuk memperluas pengetahuan dan wawasan, serta mempertajam pemahaman dan penghayatan peserta terhadap berbagai faktor lingkungan sebagai penunjang pelaksanaan tugas pokok. Kelompok penunjang terdiri dari:", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            if (!empty($pelatihan->materi)) {
                
                foreach ($pelatihan->materi as $materi) {
                    //Akses property yang sudah diparsing
                    if (!empty($materi->kel_penunjang_parsed)) {
                        foreach ($materi->kel_penunjang_parsed as $item) {
                            $section->addListItem($item, 0, $fontstyle, $style);
                        }
                    } else {
                        $section->addText('Materi tidak tersedia', $fontstyle);
                    }
                }
            } else {
                $section->addText('Tidak ada materi pelatihan', $fontstyle);
            }

            // $section->addListItem("Overview", 0, $fontstyle, $style);
            // $section->addListItem("Building Learning Commitment", 0, $fontstyle, $style);
            // $section->addListItem("Evaluasi Program", 0, $fontstyle, $style);
            // $section->addListItem("Rencana Tindak Lanjut", 0, $fontstyle, $style);
            // $section->addListItem("Ujian", 0, $fontstyle, $style);
    
            //PESERTA DAN FASILITATOR/WIDYAISWARA
            $section->addPageBreak();
            $section->addTitle("PESERTA DAN FASILITATOR/WIDYAISWARA");
            $section->addTitle("Peserta", 2);

            $alphaStyle = generate_list_style($phpword, 'upperLetter');

            $section->addListItem("Persyaratan peserta: ", 0, ['size'=>12,'bold'=> true], $alphaStyle);
            // $section->addTitle("Persyaratan Peserta", )

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Peserta ditunjuk oleh atasan unit kerja masing-masing.", 0, $fontstyle, $style);
            $section->addListItem("Belum pernah mengikuti pelatihan sejenis.", 0, $fontstyle, $style);
            $section->addListItem("Menguasai penggunaan  IT secara mandiri sebagai pendukung pelaksanaan Pelatihan Jarak Jauh.", 0, $fontstyle, $style);
            $section->addListItem("Siap dan mampu mengikuti seluruh kegiatan pelatihan dari awal hingga akhir.", 0, $fontstyle, $style);
            $section->addListItem("Memiliki komitmen untuk mengembangkan ilmu yang diperoleh dari pelatihan tersebut pada unit kerja masing-masing.", 0, $fontstyle, $style);
            $section->addListItem("Kelengkapan administrasi yang harus diupload ke google form.", 0, $fontstyle, $style);
            $section->addListItem("Surat penugasan dari Pejabat Pembina Kepegawaian Instansi format PDF.", 0, $fontstyle, $style);
            $section->addListItem("Fotokopi Surat Keputusan (SK) terakhir format PDF.", 0, $fontstyle, $style);
            $section->addListItem("Pas foto format JPG terbaru dengan ketentuan (kisaran 472 x 709 pixel, file berbentuk jpg atau png dengan ukuran minimun 400 kb dan maksimal 1 mb) untuk pas foto berlatar belakang merah, pria/wanita mengenakan pakaian putih dengan dasi berwarna hitam, pria dapat mengenakan jas warna hitam tanpa peci, apabila wanita berjilbab pendek, mengenakan jibab berwarna putih dengan dasi berwarna hitam apabila wanita berjibab panjang mengenakan jilbab putih tanpa dasi.", 0, $fontstyle, $style);
            $section->addListItem("Nomor handphone aktif dengan jenis layanan prabayar (kartu dengan pengisian ulang pulsa) untuk penggantian biaya komunikasi berupa pulsa.", 0, $fontstyle, $style);
        
            $section->addListItem("Jumlah dan alokasi peserta", 0, $fontstyle, $alphaStyle);
            $section->addText("Jumlah peserta seluruhnya " . $pelatihan->jumlah_peserta . " orang;", $fontstyle, $paragraphstyle);
            $section->addText("Alokasi peserta berada di lingkungan " . $pelatihan->jabatan_peserta . " pada Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru;", $fontstyle, $paragraphstyle);
            
            $section->addListItem("Tenaga Fasilitator/Widyaiswara", 0, $fontstyle, $alphaStyle);
            $section->addText("Tenaga Fasilitator/Widyaiswara pengajar pelatihan ini berasal dari :", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("{$pelatihan->wi_1->nama} berasal dari {$pelatihan->wi_1->asal_satker}", 0, $fontstyle, $style);
            $section->addListItem("{$pelatihan->wi_2->nama} berasal dari {$pelatihan->wi_2->asal_satker}", 0, $fontstyle, $style);
            $section->addListItem("{$pelatihan->wi_3->nama}, berasal {$pelatihan->wi_3->asal_satker}", 0, $fontstyle, $style);
            
            $section->addListItem("Pengajar/Fasilitator", 0, $fontstyle, $alphaStyle);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("{$pelatihan->pengajar_1->nama} {$pelatihan->pengajar_1->asal_satker}", 0, $fontstyle, $style);
            $section->addListItem("{$pelatihan->pengajar_2->nama} {$pelatihan->pengajar_2->asal_satker}", 0, $fontstyle, $style);
            $section->addListItem("{$pelatihan->pengajar_3->nama} {$pelatihan->pengajar_3->asal_satker}", 0, $fontstyle, $style);
            
            //PENYELENGGARAAN PELATIHAN
            $section->addPageBreak();
            $section->addTitle("PENYELENGGARAAN PELATIHAN");                                                        

            $alphaStyle = generate_list_style($phpword, 'upperLetter');

            $section->addListItem("Penyelenggara", 0, $fontstyle, $alphaStyle);
            $section->addText("Penyelenggara Pelatihan Jarak Jauh (PJJ) {$pelatihan->nama_pelatihan} berasal dari Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru dengan susunan panitia sebagai berikut:", $fontstyle, $paragraphstyle);
            $phpword->setDefaultParagraphStyle([
                'tabs' => [
                    new Tab('left', 3000)
                    ]
            ]);
            $section->addText("Penanggung Jawab\t:{$pelatihan->penanggung_jawab->nama}", $fontstyle, $paragraphstyle);
            $section->addText("Ketua\t:{$pelatihan->ketua_panitia->nama}", $fontstyle, $paragraphstyle);
            $section->addText("Bidang Akademis\t:{$pelatihan->akademis->nama}", $fontstyle, $paragraphstyle);
            $section->addText("Bidang Administrasi\t:{$pelatihan->administrasi->nama}", $fontstyle, $paragraphstyle);
            $section->addText("Bidang Keuangan\t:{$pelatihan->keuangan->nama}", $fontstyle, $paragraphstyle);

            $section->addListItem("Lama (Durasi Waktu) Pelatihan", 0, $fontstyle, $alphaStyle);
            $section->addText("Pelatihan ini dilaksanakan selama $durasi hari, mulai dari tanggal " . $data['tanggal_mulai'] . " s.d " . $data['tanggal_selesai'] . ", dengan jumlah jam pelatihan sebanyak $materi->jumlah_jp Jam Pelatihan (JP).", $fontstyle, $paragraphstyle);

            $section->addListItem("Tempat Pelatihan", 0, $fontstyle, $alphaStyle);
            $section->addText("Pelatihan ini dilaksanakan secara virtual melalui whatsapp group, zoom meeting, dan LMS PJJ Kementerian Agama.", $fontstyle, $paragraphstyle);
           
            $section->addListItem("Pembiayaan", 0, $fontstyle, $alphaStyle);
            $section->addText("Pembiayaan Pelatihan ini dibebankan kepada Daftar Isian Penyelenggaraan Anggaran (DIPA) Petikan Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru Nomor : SP-DIPA-025.11.2.690527/2024 tanggal 30 November 2024.", $fontstyle, $paragraphstyle);
            
            $section->addListItem("Sertifikat", 0, $fontstyle, $alphaStyle);
            $section->addText("Peserta pelatihan yang sudah mengikuti dan menyelesaikan seluruh program yang ditentukan akan diberikan sertifikat.", $fontstyle, $paragraphstyle);

            //TATA TERTIB
            $section->addPageBreak();
            $section->addTitle("TATA TERTIB");
            $section->addText("Di Video Conference/Live Chat", array_merge($fontstyle, ['bold' => true]));

            $alphaStyle = generate_list_style($phpword, 'upperLetter');

            $section->addListItem("Video Conference", 0, $fontstyle, $alphaStyle);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Setiap peserta wajib menghidupkan kamera selama berlangsungnya proses pelatihan;", 0, array_merge($fontstyle, ['size' => 12]), $style);
            $section->addListItem("Setiap peserta wajib menggunakan nama dengan format nama_asal satker selama berlangsungnya proses pelatihan;", 0, $fontstyle, $style);
            $section->addListItem("Setiap peserta wajib menonaktifkan/mute suara selama berlangsungnya proses pelatihan dan mengaktifkan suara/unmute suara ketika bertanya atau menjawab pertanyaan;", 0, $fontstyle, $style);
            $section->addListItem("Setiap peserta wajib mematuhi tata tertib, peraturan dan ketentuan yang ditetapkan oleh panitia pelaksana;", 0, $fontstyle, $style);

            $section->addListItem("Live Chat", 0, $fontstyle, $alphaStyle);
            $section->addText("Setiap peserta wajib mengikuti diskusi di forum live chat dengan memberikan respon terhadap topik yang diberikan narasumber.", $fontstyle, $paragraphstyle);
            
            $section->addListItem("Hak dan Kewajiban Peserta", 0, $fontstyle, $alphaStyle);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Hak Peserta", 0, array_merge($fontstyle, ['size' => 12]), $style);
            $section->addText("Peserta yang dinyatakan lulus berhak mendapatkan sertifikat pelatihan;
            Penggantian biaya komunikasi dalam bentuk pulsa telepon atau paket data internet.
            ", $fontstyle, $paragraphstyle);

            $section->addListItem("Kewajiban Peserta", 0, array_merge($fontstyle, ['size' => 12]), $style);
            $section->addText("Setiap peserta wajib mematuhi tata tertib, peraturan dan ketentuan yang ditetapkan oleh panitia pelaksana;", $fontstyle, $paragraphstyle);
            $section->addText("Setiap peserta wajib mengikuti seluruh program pelatihan sesuai dengan jadwal yang ditetapkan.", $fontstyle, $paragraphstyle);
            $section->addText("Peserta wajib mengikuti pembukaan dan penutupan pelatihan dan hadir sebelum acara dimulai dengan berpakaian yang telah ditentukan oleh panitia;", $fontstyle, $paragraphstyle);
            $section->addText("Untuk mendukung kelancaran proses pembelajaran, para peserta diwajibkan memilih pengurus kelas minimal terdiri dari ketua dan sekretaris kelas bertugas sebagai penghubung antara panitia/fasilitator dengan peserta pelatihan;", $fontstyle, $paragraphstyle);
            $section->addText("Peserta harus mengikuti materi pelatihan yang diselenggarakan setiap hari sesuai dengan jadwal serta diwajibkan mengisi daftar hadir di LMS PJJ Kemenag;", $fontstyle, $paragraphstyle);
            $section->addText("Pakaian selama pelatihan berlangsung, peserta wajib berpakaian kemeja lengan panjang berwarna putih dan celana panjang berwarna gelap, rapi, sopan dan memakai dasi (perempuan menyesuaikan);", $fontstyle, $paragraphstyle);
            $section->addText("Peserta yang ada keperluan/urusan penting dan tidak dapat mengikuti kegiatan pelatihan harus memberitahukan kepada panitia;", $fontstyle, $paragraphstyle);
            $section->addText("Untuk menyelaraskan interaksi dan komunikasi antar peserta diharuskan melepaskan perbedaan status, pangkat/golongan, jabatan serta status sosial lainnya.", $fontstyle, $paragraphstyle);
            
            $section->addListItem("Penutup", 0, $fontstyle, $alphaStyle);
            $section->addText("Demikian Panduan ini disusun untuk dijadikan acuan dalam pelaksanaan $pelatihan->nama_kegiatan baik bagi peserta, tenaga pengajar, maupun oleh penyelenggara. Regulasi yang belum diatur di dalam panduan ini akan disampaikan lebih lanjut oleh Panitia Penyelenggara.", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Kepala Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addTextBreak(3);
            $section->addText('H. Aprianto, S.Ag., M.A.', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);

           //LAPORAN PENYELENGGARAAN//
            // Kata Pengantar
            $section->addPageBreak();
            // $section->setStyle(['tabs' => []]);
            $section->addTitle("KATA PENGANTAR");
            $section->addText("Puji syukur kehadirat Tuhan Yang Maha Esa atas rahmat dan karunia-Nya, sehingga $pelatihan->nama_kegiatan ini dapat diselesaikan dengan baik.", $fontstyle, $paragraphstyle);
            $section->addText("Laporan ini disusun sebagai bentuk pertanggungjawaban atas pelaksanaan pelatihan yang telah dilaksanakan. Laporan pelatihan ini terdiri dari tiga bab. Bab I Pendahuluan, memuat organisasi diklat, nama unit/satuan kerja, nama diklat yang diselenggarakan, dasar hukum, sumber pembiayaan, susunan panitia, dan alamat penyelenggara. Bab II berisi tentang pelaksanaan Pelatihan Jarak Jauh $pelatihan->nama_pelatihan untuk $pelatihan->tempat tahun $pelatihan->tahun yang mencakup tujuan dan sasaran, kurikulum, peserta, widyaiswara/narasumber, evaluasi, penyelenggaraan, keuangan, penjaminan mutu, dan lain-lain. Bab III sebagai penutup terdiri dari kesimpulan dan saran-saran. Laporan ini juga dilengkapi dengan lampiran-lampiran sebagai bukti fisik.", $fontstyle, $paragraphstyle);
            $section->addText("Diharapkan laporan ini dapat memberikan gambaran yang jelas mengenai pelaksanaan pelatihan, capaian yang telah diperoleh, serta rekomendasi untuk perbaikan di masa mendatang.", $fontstyle, $paragraphstyle);

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
            $section->addText("Dalam lanskap pendidikan dan pelatihan keagamaan yang terus berkembang, Kementerian Agama Republik Indonesia mengambil langkah strategis. Berdasarkan Peraturan Menteri Agama Nomor 15 Tahun 2021 tentang Organisasi Dan Tata Kerja Unit Pelaksana Teknis Pendidikan Dan Pelatihan Keagamaan lahirlah Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru. Pada bulan Maret tahun 2022 Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru memulai melaksanakan kegiatan operasional sebagai langkah awal untuk melaksanakan tugas pokok sebagai lembaga Pendidikan dan Pelatihan. Pendirian Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru sejalan dengan komitmen Kementerian Agama untuk meningkatkan kualitas sumber daya manusia (SDM) ASN dan mewujudkan mutu pendidikan serta layanan keagamaan yang lebih baik di wilayah Riau dan Kepulauan Riau. Pendirian Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru merupakan manifestasi nyata dari komitmen Kementerian Agama untuk meningkatkan kualitas sumber daya manusia (SDM) Aparatur Sipil Negara (ASN) di bidang keagamaan, khususnya di wilayah Riau dan Kepulauan Riau. Melalui berbagai program pelatihan, Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru berupaya mencetak ASN yang kompeten, profesional, dan mampu memberikan layanan keagamaan yang berkualitas kepada masyarakat.", $fontstyle, $paragraphstyle);
            $section->addText("Salah satu program unggulan yang diselenggarakan oleh Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru adalah Pelatihan Jarak Jauh $pelatihan->nama_pelatihan. Pelatihan ini dirancang khusus untuk meningkatkan kemampuan para ASN dalam $materi->tujuan_pelatihan.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("B. Nama Unit/Satuan Kerja", 2);
            $section->addText("Nama unit/satuan kerja penyelenggara $pelatihan->nama_kegiatan ini adalah Loka Diklat Keagamaan Pekanbaru, Jl. Yos Sudarso, Rumbai, Pekanbaru.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("C. Nama Diklat yang Diselenggarakan", 2);
            $section->addText("Nama Diklat yang diselenggarakan adalah $pelatihan->nama_pelatihan bagi $pelatihan->jabatan_peserta di Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru Tahun 2024.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("D. Dasar Hukum", 2);
            $section->addText("Dasar $pelatihan->nama_kegiatan bagi Wilayah Kerja Kementerian Agama $pelatihan->tempat ini adalah : ", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Undang-Undang Nomor 20 Tahun 2023 tentang Aparatur Sipil Negara;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Pemerintah Republik Indonesia Nomor 17 Tahun 2020 Tentang Perubahan Atas Peraturan Pemerintah Nomor :1 Tahun 2017 Tentang Manajemen Pegawai Negeri Sipil;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Presiden Nomor 12 Tahun 2023 tentang Kementerian Agama (Lembaran Negara Republik Indonesia Tahun 2023 Nomor 21);", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Pendayagunaan Aparatur Negara Nomor PER/18/M.PAN/II/2003 tentang Pedoman Organisasi Unit Pelaksana Teknis Kementerian dan Lembaga Pemerintahan Non Kementerian;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama Nomor 59 Tahun 2015 tentang Organisasi Tata Kerja Balai Diklat dan Pelatihan Keagamaan;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama RI Nomor 42 Tahun 2016 tentang Organisasi dan Tata Kerja Kementerian Agama;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama Nomor 19 Tahun 2020 tentang Penyelenggaraan Pelatihan Sumber Daya Manusia pada Kementerian Agama;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama Nomor 15 Tahun 2021 tentang Organisasi Dan Tata Kerja Unit Pelaksana Teknis Pendidikan Dan Pelatihan Keagamaan;", 0, $fontstyle, $style);
            $section->addListItem("DIPA Loka Diklat Keagamaan Pekanbaru Tahun 2024 Nomor: DIPA 025.11.2. 690527/2022, tanggal 30 November 2023.", 0, $fontstyle, $style);

            $section->addTitle("E. Sumber Pembiayaan", 2);
            $section->addText("Sumber biaya penyelenggaraan $pelatihan->nama_kegiatan bagi Wilayah Kerja Kementerian Agama $pelatihan->nama_pelatihan Tahun $pelatihan->tahun ini dibebankan pada DIPA Loka Diklat Keagamaan Pekanbaru Nomor : DIPA 025.11.2. 690527/2024, tanggal 30 November 2023.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("F. Susunan Panitia", 2);
            $section->addText("Adapun susunan panitia penyelenggara $pelatihan->nama_kegiatan Wilayah Kerja Kementerian Agama $pelatihan->provinsi Tahun $pelatihan->tahun adalah sebegai berikut:", $fontstyle, $paragraphstyle);
            $section->addText("Ketua\t:{$pelatihan->ketua_panitia->nama}", $fontstyle, $paragraphstyle);
            $section->addText("Seketaris/Akademis\t:{$pelatihan->akademis->nama}", $fontstyle, $paragraphstyle);
            $section->addText("Anggota/Keuangan\t:{$pelatihan->administrasi->nama}", $fontstyle, $paragraphstyle);
            $section->addText("Anggota/Keuangan\t:{$pelatihan->keuangan->nama}", $fontstyle, $paragraphstyle);

            $section->addTitle("G. Alamat Penyelenggara", 2);
            $section->addText("Alamat penyelenggara Pelatihan Jarak Jauh $pelatihan->nama_pelatihan Wilayah Kerja Kementerian Agama Provinsi $pelatihan->tempat Tahun $pelatihan->tahun ini adalah Loka Diklat Keagamaan Pekanbaru, Jl. Yos Sudarso, Rumbai, Pekanbaru. Email: loka_pekanbaru@kemenag.go.id.", $fontstyle, $paragraphstyle);

            // BAB II
            $section->addPageBreak();
            $section->addTitle("BAB II", 1);
            $section->addTitle("PELAKSANAAN DIKLAT", 1);
            $section->addTitle("A. Tujuan dan Sasaran", 2);
            $section->addText("$pelatihan->nama_kegiatan di $pelatihan->tempat Tahun $pelatihan->tahun ini memiliki tujuan dan sasaran sebagai berikut :", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Tujuan", 0, array_merge($fontstyle, ['size' => 12]), $style);
            $section->addText("Pelatihan ini bertujuan untuk : ", $fontstyle, $paragraphstyle);
            
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
            $section->addText("Adapun sasaran Pelatihan $pelatihan->nama_pelatihan Tahun $pelatihan->tahun ini adalah tersedianya $pelatihan->jumlah_peserta orang $pelatihan->jabatan_peserta yang cakap dan kompeten.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("B. Kurikulum", 2);
            $section->addText("Kurikulum $pelatihan->nama_kegiatan Tahun $pelatihan->tahun ini disesuaikan dengan kurikulum $materi->asal_kursil Badan Litbang dan Diklat Kementerian Agama Republik Indonesia.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("C. Mata Diklat dan Jumlah Jam Pelajaran", 2);
            $section->addText("Mata $pelatihan->nama_pelatihan Tahun $pelatihan->tahun ini memiliki jumlah jam pelajaran sebanyak $materi->jumlah_jp jam pelajaran dengan jenis mata pelatihan materi kelompok dasar $materi->jp_kel_dasar JP, materi kelompok inti $materi->jp_kel_inti JP, dan kelompok penunjang $materi->jp_kel_penunjang JP.", $fontstyle, $paragraphstyle);
            $section->addText("Kelompok dasar yaitu kelompok mata pelajaran yang bertujuan untuk menanamkan, memperkuat dan meningkatkan profesionalisme, kesetiaan dan ketaatan peserta sebagai dasar dalam melaksanakan tugas jabatannya sebagai abdi negara dan abdi masyarakat yang meliputi :", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');

            if (!empty($pelatihan->materi)) {
                
                foreach ($pelatihan->materi as $materi) {
                    //Akses property yang sudah diparsing
                    if (!empty($materi->kel_dasar_parsed)) {
                        foreach ($materi->kel_dasar_parsed as $item) {
                            $section->addListItem($item, 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
                        }
                    } else {
                        $section->addText('Materi tidak tersedia', $fontstyle);
                    }
                }
            } else {
                $section->addText('Tidak ada materi pelatihan', $fontstyle);
            }
            
            // $section->addListItem("Moderasi Beragama dan Pembangunan Nasional", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Nilai-Nilai Dasar Sumber Daya Manusia (SDM) Kementerian Agama", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Sistem Pelatihan dan Pengembangan SDM Kementerian Agama", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            $section->addText("Kelompok Inti yaitu kelompok mata pelajaran yang bertujuan untuk membekali peserta dengan pengetahuan dibidang tugas pokok yang bersangkutan meliputi :", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            if (!empty($pelatihan->materi)) {
                
                foreach ($pelatihan->materi as $materi) {
                    //Akses property yang sudah diparsing
                    if (!empty($materi->kel_inti_parsed)) {
                        foreach ($materi->kel_inti_parsed as $item) {
                            $section->addListItem($item, 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
                        }
                    } else {
                        $section->addText('Materi tidak tersedia', $fontstyle);
                    }
                }
            } else {
                $section->addText('Tidak ada materi pelatihan', $fontstyle);
            }

            
            // $section->addListItem("Peraturan Perundang Undangan Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Fiqh Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Perhitungan Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Fundraising Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Sistem Akuntansi dan Pelaporan Zakat", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Zakat dan Pajak", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Pengelolaan zakat di BAZNAS", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            $section->addText("Kelompok penunjang adalah kelompok mata pelajaran yang bertujuan untuk memperluas pengetahuan dan wawasan, serta mempertajam pemahaman dan penghayatan peserta terhadap berbagai faktor, termasuk lingkungan. Sebagai penunjang pelaksanaan tugas pokok tersebut terdiri dari :", $fontstyle, $paragraphstyle);

            $style = generate_list_style($phpword, 'decimal');

            if (!empty($pelatihan->materi)) {
                
                foreach ($pelatihan->materi as $materi) {
                    //Akses property yang sudah diparsing
                    if (!empty($materi->kel_penunjang_parsed)) {
                        foreach ($materi->kel_penunjang_parsed as $item) {
                            $section->addListItem($item, 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
                        }
                    } else {
                        $section->addText('Materi tidak tersedia', $fontstyle);
                    }
                }
            } else {
                $section->addText('Tidak ada materi pelatihan', $fontstyle);
            }
            
            // $section->addListItem("Overview", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Building Learning Commitment", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Evaluasi Program", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Rencana Tindak Lanjut", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            // $section->addListItem("Ujian", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            $section->addTitle("D. Jadwal Pelatihan", 2);
            $section->addText("Adapun Jadwal $pelatihan->nama_pelatihan Tahun $pelatihan->tahun dimuat di lampiran.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("E. Peserta", 2);
            
            $style = generate_list_style($phpword, 'decimal');
            
            $section->addListItem("Jumlah dan Asal Peserta", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addText("Peserta $pelatihan->nama_pelatihan berjumlah $pelatihan->jumlah_peserta orang yang terdiri dari $pelatihan->jabatan_peserta yang berasal dari $pelatihan->tempat", $fontstyle, $paragraphstyle);
            
            $section->addListItem("Status Kepegawaian, Jenis Kelamin, dan Pendidikan Peserta", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addText("Peserta yang merupakan Aparatur Sipil Negara (ASN) berjumlah $pelatihan->jumlah_peserta_asn orang dan $pelatihan->jumlah_peserta_non_asn orang non ASN. Peserta terdiri dari $pelatihan->jumlah_peserta_laki orang laki-laki dan $pelatihan->jumlah_peserta_wanita orang perempuan. Pendidikan terakhir dari peserta adalah sebagai berikut:", $fontstyle, $paragraphstyle);

            $section->addText("SMA/MA\t: $pelatihan->jumlah_pendidikan_peserta_sma", $fontstyle, $paragraphstyle);
            $section->addText("D3\t: $pelatihan->jumlah_pendidikan_peserta_d3", $fontstyle, $paragraphstyle);
            $section->addText("S1\t: $pelatihan->jumlah_pendidikan_peserta_s1", $fontstyle, $paragraphstyle);
            $section->addText("S2\t: $pelatihan->jumlah_pendidikan_peserta_s2", $fontstyle, $paragraphstyle);
            $section->addText("S3\t: $pelatihan->jumlah_pendidikan_peserta_s3", $fontstyle, $paragraphstyle);

            $section->addTitle("F. Widyaisuara/Tenaga Pengajar", 2);
            $section->addText("Jumlah, asal daerah, dan jenjang akademik Widyaiswara/Tenaga Pengajar $pelatihan->nama_kegiatan bagi $pelatihan->tempat Tahun $pelatihan->tahun ini adalah adalah sebagai berikut :", $fontstyle, $paragraphstyle);
            $section->addText("Jumlah dan Asal Widyaiswara/Tenaga Pengajar", $fontstyle, $paragraphstyle);
            $section->addText("Widyaiswara/Tenaga Pengajar berjumlah $pelatihan->jumlah_wi_pengajar orang, yakni :", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');
            
            $section->addListItem("{$pelatihan->wi_1->nama} Berasal dari berasal dari {$pelatihan->wi_1->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("{$pelatihan->wi_2->nama} Berasal dari berasal dari {$pelatihan->wi_2->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("{$pelatihan->wi_3->nama} berasal {$pelatihan->wi_3->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            
            $section->addText("Widyaiswara/Tenaga Pengajar berjumlah 2 orang, yakni :", $fontstyle, $paragraphstyle);
            
            $style = generate_list_style($phpword, 'decimal');
            
            $section->addListItem("{$pelatihan->pengajar_1->nama} {$pelatihan->pengajar_1->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("{$pelatihan->pengajar_2->nama} {$pelatihan->pengajar_2->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);
            $section->addListItem("{$pelatihan->pengajar_3->nama} {$pelatihan->pengajar_3->asal_satker}", 0, $fontstyle, $style, ['indentation' => ['left' => 720, 'hanging' => 360]]);

            $section->addTitle("G. Jenjang Akademik/Kualifikasi Widyaiswara/Tenaga Pengajar", 2);
            $section->addText("Jenjang akademik/kualifikasi pendidikan Widyaiswara/Tenaga Pengajar pada Diklat ini adalah:", $fontstyle, $paragraphstyle);

            $section->addText("Setara D2/D3\t: $pelatihan->jumlah_pendidikan_wi_d2 orang", $fontstyle, $paragraphstyle);
            $section->addText("S1\t: $pelatihan->jumlah_pendidikan_wi_s1 orang", $fontstyle, $paragraphstyle);
            $section->addText("S2\t: $pelatihan->jumlah_pendidikan_wi_s2 orang", $fontstyle, $paragraphstyle);
            $section->addText("S3\t: $pelatihan->jumlah_pendidikan_wi_s3 orang", $fontstyle, $paragraphstyle);
            
            $section->addTitle("H. Evaluasi", 2);
            $section->addText("Evaluasi dilakukan terhadap penyelenggara, widyaiswara/Tenaga Pengajar, dan peserta sebagai berikut :", $fontstyle, $paragraphstyle);
            $section->addText("Hasil Evaluasi Terhadap Penyelenggara (terlampir)", $fontstyle, $paragraphstyle);
            
            $section->addTitle("I. Hasil Evaluasi Terhadap Widyaiswara/Tenaga Pengajar (terlampir)", 2);
            $section->addText("Hasil Rekapitulasi Nilai Peserta (terlampir)", $fontstyle, $paragraphstyle);
            
            $section->addTitle("J. Penyelenggaraan", 2);
            $section->addText("Pelatihan Jarak Jauh Intensif ini dirancang untuk memberikan pengalaman belajar yang fleksibel dan efektif bagi peserta dari berbagai wilayah. Pelatihan akan berlangsung selama $durasi hari hari dengan kombinasi kegiatan mandiri melalui LMS dan sesi live melalui Zoom.", $fontstyle, $paragraphstyle);
            $section->addText("Pelatihan ini menggabungkan penggunaan Learning Management System (LMS) https://pjj.kemenag.go.id/ sebagai platform utama pembelajaran dengan aplikasi konferensi video Zoom untuk sesi interaktif secara langsung.", $fontstyle, $paragraphstyle);
            $section->addText("Platform ini akan menjadi pusat kegiatan belajar peserta. Di sini, peserta akan menemukan:", $fontstyle, $paragraphstyle);
            $section->addText("Materi Pelatihan berupa modul-modul pembelajaran, presentasi, dan sumber daya lainnya yang disusun secara sistematis.", $fontstyle, $paragraphstyle);
            $section->addText("Latihan-latihan untuk mengukur pemahaman peserta terhadap materi.", $fontstyle, $paragraphstyle);
            $section->addText("Forum Diskusi yaitu ruang interaksi bagi peserta untuk berdiskusi, bertukar pikiran, dan bertanya kepada instruktur.", $fontstyle, $paragraphstyle);
            $section->addText("Pengumpulan tugas yaitu fasilitas untuk mengumpulkan tugas-tugas yang telah diselesaikan.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("K. Zoom", 2);
            $section->addText("Sesi live yaitu rtemuan secara langsung dengan instruktur untuk menyampaikan materi, menjawab pertanyaan, dan melakukan diskusi lebih mendalam. Workshop berupa kegiatan praktik langsung dengan bimbingan instruktur. Presentasi peserta merupakan kesempatan bagi peserta untuk mempresentasikan hasil kerja mereka.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("L. Keuangan", 2);
            
            $style = generate_list_style($phpword, 'decimal');
            
            $section->addListItem("Rencana", 0, $fontstyle, $style);
            $section->addText("Rencana keuangan yang digunakan dari DIPA LDK Pekanbaru No-DIPA 025.11.2.690527/2024 tanggal 30 November 2023 sebesar Rp. $pelatihan->rab,- (terlampir).", $fontstyle, $paragraphstyle);
            $section->addListItem("Realisasi", 0, $fontstyle, $style);
            $section->addText("Realisasi keuangan yang digunakan dari DIPA LDK Pekanbaru No-  DIPA 025.11.2. 690527/2024 tanggal 30 November 2023 sebesar Rp. $pelatihan->realisasi.- (terlampir).", $fontstyle, $paragraphstyle);
            
            $section->addTitle("M. Penjaminan Mutu", 2);
            $section->addText("Dalam rangka penjaminan mutu dilakukan usaha pembelajaran yang paling sedikit 5 JP perhari dan paling banyak 8 JP per hari yang berupa tatap muka synchronous. Durasi PJJ paling sedikit 5 (lima) hari dan paling banyak 10 (sepuluh) hari sesuai kebutuhan pelatihan. Hal ini berdasarkan Petunjuk Teknis Pengelolaan Pelatihan Jarak Jauh (Distance Learning) yang dikeluarkan oleh Badan Litbang dan Diklat Kementerian Agama Republik Indonesia.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("N. Lain-Lain", 2);
            $section->addText("Pembukaan", $fontstyle, $paragraphstyle);
            $section->addText("Pembukaan dilaksanakan pada hari\t: " . $data['tanggal_mulai'], $fontstyle, $paragraphstyle);
            $section->addText("Waktu Pembukaan\t: pukul $pelatihan->waktu_pembukaan WIB", $fontstyle, $paragraphstyle);
            $section->addText("Pejabat yang membuka\t:", $fontstyle, $paragraphstyle);
            $section->addText("Nama\t: {$pelatihan->pejabat_pembuka->nama}", $fontstyle, $paragraphstyle);
            $section->addText("Jabatan\t: {$pelatihan->pejabat_pembuka->jabatan}", $fontstyle, $paragraphstyle);
            
            $section->addText("Penutupan", $fontstyle, $paragraphstyle);
            $section->addText("Penutupan dilaksanakan pada hari\t: " . $data['tanggal_selesai'], $fontstyle, $paragraphstyle);
            $section->addText("Waktu Penutupan\t: pukul $pelatihan->waktu_penutupan WIB", $fontstyle, $paragraphstyle);
            $section->addText("Pejabat yang menutup\t:", $fontstyle, $paragraphstyle);
            $section->addText("Nama\t: {$pelatihan->pejabat_pembuka->nama}", $fontstyle, $paragraphstyle);
            $section->addText("Jabatan\t: {$pelatihan->pejabat_pembuka->jabatan}", $fontstyle, $paragraphstyle);

            $section->addTitle("O. Pemberian Surat Keterangan Diklat", 2);
            $section->addText("Surat Tanda Tamat Pendidikan dan Pelatihan (STTPP) yang diberikan adalah:", $fontstyle, $paragraphstyle);
            $section->addText("Jenis Surat\t:Sertifikat", $fontstyle, $paragraphstyle);
            $section->addText("Pemberian Surat\t:Setelah PJJ Ditutup", $fontstyle, $paragraphstyle);

            //BAB III
            $section->addPageBreak();
            $section->addTitle("BAB III", 1);
            $section->addTitle("PENUTUP", 1);
            $section->addTitle("A. Keimpulan", 2);
            $section->addText("$pelatihan->nama_kegiatan bagi $pelatihan->tempat Tahun $pelatihan->tahun ini menggunakan Kurikulum $materi->asal_kursil Badan Litbang dan Diklat Kementerian Agama, yaitu  menggunakan pola $materi->jumlah_jp jam pelajaran dan dilaksanakan selama $durasi hari, mulai " . $data['tanggal_mulai'] . ".", $fontstyle, $paragraphstyle);
            $section->addText("Beberapa peserta menghadapi kendala teknis seperti koneksi internet yang tidak stabil, yang dapat mengganggu pengalaman pelatihan. Keterbatasan waktu dan kesulitan dalam mengaplikasikan materi secara langsung juga menjadi tantangan yang dihadapi oleh sebagian peserta.", $fontstyle, $paragraphstyle);
            $section->addText("Secara keseluruhan, pelatihan ini  telah berlangsung dengan baik, tertib, dan aman. Hasilnya, seluruh peserta dinyatakan telah menyelesaikan dan berhak memperoleh STTPP (Surat Tanda Tamat Pendidikan dan Pelatihan) berbentuk Sertifikat, setelah menyelesaikan laporan tindak lanjut.", $fontstyle, $paragraphstyle);

            $section->addTitle("B. Saran", 2);
            $section->addText("$pelatihan->nama_kegiatan bagi $pelatihan->tempat Tahun $pelatihan->tahun, disarankan sebagai berikut : Menambahkan sesi praktik langsung atau workshop yang memungkinkan peserta untuk mengaplikasikan materi secara langsung.", $fontstyle, $paragraphstyle);
            $section->addText("Diharapkan Widyaiswara/Tenaga pengajar menambahkan modul tambahan atau referensi untuk topik-topik yang memerlukan pemahaman lebih mendalam.", $fontstyle, $paragraphstyle);
            $section->addText("Diharapkan kepada panitia agar terus dapat meningkatkan pelayanan, sehingga dicapai tingkat pelayanan yang prima. Disamping itu, panitia diharapkan panduan atau pelatihan singkat tentang penggunaan teknologi yang akan digunakan selama pelatihan.", $fontstyle, $paragraphstyle);
            $section->addText("Diharapkan kepada Widyaiswara/Tenaga Pengajar, Pengelola serta penyelenggara pelatihan agar melakukan evaluasi rutin terhadap pelatihan untuk mengidentifikasi area perbaikan dan memastikan bahwa pelatihan tetap relevan dengan kebutuhan peserta.", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Diterima Kepala LDK Pekanbaru', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addTextBreak(3);
            $section->addText("$ketua_loka->nama", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText("NIP. $ketua_loka->NIP", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);


            // Kata Pengantar
            $section->addPageBreak();
            $section->addTitle("KATA PENGANTAR", 1);
            $section->addText("Puji dan syukur kita panjatkan kehadirat Tuhan Yang Maha Esa, karena berkat rahmat serta karunia-Nya Term Of References (TOR) pelaksanaan kegiatan Pelatihan Jarak Jauh (PJJ) Manajemen Zakat Angkatan I ini dapat disusun.", $fontstyle, $paragraphstyle);
            $section->addText("TOR pelatihan ini memuat latar belakang, dasar hukum, maksud dan tujuan, kepesertaan, metode pelaksanaan kegiatan, waktu dan tempat pelaksanaan, serta biaya kegiatan. TOR ini diharapkan dapat menjadi acuan tata kelola pelatihan dari tahap persiapan hingga pelaporan.", $fontstyle, $paragraphstyle);
            $section->addText("Akhir kata, kritik dan saran yang bersifat membangun sangat diharapkan dalam upaya pengembangan TOR ini guna peningkatan dan perbaikan kualitas pelatihan di Loka Diklat Keagamaan Pekanbaru dimasa yang akan datang", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Diterima Kepala LDK Pekanbaru', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
            $section->addTextBreak(3);
            $section->addText("$ketua_loka->nama", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText("NIP. $ketua_loka->NIP", array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);

            //Term of References
            $section->addPageBreak();
            $section->addTitle("TERM OF REFERENCES", 1);
            $section->addTitle("Pelatihan Jarak Jauh (PJJ) Manajemen Zakat Angkatan I", 1);
            $section->addTitle("A. Latar Belakang", 2);
            $section->addText("Peraturan Menteri Agama RI Nomor 15 Tahun 2021 Tentang Organisasi dan Tata Kerja Unit Pelaksana Teknis Pendidikan dan Pelatihan Keagamaan terkait penyelenggaraan Pendidikan dan Pelatihan Pegawai Negeri Sipil di lingkungan Kantor Kementerian Agama bahwa UPT Pendidikan dan Pelatihan Keagamaan mempunyai tugas melaksanakan pendidikan dan pelatihan tenaga administrasi dan tenaga teknis pendidikan dan keagamaan kepada ASN Kementerian Agama di wilayah kerja masing-masing dengan berpedoman kepada kebijakan Kepala Badan Litbang dan pelatihan Kementerian Agama. Pelatihan Jarak Jauh merupakan pelatihan yang dilaksanakan dalam kelas virtual melalui media online berdasarkan pertimbangan dan tujuan kebutuhan perluasan akses peserta pelatihan. Pelatihan Jarak Jauh adalah pelatihan formal berbasis lembaga yang peserta didik dan instrukturnya berada di lokasi terpisah sehingga memerlukan sistem telekomunikasi yang interaktif untuk dapat terhubung satu dengan lainnya dan berbagai sumber daya yang diperlukan didalamnya. Pada Pelatihan Jarak Jauh peran teknologi sangat dibutuhkan mengingat pembelajaran dilakukan secara daring.", $fontstyle, $paragraphstyle);
            $section->addText("Berdasarkan hasil Analisis Kebutuhan Pelatihan (AKP) Loka Pelatihan Keagamaan Pekanbaru tahun 2023, jenis pelatihan yang perlu dilaksanakan adalah $pelatihan->nama_kegiatan. Berdasarkan realita tersebut, Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru memandang perlu melaksanakan $pelatihan->nama_kegiatan.", $fontstyle, $paragraphstyle);

            $section->addTitle("B. Dasar Hukum", 2);

            $style = generate_list_style($phpword, 'decimal');

            $section->addListItem("Undang-Undang Nomor 20 Tahun 2023 tentang Aparatur Sipil Negara;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Pemerintah Republik Indonesia Nomor 17 Tahun 2020 Tentang Perubahan Atas Peraturan Pemerintah Nomor :1 Tahun 2017 Tentang Manajemen Pegawai Negeri Sipil;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Presiden Nomor 12 Tahun 2023 tentang Kementerian Agama (Lembaran Negara Republik Indonesia Tahun 2023 Nomor 21);", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Pendayagunaan Aparatur Negara Nomor PER/18/M.PAN/II/2003 tentang Pedoman Organisasi Unit Pelaksana Teknis Kementerian dan Lembaga Pemerintahan Nonkementerian;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama Nomor 59 Tahun 2015 tentang Organisasi Tata Kerja Balai Diklat dan Pelatihan Keagamaan;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama RI Nomor  42 Tahun 2016 tentang Organisasi dan Tata Kerja Kementerian Agama;", 0, $fontstyle, $style);
            $section->addListItem("Peraturan Menteri Agama Nomor 15 Tahun 2021 tentang Organisasi Dan Tata Kerja Unit Pelaksana Teknis Pendidikan Dan Pelatihan Keagamaan;", 0, $fontstyle, $style);
            $section->addListItem("DIPA Loka Diklat Keagamaan Pekanbaru Tahun 2024 Nomor: DIPA 025.11.2. 690527/2022, tanggal 30 November 2023.", 0, $fontstyle, $style);

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
            $section->addText("Peserta pelatihan ini berjumlah $pelatihan->jumlah_peserta terdiri dari $pelatihan->jumlah_peserta yang belum pernah mengikuti pelatihan sejenis dan diberi tugas oleh pejabat berwenang untuk mengikuti pelatihan tersebut.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("F. Pelaksanaan Kegiatan", 2);
            $section->addText("Pelaksanaan kegiatan ini dimulai dari tahap persiapan pelatihan, tahap pelaksanaan pelatihan dan tahap purna pelatihan.", $fontstyle, $paragraphstyle);
            $section->addText("Tahap Persiapan Pelatihan", $fontstyle, $paragraphstyle);
            $section->addText("Persiapan pelatihan dimulai dengan mengadakan rapat persiapan untuk membahas kegiatan pembelajaran, sarana prasarana pendukung dan dukungan teknologi yang digunakan.", $fontstyle, $paragraphstyle);
            $section->addText("Mempersiapkan jadwal pelatihan dan mempersiapkan dokumen pendukung berupa keputusan penyelenggaran pelatihan dan panduan penyelenggaraan pelatihan.", $fontstyle, $paragraphstyle);
            $section->addText("Persiapan dan pengajuan pelatihan pada Learning Management System (LMS).", $fontstyle, $paragraphstyle);
            $section->addText("Menyampaikan pemberitahuan dan pemanggilan peserta melalui penanggung jawab atau PIC masing-masing wilayah.", $fontstyle, $paragraphstyle);
            $section->addText("Pendaftaran calon peserta : peserta mendaftarkan diri melalui link pendaftaran dan melengkapi syarat pendaftaran. Peserta dibuktikan melalui Surat Tugas dari unit asal peserta.", $fontstyle, $paragraphstyle);
            $section->addText("Peserta yang memenuhi syarat dimasukkan dalam grup melalui media sosial berdasarkan pelatihan yang didaftarkan.", $fontstyle, $paragraphstyle);

            $section->addTitle("G. Tahap Pelaksanaan Pelatihan", 2);
            $section->addText("Peserta diberikan username dan password Learning Management System (LMS).", $fontstyle, $paragraphstyle);
            $section->addText("Pelaksanaan pelatihan dilaksanakan melalui pembelajaran tatap muka synchronous (video conference, live chat, live diskusi dan kuis) dan asynchronous (belajar mandiri).", $fontstyle, $paragraphstyle);
            $section->addText("Kegiatan pelatihan meliputi Pembukaan, Membangun Komitmen Belajar (Building Learning Commitment (BLC)), pelaksanaan pembelajaran synchronous dan asynchronous, pengembalian peserta yang tidak berhak melanjutkan pelatihan dan Penutupan.", $fontstyle, $paragraphstyle);
            $section->addText("Tahap Purna Pelatihan", $fontstyle, $paragraphstyle);
            $section->addText("Penyampaian Surat Pengembalian Peserta yang telah selesai melakukan kegiatan. Memberikan fasilitas bagi alumni pelatihan berupa media untuk berdiskusi.", $fontstyle, $paragraphstyle);

            $section->addTitle("H. Tempat dan Wkatu Pelaksanaan", 2);
            $section->addText("Pelatihan ini dilaksanakan melalui online (daring) pada " . $data['tanggal_mulai'] . " s.d " . $data['tanggal_selesai'] . " dengan jumlah $materi->jumlah_jp Jam Pelajaran(JP).", $fontstyle, $paragraphstyle);
            
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
            $section->addText("Pembiayaan Pelatihan ini dibebankan kepada DIPA Loka Diklat Keagamaan Pekanbaru Tahun 2024 Nomor: DIPA 025.11.2. 690527/2022, tanggal 30 November 2023.", $fontstyle, $paragraphstyle);
            
            $section->addTitle("M. Penutup", 2);
            $section->addText("Demikian Term of reference (TOR) ini dibuat dengan harapan dapat menjadi pedoman pelaksanaan pelatihan ini.", $fontstyle, $paragraphstyle);

            $section->addText("Pekanbaru, $pelatihan->bulan_ttd_lap $pelatihan->tahun,", $fontstyle, ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]);
            $section->addText('Diterima Kepala LDK Pekanbaru', array_merge($fontstyle, ['bold' => true]), ['alignment' => 'both', 'indentation' => ['left' => Converter::cmToTwip(9.75)]]); 
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
        } catch (Exception $e){
            log_message('error', $e->getMessage());
            return false;
        }
    }
}
?>