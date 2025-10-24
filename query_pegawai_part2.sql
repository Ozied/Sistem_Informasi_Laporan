INSERT INTO tbl_pegawai (nama, nip, jabatan, asal_satker)
SELECT 
    p.nama,
    p.nip,
    r.id_role AS jabatan,
    p.asal_satker
FROM (
    SELECT 'Bandar, Se, Mm' AS nama, '197303212005011004' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Bayu Iman Kuspriono, S.Kom' AS nama, '198604252009011005' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Nur Ubay' AS nama, '197908062009011015' AS nip, 'Pengawas Kebersihan dan Keamanan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Hj, Setia Kartini, S.H' AS nama, '197305262002122002' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'I Gede D.E Adi Atma Dewantara, Sh., Mh' AS nama, '199301282019021002' AS nip, 'Analis Hukum Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Yudil Khairi, S.Sos' AS nama, '198308142009011006' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. H. Nizar , M.Ag.' AS nama, '196403211992031003' AS nip, 'Sekretaris Jenderal' AS jabatan, 'Sekretariat Jenderal' AS asal_satker
    UNION ALL
    SELECT 'Abdul Ghofur Kafi, S.Sos' AS nama, '199109262023211025' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Sekretariat Badan Amil Zakat Nasional' AS asal_satker
    UNION ALL
    SELECT 'Burhanuddin' AS nama, '196904011994021001' AS nip, 'Teknisi Litkayasa Terampil Pelaksana Lanjutan' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Fibria Rara Lugesti, S.E.' AS nama, '199508042020122021' AS nip, 'Analis Tata Laksana' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Zaenuri, M.Ag' AS nama, '195606161983031002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Drs. H. Suwardi, S.Ag, M.Pd.I' AS nama, '195903051992031002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Aufa Zulhelmi, S.Pd' AS nama, '199310262025212018' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Sholihin, M.Si' AS nama, '195905251985031004' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Siti Rokhanah, M.Ag.' AS nama, '196012071985032009' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Ghoni Nurrozak' AS nama, '197212122005011002' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Muhroji Arifin, S.Ag, M.Pd' AS nama, '196110251992041001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Suyadi, M.Pd.I' AS nama, '196206041989031006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Mustafirin, S.Ag.,M.Ag' AS nama, '197203082006041020' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Tisa Mukarrama, S.Pd' AS nama, '200005182025052007' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Fatma Widyastuti, S.Pd  M.Ed' AS nama, '196809171997032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Mutadi, S.Pd., M.Ed.' AS nama, '196810091997031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Samsul Falak, S.S., M.Pd.' AS nama, '197706062003121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Hj. Nursangadah, S.Pd.I., M. Si.,' AS nama, '196407151986032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Masfifah, M.Pd' AS nama, '196408041992032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Hj. Nikmatul Afiyah, S.Sos., M.Si.' AS nama, '197303112009012005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Nafiuddin, M.Si. M.Pd.' AS nama, '196502271986031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Riskha Nur Fitriyah, S.Si. M.Pd' AS nama, '198405282008012016' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Siti Aminah, Ma' AS nama, '196909131994032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Budi Lestari, M.Pd' AS nama, '196510171992032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'H. Suyatno, Lc., M.S.I.' AS nama, '197401032005011002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Rr. Sri Sukarni Katamwatiningsih, M.Pd' AS nama, '197006251994032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Maliki, S.Pd.I, M.Pd.I' AS nama, '197007052006041001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Wa Ode Liana' AS nama, '199607292025052006' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Drs. Bisri Mustofa, M.Pd.I' AS nama, '196607061998031001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Teguh Suyitno, M.Pd.' AS nama, '196608091994031001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Lily Nurulia, S.S.,M.Pd.' AS nama, '197908212003122003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Agus Mujiono, M.Ed' AS nama, '196702021994031005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Nurul Kamilati, S.Pd, M.Ed' AS nama, '197104011996032002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Achmad Subkhan, S.H.I., M.S.I.' AS nama, '198004192003121003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Amiroh Ambarwati, S.Pd, M.A.' AS nama, '197108141998032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Junaidi, M.Pd' AS nama, '196707121994031003' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Qowi Handiko, S.Pd.I., M.Pd' AS nama, '198012142005011003' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr.  Ratna Prilianti , S.Si., M.Pd.' AS nama, '198104102005012005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Esti Yustiani Luthfi, S. Sos' AS nama, '197704292003122005' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Miftakhul Falah, S.Pd' AS nama, '198207132005011001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Resy Oktrisely, S. Psi' AS nama, '199410132023212055' AS nip, 'Asesor SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Yosie Agustini, S.Si' AS nama, '198208252008012009' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Wahyudin, Sag.' AS nama, '197605072009121001' AS nip, 'Pengelola BMN' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Musybi, S.Pd.I., M.Si' AS nama, '197609092005011005' AS nip, 'Penyusun Rencana Kehumasan Dan Perpustakaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Heny Lestari, S.Pd., M.Ap' AS nama, '197203061999032001' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Dr. Muhammad Anwar, S.Pd, M.Pd' AS nama, '197308162003121005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Ainun Fitriyati, S,Ag., M.M.' AS nama, '197609252003122001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Syahrial' AS nama, '196212281985031004' AS nip, 'Arsiparis Terampil Penyelia' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Urip Rudi Subiantoro., S.Sos.,M.Pd.' AS nama, '196301171983031003' AS nip, 'Kepala Pusat' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Devi Yonesi, Se, Map' AS nama, '197612052002122002' AS nip, 'Analis Laporan Pertanggungjawaban Anggaran (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Nyimas Asiah, S.E.' AS nama, '198212042008012007' AS nip, 'Pengelola Perpustakaan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Abdurahman' AS nama, '196306161989031004' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Widji Lestari, M.Pd.I' AS nama, '197006152000122001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Wawan Ridwan., M.Pd.' AS nama, '196306171985111001' AS nip, 'Kepala Balai' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Nurhasanah, S.Sos., M.Pd.' AS nama, '197206281993032001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'H. Herwanto' AS nama, '196312071988031002' AS nip, 'Pengelola Wisma (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Nani Sutiati., S.Pd., Mm.' AS nama, '196408131985032003' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Madya' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Elsy Zuriyani, S.Si, M.Pd' AS nama, '197609132003122002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dwi Alpina Ramadhani, S.Pd.' AS nama, '200211252025052006' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Evan Farhanudin, S.Sos' AS nama, '198908162024211017' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Fattah Na`Im Pang Ripto, S.Kom.' AS nama, '199611202025051004' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Indyana Meigarani, S.Kom' AS nama, '198805032019032012' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. H. Muhammad Adlin Sila, M.A., Ph.D' AS nama, '197009161992031002' AS nip, 'Kepala Pusat' AS jabatan, 'Pusat Litbang Bimbingan Masyarakat Agama dan Layanan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dra. Wardania' AS nama, '196512311994032009' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Zulkarnain' AS nama, '197010102014111003' AS nip, 'Pengadministrasi Umum (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Sulistiawati Paita, Se, Mm' AS nama, '198208302009012007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Siti Rutbah, S.Pd.' AS nama, '199301162024212037' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dr. Imam SafeI, M.Pd' AS nama, '196509271993031001' AS nip, 'Kepala Pusat' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'H. Syuriani' AS nama, '196312121985031006' AS nip, 'Pengawas Sarana Kantor' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Yeni Astuti, S.Pd, M.Si' AS nama, '197501022000122001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Lela Rochmatin Emod, M.M.Pd' AS nama, '196609151988012001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Komarudin, M.Hum' AS nama, '197310142000031001' AS nip, 'Kepala Unit pada Perguruan Tingi' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Hasril Aruhing, S.S., M.Pd.' AS nama, '199104112025051004' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Lilis Komalasari, S.Si., Me.' AS nama, '197412052000022001' AS nip, 'Analis Kebijakan Ahli Madya / Koordinator' AS jabatan, 'Lembaga Admistrasi Negara (LAN)' AS asal_satker
    UNION ALL
    SELECT 'Mohamad Hendrayogi Noer' AS nama, '196511291986031002' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Duwi Masitah, S.Pd' AS nama, '199505082025052006' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Nasyarudin Latif, S.Kom.' AS nama, '199101212020121021' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'H. Agus Nasihatul Ahyar, S.Pd.I.' AS nama, '197602022003121001' AS nip, 'Pengembang Pegawai' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Dewi Maria, S.Pd.' AS nama, '200003212025052016' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Penilaian Buku Agama Lektur dan Literasi Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Hayun Tuhulele' AS nama, '197303072025211010' AS nip, 'Lain-Lain' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Rasyied Awabien, S. Ag' AS nama, '199307182022031003' AS nip, 'Pentashih Mushaf Al-Qur?an Ahli Pertama' AS jabatan, 'Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'City Asmaini Dalimunte, S.Pd.' AS nama, '199606092025052003' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Umi Maisyaroh As, S,Pd.I.,M.M.' AS nama, '195710101983032002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Drs. Marjuki, M.Ag' AS nama, '196505131993031004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Nur Khufido, S.Si' AS nama, '199301312020122024' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. MaArif, S.Pd.I, M.Pd.I.' AS nama, '197503162005011004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Cahyo Wahyudi, S. Kom.' AS nama, '198005052011011010' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Unit Pelaksana Teknis (UPT)Teknologi Informasi dan Pangkalan Data' AS asal_satker
    UNION ALL
    SELECT 'Taufiqurrahman El Masykur, S.Pd' AS nama, '199712132023211007' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Sri Wahyunitaningsih, S.H.' AS nama, '196811182005012001' AS nip, 'Analis Tata Usaha (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Yuliarti, M.Pd.I' AS nama, '196212311993022001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Abdul Hamid, S. Pd. I, M.Pd.I' AS nama, '197909122005011005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Wildanus, S.Si, M.Kom' AS nama, '197306292006041011' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Beatriks Windesy, Se' AS nama, '196906101993032002' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Setiawan, S.Pd' AS nama, '197603082007101002' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'H Gusman, S.Ag., M.Pd' AS nama, '196607071989031007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Joko Sutaryo, S.Kom' AS nama, '197610152009011006' AS nip, 'Analis Kebijakan Ahli Muda / SubKoordinator' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Drs. Mahfud, Nlp, Mnlp' AS nama, '196602031994031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Mifta Arrahmi, S.Ap.' AS nama, '199412132022032001' AS nip, 'Analis Monoitoring, Evaluasi dan Pelaporan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Wendi Wicaksono, M.Pd' AS nama, '199110082022031001' AS nip, 'Calon Widyaiswara Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Dr. Ucu, S.Pd, M.A.P' AS nama, '197207152003122001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Magita Sari, S.E' AS nama, '199103122023212045' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Iwan Sugianto, S.Kom, M.Pd.I' AS nama, '197910112006041003' AS nip, 'Penyusun laporan Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Mohsen, Mm' AS nama, '196503061989021001' AS nip, 'Kepala Pusat' AS jabatan, 'Pusat Litbang Pendidikan Agama dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Reihan Zulni Lubis, A.Md.' AS nama, '199808102025051002' AS nip, 'Penata Laksana Barang Terampil' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Aryoko A.F.Rumaropen, Sp., M. Eng' AS nama, '197602132000031002' AS nip, 'Lain-Lain' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'H. Abdul Hamid, S.Ag, M.M.Pd' AS nama, '196912041998031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Esther Susana Loupatty, Sh, M.Ap' AS nama, '197606052003122001' AS nip, 'Analis Pengembangan SDM Aparatur (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Merlina, Se, M.Si' AS nama, '198205152005012007' AS nip, 'Analis Tata Usaha (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Khaeroni, S.Sos, M.Si' AS nama, '197004011993031005' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Imam Yanuar, S.Pd' AS nama, '197201222002121001' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Reza Fauzi, M.Pd.' AS nama, '199204042023211027' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Luthfi Al Paraby, S.Kom.' AS nama, '199904112024211006' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dastini Zega, A.Md' AS nama, '199812092024212022' AS nip, 'Arsiparis Terampil Pelaksana' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj Kartini' AS nama, '196412311994032014' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ema Farida, S. Kom' AS nama, '197809072001122003' AS nip, 'Analis Kepegawaian Ahli Madya' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Dadang Baehaki, M.Si' AS nama, '196605241992031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Aminullah , S.Pd., M.M.' AS nama, '196206221998031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dr. Endang Sutisnowati, M.M.' AS nama, '196209111995032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Muh.  Afroji, S.Pd., M.M.' AS nama, '196305121987031005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ellyne Marlina, Smhk' AS nama, '196309081993032001' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dra. Neneng, L.M., M.Pd.' AS nama, '196405101994032002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Muh. Tamam , S.Pd.' AS nama, '196412281993031001' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Bahruddin , M.Pd.' AS nama, '196509181994031002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Mulyani' AS nama, '196509231993032001' AS nip, 'Pengolah Data' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Drs. Amrullah., Mm.' AS nama, '196509251996031001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dra. Agustantini Isana Dewi, ,M.Pd.' AS nama, '196508172005012006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Aden Daenuri , M.Ed' AS nama, '196508271992031002' AS nip, 'Kepala Bidang' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Hj. Puji Kusbandari , S.Pd., M.M.' AS nama, '196602091986032001' AS nip, 'Kepala Bagian' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nanan Nahriah, M. Pd. I' AS nama, '196609211997032002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'H. Andi Nuryadin, S.E.' AS nama, '196710122002121002' AS nip, 'Pengelola Informasi Kelitbangan/Kediklatan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dr. Cut Nyanyak Ummu Athiyah, M.Pd.' AS nama, '196805181993032004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Pujiman, St., M.M.' AS nama, '196902152000121002' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Yasri, M.Pd.' AS nama, '196904031995031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Syafnedi, S.Si' AS nama, '196907092005011008' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Siti Rohani' AS nama, '196906232014112001' AS nip, 'Pengadministrasi' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Siti Mukzizatin, S.Ag., M.Pd.I.' AS nama, '196911082002122002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Waryadi, S.Pd., M.Pd.' AS nama, '197109261999031004' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ramdhani' AS nama, '197008082007011055' AS nip, 'Pengadministrasi' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'H. Abdul Jalil, Ma' AS nama, '197008281997031004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Yetti Nurhayati, M.Pd.' AS nama, '197201302006042002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Rahmat Affandi , S.Ag' AS nama, '197605302005011003' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dr. Nasrulloh, S.Ag, M.Hum' AS nama, '197606112005011006' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Yayat Hidayat, S.Pd' AS nama, '197103312003121002' AS nip, 'Verifikator Keuangan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Supriyadi, S.Pd.' AS nama, '197609222002121001' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Anah Suryanah' AS nama, '197407121994032001' AS nip, 'Verifikator Keuangan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Abdul Haris Pito , S.Ag.,M.Pd.' AS nama, '197612192003121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Endang Kusnadi, Se' AS nama, '197408202007101011' AS nip, 'Kustodian Kekayaan Negara (Jabatan Pelaksana)' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Hery Rusidarta, Se' AS nama, '197702262009011004' AS nip, 'Penyusun Rencana Program dan Anggaran' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dr. Siti Nasihatun, S,Pd.I.,M.Pd.' AS nama, '197908232003122003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Muzdalifah K. Yahya, M.H.' AS nama, '197705302009012005' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Syukrillah, S.Ag.' AS nama, '197302162008011010' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ervy Alinda Lubis, S.Psi.' AS nama, '197303062005012004' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Nonok Sukaesih' AS nama, '196503041986032002' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Dewi Warmandani, S.E' AS nama, '197304161998032001' AS nip, 'Pengadministrasi' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Eneng Hernawati, M.Pd.' AS nama, '197912232005012005' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Nurul Hadi, Se' AS nama, '198001302011011003' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Sugiyanto' AS nama, '197507022007011021' AS nip, 'Pengelola Bahan Perencanaan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Betriza Bensona, Se' AS nama, '197307152006042030' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Asrul Fauzi, Se.' AS nama, '198005282008011006' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Fawziah, M.Pd.' AS nama, '197511212006042001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Efa Ainul Falah., S.Ag.,Ma' AS nama, '197511282003121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Osrianti, S.Pd.' AS nama, '197512052003122002' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Martatik, S.Ag., M.Si.' AS nama, '197512282006042002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Mulkan' AS nama, '197804052009011014' AS nip, 'Pengadministrasi' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Nuraini, M.Pd.' AS nama, '198010052005012005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Epa Elfitriadi , M.Si.' AS nama, '197808102005011004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Rina Yusnarita, S.Si' AS nama, '198103112009122003' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Roni SaRoni, S.Pd.' AS nama, '198210062005011003' AS nip, 'Penyusun Program Anggaran dan Pelaporan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Yona Yohara Safutri, S.Kom' AS nama, '198310112009012006' AS nip, 'Pengelola Perjalanan Dinas' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dias Martina, S.Kom' AS nama, '198403082009012006' AS nip, 'Pengadministrasi' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Sestiawari, S.Kom.' AS nama, '198409202011012024' AS nip, 'Pengevaluasi Tenaga Kependidikan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Pipit Febriyani, S.E' AS nama, '198502022011012007' AS nip, 'Penyusun Bahan Kebijakan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Dipo Barnu, S.Kom' AS nama, '198606112011011013' AS nip, 'Pengevaluasi Program' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Padia Oktaviadi, S.Kom, M.Pd' AS nama, '198610272011011011' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Fajriah Halid , M.A.P' AS nama, '198702182009012005' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ni Siluh Komang Suitri, Se' AS nama, '196512312005012004' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Ni Nyoman Satya Widari, S.P.,M.Si.' AS nama, '197303212006042001' AS nip, 'Lektor' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Maudy Mishfanny, S.E.' AS nama, '199612192022032001' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Litbang Lektur Khazanah Keagamaan dan Manajemen Organisasi' AS asal_satker
    UNION ALL
    SELECT 'Agus Miftahillah M.Pd.' AS nama, '199408212025051002' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Harsih Setia Wandari, S.Pd.I' AS nama, '199305012023212066' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'I Made Yasmawan, S.Kom.,M.I.Kom.' AS nama, '198205112009121005' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Muda' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Fathiyah, S.E' AS nama, '198010212008012016' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Marwansyah, S.Ag., M.Pd.I.' AS nama, '197503202005011006' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Umul Hidayah, S.Sos' AS nama, '198006272014022001' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Risca Arthamevia Ananda, S.Ak' AS nama, '200008092025052006' AS nip, 'Pranata Keuangan APBN Terampil' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Umi Hani, M.Pd.' AS nama, '199308032025052003' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Manajemen Kepemimpinan dan Moderasi Beragama' AS asal_satker
    UNION ALL
    SELECT 'Enny Sudaryanti, S.Pd. M.M' AS nama, '196301241983032008' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Fauziyyah Arrihadatul Aisy, S.Sos.' AS nama, '200012282025052017' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Olga , Se,.M.M' AS nama, '197710072003122007' AS nip, 'Analis Ketatalaksanaan' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Siti Barokah' AS nama, '196502151994032002' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Leidy Viany Nurhadi, S.Kom' AS nama, '198111252006042003' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Bambang Zaky Sutrisna, Se' AS nama, '198807302011011004' AS nip, 'Penyusun laporan Keuangan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ninik Uswatun Fadilah, M.Pd' AS nama, '198511282019032007' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Ayu Zahara, S.Hum' AS nama, '199202072019032015' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Gunawan, M.Pd' AS nama, '196808111994031003' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Zahriani, Se' AS nama, '198211142009042008' AS nip, 'Kustodian Barang Milik Negara' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Edwita Rahmawati, S.H.I.' AS nama, '198007262002122001' AS nip, 'Pengolah Data' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. Ni Made Riani, Se., Mm, Ak.' AS nama, '198010022009012004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Ronalia Brata, S.E' AS nama, '198207102023211019' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Diny Isnaeni Makmur, S.E' AS nama, '199508312024212042' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Fachri , S.Si, M.Pd' AS nama, '197611042005011002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Alfira Deviana, S.H' AS nama, '199906022025052002' AS nip, 'Analis Hukum Ahli Pertama' AS jabatan, 'Sekretariat Badan Moderasi Beragama dan Pengembangan Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Ni Made Suntriani, Se.,Mm.' AS nama, '196410241985032003' AS nip, 'Arsiparis Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Wadi Rahmoko, M.M.' AS nama, '196705271994031017' AS nip, 'Penyusun Program Anggaran dan Pelaporan' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Nusyirwin, S.Sos., M.M.' AS nama, '196410081994031003' AS nip, 'Analis Organisasi dan Tata Laksana (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Dwi Aryani, M.Pd.' AS nama, '196409221986022002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. Muhammad Rais, M.Si' AS nama, '197111192006041022' AS nip, 'Peneliti Ahli Madya' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Siti Ramdaniah, S.Pd., Mm' AS nama, '198306192009012007' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Nur  Wafia Nur, M.Pd' AS nama, '199011022019032026' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Amrin Hamid, S.Si, M.Pd' AS nama, '198010042006041004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Khairuddin, S.Sos.' AS nama, '196605111985031001' AS nip, 'Arsiparis Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dr. Muhammad Dalimunte, S.Ag., S.S., M.Hum.' AS nama, '197103281999031003' AS nip, 'Lektor Kepala/Kepala Pusat' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Admin Taturu, Sh' AS nama, '197105071993031011' AS nip, 'Pustakawan Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Eri Julianda, S.T' AS nama, '199007212023211023' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Ririn Dwi Agustin, S.Pd, M.A' AS nama, '198308192009012007' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Panitia' AS nama, '010238989236548458' AS nip, 'Analis Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Wiwin Sunarsi Tubagus, S.Si, M.Pd' AS nama, '198501142008012004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Septo Dian Putra, S.Pd.' AS nama, '199209212024211023' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Hj. Milawati, S.Ag, M.Pd.I' AS nama, '197609071999032002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Kusuma Astuti Handayani, S.T.' AS nama, '199311092022032001' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ertin Aini Farhatin, S.Pd.' AS nama, '199609172025052005' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Syafriyanto, S.Pd' AS nama, '199212072024211013' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Ati Dahniar, M.Si' AS nama, '196212231992032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'H. Rahmansyah Ritonga, S.E., Ak., M.Ap.' AS nama, '196609072006041001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Drs. Syarifuddin, M.Hum.' AS nama, '196711132006041002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Mahmun Syarif, M.Ap.' AS nama, '196803281995031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Agusnandar' AS nama, '196808052007101002' AS nip, 'Pengelola Barang Persediaan' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Muhammad Halomoan, M.Pd.' AS nama, '196811301994031006' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Jasmuri, S.T.' AS nama, '196903222014111001' AS nip, 'Pengelola Sarana dan Prasarana Kantor (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Intan Pulungan., M.Pd.' AS nama, '196901041995032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Drs. Luthfi Maulana Nasution, M.Pd.' AS nama, '197005281996031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Rifda Yani, M.Psi.' AS nama, '197008052005012005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Rosyani Nasution, S.Ag.,M.Pd' AS nama, '197202101998032002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Marinasari Fithry Hasibuan, S.Ag., M.Pd.' AS nama, '197311171996032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dandan Irawani Lubis, S.Ag., M.Pd.' AS nama, '197202161997032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Nijar Hasan Siregar, S.Hi.' AS nama, '197312072005011008' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Najamuddin, S.Ag., M.Ag.' AS nama, '197203062003121004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Supomo' AS nama, '197101052009011007' AS nip, 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Rahmy Fuady Tanjung, S.Ag., M.Si.' AS nama, '197001241996032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ridwan, S.Ag. M.A.' AS nama, '197104012006041002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Pahmil Ali, S.E., M.Ak.' AS nama, '197107032008011011' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ibrahim, S.Ag' AS nama, '197107212005011010' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Tiajijah Harahap, S.E.' AS nama, '197209282003122003' AS nip, 'Analis Organisasi' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dr. Mistar, S.Ag., M.A.' AS nama, '197210052006041013' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Tanggor Hasibuan, S.Sos. M.Ap.' AS nama, '197212021992031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Suhesti Wira Dharma., M.A.' AS nama, '197501272005011005' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Gunarno, S.Si. M.Pd.' AS nama, '197704302008011021' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Usman Abdi, S.Pd.I., M.A.' AS nama, '197706172009011015' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Ayulina, S.E.,M.M.' AS nama, '197505131994032001' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Syaiful Bahri Harahap, S.Pd.I.,M.Pd.' AS nama, '197911282009101001' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Aswin' AS nama, '197507062007011031' AS nip, 'Caraka' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Julianty Kasihati Hasibuan , S.Sos., M.Pd.' AS nama, '197307062005012007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Nurhamidah Siregar, S.Ag, M.Kom,I' AS nama, '197510172003122002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Itrawati, S.P.' AS nama, '197808082005012004' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Sudiro, S.E.' AS nama, '198103232005011004' AS nip, 'Penyusun Program Anggaran dan Pelaporan' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Khairun Nisa, M.Pd.' AS nama, '197901022009122001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Jayinto, S.Sos I., M.A.' AS nama, '197901082005011003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'H. Yusri Thamrin, S.Pd.' AS nama, '198108282009011010' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Toto Sejahtra, S.Pd.' AS nama, '198203032009121008' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Siti Aisyah Siregar, S.E.' AS nama, '198303042009012009' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Ichwan Fachriza, S.Pd' AS nama, '198311242009011007' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Zulfahmi Siregar, S.E.' AS nama, '198406182003121004' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Hairul Sahputra, S.Kom.' AS nama, '198504112014111002' AS nip, 'Bendahara (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Rizkia Daulay, S.E., M.Si.' AS nama, '198612202009012007' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Rio Yudha Syahputra, S.E.' AS nama, '199201032019031008' AS nip, 'Calon Perencana Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Bayu Nugraha, St' AS nama, '199411252022031001' AS nip, 'Calon Pranata Komputer Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'M. Fajar Zain, S.Kom.' AS nama, '199510052019031007' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Nurul Fajriah, Ma' AS nama, '198302192009122007' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dr. Rahmat Aulia, M.Si.' AS nama, '197907252005011002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. Razali Yunus, S.Ag.,M.Pd' AS nama, '197203091998031004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dahlia Oktamia, S.Pd., M.Ag.' AS nama, '199310112025052001' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Kristanto, S.Kom' AS nama, '198509052009121006' AS nip, 'Analis Kebijakan Ahli Muda' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Khayrunnisa Arbie, M.Pd' AS nama, '199909112025052007' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Drs. Surya Subur' AS nama, '196403081994031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Yuni Yanti, S.Kom., M.M.' AS nama, '198006032009012007' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'M. Nurkholis, S.Kom.' AS nama, '199006202024211023' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Suherman, S.Hi' AS nama, '196302251985031003' AS nip, 'Pengelola Barang Persediaan' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Cucu Ardiah Ningrum, S.Pd.' AS nama, '199207282020122022' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Yayah Kusbudiah, M.M.Pd.' AS nama, '196512221995032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Danuri, S.Kom' AS nama, '198707222019031005' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Sya`Roni' AS nama, '198607262014121001' AS nip, 'Pengadministrasi Pelatihan (Jabatan Pelaksana)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Aidi Royansyah, S.E.I.' AS nama, '199311022025051001' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Hasan Albana, M.Pd.' AS nama, '199308302020121011' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Pusat Litbang Pendidikan Agama dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Yayu Masita, A.Md.' AS nama, '199309052025052003' AS nip, 'Pranata Keuangan APBN Terampil' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Ni Wayan Arnadi' AS nama, '197603182007012024' AS nip, 'Pengelola Wisma (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Budiyanto, S.Pd.I' AS nama, '197503032023211005' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Yusuf Ardiyansyah' AS nama, '199404222023211020' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Rajab Lestaluhu, S.Ip' AS nama, '196512261986031001' AS nip, 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'R.Def Mochtar Hassannusi, Se. M.Si' AS nama, '197405012005011008' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Baharudin Wasamba, S.Pd.I' AS nama, '197203032007011043' AS nip, 'Analis Tata Usaha (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Fadhilah Sadie, S. Sos' AS nama, '197002161994032005' AS nip, 'Penyusun Laporan Hasil Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Muis Riadi, S.H, M.Si' AS nama, '197007231992031002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Rusmin Soleman, S.Sos' AS nama, '197002021994031004' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Idris Kelihu, S,Sos.,M.Si' AS nama, '196912191994031004' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Yusuf Samanery, S.Sos' AS nama, '199307112024211019' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Emil Jamaluddin Laisouw, Se' AS nama, '197912022007121001' AS nip, 'Penyusun laporan Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Harold F. Tentua, S.Sos., M.Si' AS nama, '197704072005011004' AS nip, 'Analis Organisasi dan Tata Laksana (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Arsyil Waritsman, S.Pd.,M.Pd' AS nama, '198712222020121003' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Andi Tanasyah , S.Pd.I' AS nama, '196606101990032003' AS nip, 'Verifikator Keuangan' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Rusdi Rustam, S.H' AS nama, '198108182009011012' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Zulkifli Puluhattumena, Se' AS nama, '197305232009011006' AS nip, 'Penyusun Laporan Hasil Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Hamis Masry, S.Sos' AS nama, '197311112009011007' AS nip, 'Verifikator Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Isnain Marasabessy, S.Pd.,M.Pd' AS nama, '198810232020121003' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Idham Latief, S.H., M.M' AS nama, '197001161996031003' AS nip, 'Pengelola Humas dan Protokol' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Yan Reimond Ferdinandus, S.Sos.,M.Si.' AS nama, '198205152009011016' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Naila Dina Fi Ardillah, S.Kom' AS nama, '200207252025052009' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Andi Mala Ummu Ridha, S.P' AS nama, '197412062009012003' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Rizal Hatapayo, S.Hum., Mmecast' AS nama, '198912222020121006' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Khoirul Anwar, M.Pd' AS nama, '196805101994031003' AS nip, 'Arsiparis Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Riana Antika Amahoroe, S.Pd.,M.Pd.' AS nama, '199305112020122010' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Abdul Gani Agung Nugroho, S.Kom' AS nama, '199510022020121003' AS nip, 'Analis Data dan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Rahmadani, S.Pd.,M.Pd.' AS nama, '199402132020122007' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Herman Yoseph Latuheru , S.Sos' AS nama, '197508292009011007' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nurhayati Payapo' AS nama, '196708012005012004' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Praptaning Alit Mulyadi, St' AS nama, '197305022005011002' AS nip, 'Analis Data dan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Yeni Suryani., S.Sos., M.Si' AS nama, '198407162005012002' AS nip, 'Pengembang Pegawai' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Asrun Anda, S.Sos' AS nama, '197503052006041001' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Mirdayani Awaliyah, A.Md.A.B' AS nama, '199603182020122008' AS nip, 'Pengelola Perpustakaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Taslim, S.T' AS nama, '198503222015031001' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Firman Nugraha, S.Sos.I., M.Ag.' AS nama, '197910092005011006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Fiki Hijriyati Amaly, S.Kom.I' AS nama, '199207142023212058' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Bohari' AS nama, '197008251994031002' AS nip, 'Pengawas Sarana Kantor' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Rizka Kumulloh, S.Kom' AS nama, '199111072020122021' AS nip, 'Pengelola Barang Milik Negara (Jabatan Pelaksana)' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Dra. Ivon Kamilah' AS nama, '196209091994032002' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ranti Nuranita, S.Ip, M.A.P' AS nama, '198208192009012004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Dr. Ni Made Widiastuti, S.E., M.M.' AS nama, '197607012009122001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Khoirul Ramadhani, S.P' AS nama, '199801182025051005' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Lafran Galuh, S.H.' AS nama, '198706132025211014' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Rozza Maisyara, S.Sos.I' AS nama, '199302272025052003' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Affan Leikawa, S.Ip., M.Si' AS nama, '198509062009011005' AS nip, 'Analis Laporan Akuntabilitas Kinerja' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Syaifullah, M.Pd' AS nama, '196804052005011007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Syafry Firman, S.H' AS nama, '199807252025051004' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Hj. Ryna Rachmawati, S.Pd,M.Ed.' AS nama, '196806101997032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Muharam, M.A., Ph.D.' AS nama, '196302041994031002' AS nip, 'Sekretaris Eselon I' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Ali Litiloly, S.Ag.M.Si' AS nama, '197606222003121005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Dr. Asip, M,Ed' AS nama, '196803131995031005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'H Ucu Suhana , S.Sos' AS nama, '198501152006041006' AS nip, 'Pengelola BMN' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Tegarrizco S.Kom' AS nama, '199710222025051009' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Irada Haira Arni, S.Pd' AS nama, '200002132025052008' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Syarifuddin Syah, S.Pd.I' AS nama, '197501141999031002' AS nip, 'Analis Organisasi dan Tata Laksana (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Sujud Baitullah Yuwono, S.I.P.' AS nama, '199312132020121018' AS nip, 'Perancang Peraturan Perundang-Undangan Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Amelia Johar, S.Sos' AS nama, '199311172025052004' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Imas Nindya Wikandaru, S.Kom' AS nama, '199503302020122023' AS nip, 'Analis Data dan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Achmad Kaharuddin , S.Ag' AS nama, '196812172000031003' AS nip, 'Analis Kepegawaian Ahli Muda / Subkoordinator' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Muhamad Mochtar Tuhuteru, S.Ag,. M.M,.' AS nama, '197503202005011007' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Ina Dhamayanty Nur, Amd.Kom.' AS nama, '198501022020122006' AS nip, 'Pengelola Barang Milik Negara (Jabatan Pelaksana)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Al Qodri Reliubun, S.I.Kom' AS nama, '199403082020121010' AS nip, 'Penyusun Bahan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Yusran, S.E' AS nama, '199212242020121016' AS nip, 'Pengelola Layanan Operasional (Jabatan Pelaksana)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Solikah, Se' AS nama, '199202052020122015' AS nip, 'Pengelola Bahan Perencanaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Nani Nurini, S.Psi.' AS nama, '198503202020122009' AS nip, 'Analis Fasilitasi Peningkatan Kompetensi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Arifin, S.E.' AS nama, '198911012020121011' AS nip, 'Analis Fasilitasi Peningkatan Kompetensi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Irani Silma Nur Khusna S.Kom' AS nama, '200005252025052016' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Safwat Sulung Romadlan, S.Kom' AS nama, '198904242019031004' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Angela Yesika Nababan, S.E' AS nama, '199609072020122030' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Hariadi, S.E.' AS nama, '200206102025051002' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Seto Nur Anggoro Adhi, S.Kom' AS nama, '198609162019031011' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Samsuri, S.Pd' AS nama, '196505181994031013' AS nip, 'Pengawas Sarana Kantor' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Moch Muhaemin, S.Ag., Mm' AS nama, '197111282000031001' AS nip, 'Kepala Balai' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Achmad Zanuar Ansori, S.Pd., M.Ed.' AS nama, '196901221994031001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'M. Farkhi Nurdin, S.Sos., M.Si.' AS nama, '196908311991031014' AS nip, 'Pengawas Kebersihan dan Keamanan' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Moh. Syaifudin, S.E.' AS nama, '197707152008011012' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Jamal, M.Pd.' AS nama, '196510101993031007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Abdul Main, S.Ag, S.S., M.Hum.' AS nama, '196904251998031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Rani Setyo Mintari, M.Pd.' AS nama, '197006232005012012' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Danang Eka Sandi, S.Sos., M.M.' AS nama, '197601222005011006' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Aziz Fuadi, S.Sos., M.S.M.' AS nama, '197007262005011010' AS nip, 'Asesor SDM Aparatur Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Indrawan , S.Sos, M.Adm.Kp' AS nama, '197603251997031002' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Indah Sulistyaningsih , S.H' AS nama, '197205121994032005' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Zainul Arief, S.Pd., M.H.' AS nama, '196805272003121001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Makmun Hidayat, S.Pd., M.Pd.' AS nama, '197304142005011015' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Mohammad Anung Edy Nugroho, S.E., M.S.M.' AS nama, '198003252009011008' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Drs. Rudi Hariyono, S.Pd., M.M., M.Pd., Ph.D' AS nama, '196710171995031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Zulkifli, S.H' AS nama, '197702122007011025' AS nip, 'Penata Laporan Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Hari Jupri , S.H.' AS nama, '196907181992031003' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Drs. Khamim Thohari, M.Ed.' AS nama, '196806041993031004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Drs. Miftakhul Anwar , Dipl.Ed., M.M.' AS nama, '196508201995031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Deva Alvina Br Sebayang, S.Si., M.A.' AS nama, '198304082009012013' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Litbang Bimbingan Masyarakat Agama dan Layanan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Drs. Muchamad Muhsinun' AS nama, '196505291992031009' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Hilda Suroyya, S.E.' AS nama, '198011132009122002' AS nip, 'Pengelola Humas dan Protokol' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Soleh Suaedy, M.M.' AS nama, '196507081992031005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Irwansyah, M.Pd.I' AS nama, '198409112007101001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Heni Mardiningsih, S.E., M.M.' AS nama, '197111152009012002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Drs. Bujang Ishak' AS nama, '196512051994011001' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Helza Mardian, M.Pd.' AS nama, '198104142005022002' AS nip, 'Pengelola Bahan Akademik dan Pengajaran' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Moch. Ali Lutfi, S.Pd.I.' AS nama, '197311122009011007' AS nip, 'Pengelola BMN' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Moelyono' AS nama, '197508192009101002' AS nip, 'Sekretaris Pimpinan' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr.Hj.Khobibah, S.Ag, M.A., M.Hi.' AS nama, '197101272005012001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Rofiq, S.Pd' AS nama, '197309152009121001' AS nip, 'Pengelola Barang Persediaan' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Widayanto, M.Pd.' AS nama, '196512031992031002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Sutowijoyo, M.Pd.' AS nama, '196605081994031003' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Angga Teguh Pradana, S.Kom' AS nama, '199405102025051005' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Sukamto' AS nama, '197008142007011040' AS nip, 'Pengelola Administrasi Alumni' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. M. Musfiqon , S.Ag., M.Pd.' AS nama, '197802212005011006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. (Hc) Dra.Hj. Mamik SyafaAh, M.Pd.I., Ph.D., Cie., Cfu. Cqh.' AS nama, '196709072002122001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Tri Rumhadi, M.Pd.' AS nama, '197012211998031007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Darmani, M.A.' AS nama, '196703291996031001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Abdul Haris, M.M.' AS nama, '196602031998031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Kamal Maulana, S.H.,M.Si' AS nama, '198212192005011001' AS nip, 'Penyusun Rencana Kehumasan Dan Perpustakaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Mushollin , S.Ag., M.Pd.I.' AS nama, '197304182001121001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Ismail Niko Handoyo, S.A.P.' AS nama, '199306012020121010' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Fuady, S.Ag.' AS nama, '197508012009011010' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Moh. Sodiq, M.Pd.I' AS nama, '196502231992031004' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Masnah Jumiyati, S.T.' AS nama, '199210232024212052' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Erniyawanti Adam, Sip., Ma' AS nama, '343434343434343434' AS nip, 'Lain-Lain' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Melsiana Tangaran, S.P' AS nama, '199907272025052011' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Wining Narulita Nurfitria, S.E.' AS nama, '199802092025052006' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Yudha Andana Prawira , M.Pd.' AS nama, '197101031998031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Achmad Fathony, S.E.' AS nama, '199108012020121014' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Sekretariat Badan Amil Zakat Nasional' AS asal_satker
    UNION ALL
    SELECT 'Dr. Wati Solihat Sukmawati, S.S., M.M.Pd.' AS nama, '197301132009012003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Elza Ilyanda, S.Kom' AS nama, '199403222023211025' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Andrila Eka Yasmita, S.Kom.I' AS nama, '199201012023212087' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'I Wayan Iwantara, S.Si., M.Pd.' AS nama, '198104042008011020' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Suhadi, S.Ag., M.S.I.' AS nama, '197405182007121002' AS nip, 'Lektor/Kepala Unit' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Yuni Purwati, Se' AS nama, '197706212009012007' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Drs. Iwan Falahudin' AS nama, '196807262005011002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Hj. Juhrah, S.Sos., M.Ap.' AS nama, '196512311994032006' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Marwani' AS nama, '197406142007011031' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dindin Firmansyah, S.T., M.Kom.' AS nama, '198205282009121002' AS nip, 'Pranata Komputer Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. Suyitno , M.Ag' AS nama, '196907161995031003' AS nip, 'Kepala Badan' AS jabatan, 'Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Haeruman, Se., M.Pd' AS nama, '196407271991031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Agus Mulyono, S.Sos.I., M.A.P.' AS nama, '197803292006041002' AS nip, 'Analis Kebijakan Ahli Madya' AS jabatan, 'Pusat Strategi Kebijakan Pembangunan Bidang Agama' AS asal_satker
    UNION ALL
    SELECT 'Irfan Mohammad' AS nama, '909209013909230930' AS nip, 'Lain-Lain' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Zulhan Hanif, S.T' AS nama, '198110022009041003' AS nip, 'Analis Pengembangan SDM Aparatur (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dinny Royza, A.Md.' AS nama, '199701262025052007' AS nip, 'Pranata Keuangan APBN Terampil' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Fauzi, S.H' AS nama, '200006262025051006' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Nurul Fadillah, S.I.Kom.' AS nama, '199612012025052006' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Irwan Muhammad , S.Sos, M.Si' AS nama, '197305301994031002' AS nip, 'Widyaiswara Ahli Muda / Subkoordinator' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Ulin Umi Azmi, M.S.I.' AS nama, '199201012020122025' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Zahroh, S.Ip' AS nama, '198004052023212021' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Litbang Agama Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Ardiwan, S.Pd.I., M.Pd.I.' AS nama, '198207162011011006' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Haerul Umam, S.Kom' AS nama, '197708192009011004' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Hidayat, S.Ip.' AS nama, '198507232024211013' AS nip, 'Analis Sumber Daya Manusia Aparatur (Jabatan Pelaksana)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Anwar Hakim Mahdi, S.E' AS nama, '198211132003121002' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Hijratul Khairani Sarly, S.Sos' AS nama, '199704292025052008' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Sitti Nashrah Achmad' AS nama, '197404182023212004' AS nip, 'Arsiparis Terampil Penyelia' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ni Made Nuadi , S.H.,M.H.' AS nama, '196209251986032003' AS nip, 'Arsiparis Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Firdha Falasifa Reza, S.A.' AS nama, '199504252025052006' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Khoiru Nissa Apriliya, S.Stat.' AS nama, '199504242025052001' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Biro Perencanaan dan Penganggaran' AS asal_satker
    UNION ALL
    SELECT 'I Komang Adi Pramana Putra, Smb' AS nama, '198905262020121007' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Mutia Rifda Ahilla, S.Hum.' AS nama, '199701222024212024' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Solahuddin Siregar, S.Ag.,Ma' AS nama, '197408142005011008' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Nopem Habibi, Se' AS nama, '198411252023211015' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Litbang Agama Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Yusrina Fathaniah Yusuf' AS nama, '199910282025212009' AS nip, 'Pramu Bakti (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Rosnaeni, S.Kom., Mm' AS nama, '197404212001122001' AS nip, 'Arsiparis Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ni Made Sri Agustini, S.S., M.Pd.' AS nama, '198308212006042002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Prawiranto Nugroho, S.Kom' AS nama, '197803182011011002' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Rahmat Ekaputra Amo, S.T.' AS nama, '198810272020121006' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Hairoyati, S.Sos' AS nama, '197604212002122002' AS nip, 'Analis Kepegawaian Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Ardhiah Garini, S.Psi., M.M' AS nama, '199201242025052001' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Marina Setiawati, M.Si.' AS nama, '196801291995032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Hj. Salfiah, Se, M.Pd' AS nama, '196903102005012005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Rina Iriani Dewi, S.Pd.I' AS nama, '198405132009012014' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Syafrizal' AS nama, '198106112025211012' AS nip, 'Operator Layanan Operasional' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Nasri, S.Sos' AS nama, '197307072007012031' AS nip, 'Bendahara (Jabatan Pelaksana)' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ripan Dapi, St' AS nama, '198110092009121005' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Amin, S.Kom' AS nama, '198004272009011011' AS nip, 'Analis SDM Aparatur Ahli Muda' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Bram Andreas Sidabutar, S.M' AS nama, '199611212025051004' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nelly Nurmelly, Mm' AS nama, '196512011994032004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Rudi Perdana, S. H.' AS nama, '199609202025051004' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Sumber Daya Manusia Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'H. Endang Fadli, S.Ag, M.Pd.I' AS nama, '197304161999031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Elsi Cahya Huriyatiningsih' AS nama, '197108172005012003' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Rifki, S.E' AS nama, '197206052023211012' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Ade Hasan, St' AS nama, '199509182024211020' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Nur Defi Arista, S.I.Pust.' AS nama, '199404042025052005' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Susi Kusmiati Hajariah, S.E, M.E.Sy' AS nama, '198204132008012009' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Imanuddin' AS nama, '196509121992031002' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Rahmatillah Amin, S.Kom' AS nama, '197512282003121002' AS nip, 'Pranata Komputer Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Umar Faruq, M.Fil.I' AS nama, '196805112006041001' AS nip, 'Lektor/Kepala Unit' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'H. Rahmadani, S.Ag., M.Pd.I' AS nama, '197005071998031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Eka Ifar Irianto' AS nama, '199403022025211020' AS nip, 'Pramu Bakti (Jabatan Pelaksana)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Taufik, S.Sy' AS nama, '199012012023211020' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Syahrizal Akbar, M.Pd.' AS nama, '198810022020121004' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Ira Megawati Gunawan Putri, M.Si.' AS nama, '198808302020122006' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Margaretha Prasetyaningrum, Sst' AS nama, '199308112025052001' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Sundari, S.Kep., Ns.' AS nama, '198604122020122006' AS nip, 'Perawat Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Maya Sartika, S.E.' AS nama, '199103132020122008' AS nip, 'Verifikator Keuangan' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Irna Junita, S.Pd.' AS nama, '199206012020122016' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dharmawan, S.Kom.' AS nama, '198711202020121007' AS nip, 'Analis Sistem Informasi dan Jaringan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Jepri Arizal, M.Pd.' AS nama, '199106012020121007' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Ernanda Ariyatna, M.Pd.' AS nama, '199302062020122011' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Cendy Meivi Giroth, S.Kom.' AS nama, '198905202020122013' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Hirza Rahmayati, M.Pd.' AS nama, '198904012020122007' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Yeni Rahmah Dini, S.H' AS nama, '199406092023212045' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Cut Dian Tarakavita, M.Pd.' AS nama, '199010182020122008' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Sri Marni Francois, Sei' AS nama, '198003262009012006' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Tri Harto Eka Sutrisna, M.Pd' AS nama, '199507142025051002' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Husan Sokanfuty, Sh' AS nama, '199302252025211013' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Idham, Sh' AS nama, '196710101993031007' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Maya Hazizah, Amk' AS nama, '199105292024212040' AS nip, 'Perawat Terampil Pelaksana Pemula' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Puspita Arum, S.A.P.' AS nama, '199704172025052001' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Dindin Firmansyah, St' AS nama, '198205282009121002' AS nip, 'Pengembang Sistem Program' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Luki Budiawan, S.Ip' AS nama, '199205022019031008' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Anang Nazaruddin, S.Pd.I' AS nama, '197909272006041002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Eka Yulianti, S.E, M.Si' AS nama, '199007072020122015' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Amrullah, S.Sos' AS nama, '198107062009121003' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Kasim A. Usman, S.Ag, M.Pd' AS nama, '196511152003021001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Rizki Riyadu Taufiq, S.Th.I, Ma' AS nama, '198307302011011008' AS nip, 'Kepala Bagian' AS jabatan, 'Sekretariat Badan Moderasi Beragama dan Pengembangan Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Robiah Anitasari, S.Si' AS nama, '199309162025052001' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Tenny Kurniasari Kunsi, S.Sos' AS nama, '197606272010012004' AS nip, 'Pustakawan Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Novita Dwi Ariningrum, S.Sos' AS nama, '198711232011012013' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Muhammad Qomarul Huda, M.Fil.I' AS nama, '196902171999031001' AS nip, 'Lektor/Kepala Unit' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Humaira Ichlashi Amaliah, S.Mat.' AS nama, '199812242025052007' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Eri Julianda' AS nama, '199203022020122016' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Drs. Nana Umar Sumarna' AS nama, '196511081995031001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Eliza Muflihah, S.E.' AS nama, '199302252020122015' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Muthmainnah, S.Sos, Mm' AS nama, '198601122006042003' AS nip, 'Pengevaluasi Program' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ibnu Salim, Sei' AS nama, '198007022023211008' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Robi, S.E.' AS nama, '199408012023211021' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Fitria, S.Sos' AS nama, '199901272022032001' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Widi Tigaras, S.Sos' AS nama, '198806202020121005' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ana Rosana, S.Pd.I' AS nama, '.19760410199703200' AS nip, 'Kepala Loka' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Hena Hendriananana' AS nama, '320728030187000127' AS nip, 'Ajudan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Umi Thoifa, S.Pd.I' AS nama, '199107202023212041' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Supiannoor, S.Kom' AS nama, '198301152024211006' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Abdurrafiq, M.Pd.I' AS nama, '196904142005011006' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Hj. Sari Indarwati, S.E, M.M' AS nama, '198006222002122001' AS nip, 'Perencana Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Mulyadi, Se, M.Si' AS nama, '197508232003121005' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Mustofa Zahri, Shi' AS nama, '198607062009121006' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Durahman, S.Pd, M.M.Pd' AS nama, '196408281994031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Yusnidar, S.Pd, M.Si' AS nama, '196910241997032001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dewi Satya Anjasari, S.Ip' AS nama, '199502032024212032' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Drs. Atna Suhatman, , Mm' AS nama, '196012061987031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Hamdan, S.Sos' AS nama, '196206111985111001' AS nip, 'Pengawas Kebersihan dan Keamanan' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Sutarno, S,Pd.I' AS nama, '196302091986031005' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Mintarsih' AS nama, '196212211982032001' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'H. Nurharyanto, Sh' AS nama, '196301121986031005' AS nip, 'Penyaji Bahan' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'H.  Mulyadi, S.Pd' AS nama, '196308271987061011' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Slamet' AS nama, '196810041988031001' AS nip, 'Pengelola Wisma (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Mahmed Muharam Sarfan, S.Kom' AS nama, '199406062023211032' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Rizkita Andelia Rasyad Siregar, A.Md.' AS nama, '199710012025052003' AS nip, 'Penata Laksana Barang Terampil' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dr Anwaruddin Ambary, S.Sos, M.Pp' AS nama, '196710271991031001' AS nip, 'Kepala Bidang' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Tambok Marito Pardede, S.E.' AS nama, '198803042020122006' AS nip, 'Analis Perencanaan, Evaluasi dan Pelaporan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Drs. Mohamad Djuanda, M,Ed' AS nama, '196807011996031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Rizqa Rahmiatul Fadhilah, S.Stat' AS nama, '199904042025052004' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Samadi, S.Pd.I' AS nama, '197609182007011018' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Vidia Lantari Ayundhari, M.Pd' AS nama, '198610162019032010' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'M. Zulfikar Kadir, S.H.' AS nama, '199009092023211034' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. I Wayan Arya Adnyana, S. Ag., M.Pd.H' AS nama, '197509062009121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Tri Suyudi Inayanto, S.E.' AS nama, '197806072023211009' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Jihan Bachmid, S.Kom., M.Si' AS nama, '197604242006042001' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Siti Haja Husain' AS nama, '199811292025052008' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Drs. Basuki, M.Pd' AS nama, '196612251990031007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Abdul Kholik Munthe, S.Pd.I' AS nama, '199408162025051002' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Tim Inovasi Pusdiklat Kemenag Ri' AS nama, '123456789101112134' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Anisia Kemala, S.Pd' AS nama, '199608102020122021' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'M. Wildan Setyadi, S.E.' AS nama, '198905032024211018' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Ida Ayu Kade Mas Uttari Dewi, S.E.' AS nama, '199204022020122016' AS nip, 'Analis laporan Realisasi Anggaran (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Sandhy Angelia Megasari, Sh., S.Sos, M.Pd.' AS nama, '198501182009122003' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Hendro Pratama, S.E' AS nama, '198904172023211023' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Masrullah Wahab, S.T' AS nama, '199006162024211032' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dr. Makmun Hidayat, M.Pd.' AS nama, '197304132005011015' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Sarifa Halija, S.A.P.' AS nama, '200004032025052005' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Amirul Aufar' AS nama, '197308272009101001' AS nip, 'Pengadministrasi' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Dalia Fitriani, A.Md.Kes' AS nama, '198805202024212035' AS nip, 'Terapis Gigi dan Mulut Terampil' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Dr. Zulfi Abdullah' AS nama, '196803031997031002' AS nip, 'Lektor' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Yusuf Hermawan, S.E' AS nama, '197206072023211004' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Ali Muhksin, S.Akun.,M.Si' AS nama, '199312032022031001' AS nip, 'Calon Widyaiswara Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'H. Fachrudin, S.Kom.' AS nama, '197911262006041005' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Muh. Asrar Badry Ahmad, S.I.Kom.' AS nama, '199906272025051001' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'H. SujaI., S.Ag., M.M' AS nama, '196508041987031006' AS nip, 'Analis Kepegawaian Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Drs. Rudi Hermawan, M.Pd' AS nama, '196711271999031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Nuruz Zaman Amsa, S.Pd.I., M.S.I.' AS nama, '197809122003121002' AS nip, 'Penyusun Bahan Informasi dan Penerangan' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Humaidi, S.Sos.,M.Ap' AS nama, '196210031986031004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Amir Alboneh, S.Ag.' AS nama, '197202291994031002' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Icha Bellyna Putri, A.Md.T' AS nama, '199711132024212032' AS nip, 'Arsiparis Terampil Pelaksana' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Rahmawati, S.I.P' AS nama, '198411202009012010' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Laity Qonitah, S.Si' AS nama, '199610072020122024' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Filman Ghaida Firdaus, S.Kom' AS nama, '199809232023211004' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Nur Asiah, S.H.' AS nama, '199806072025052003' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Penilaian Buku Agama Lektur dan Literasi Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Radiya Wira Buwana , S.Pd.I.' AS nama, '198701172011011007' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Afhan, Se' AS nama, '197001242008011008' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Himmatul Aliyah, S.S.' AS nama, '197605172024212004' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Riyan Hidayat, Sei' AS nama, '198110112009011008' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Arman Razak, S.Ap, M.Ap' AS nama, '197809252009011007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Abdul Kahar, M.Pd.I' AS nama, '196812311995031010' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Dwi Aryani, M.Pd' AS nama, '196409221986022002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dra. Ika Berdiati' AS nama, '196507161998032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Susari ., Ma.' AS nama, '196611131996031001' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. Juanda, M.Ed' AS nama, '196703021994031007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dra. Dermawati, M.Si.' AS nama, '196612251992032007' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Puryanto, Ss' AS nama, '196705172005011004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. Marina Setiawati, M,Si' AS nama, '196801291995032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Ali Masyhudi' AS nama, '197011112007011039' AS nip, 'Pengelola Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Sefia' AS nama, '083147293740111111' AS nip, 'Ajudan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Nur Intan, Sh' AS nama, '196701152003122001' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Raissa Ritami R, S.E.' AS nama, '199411202025052004' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Alamsyah, S.E' AS nama, '197008302009011006' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Ristika Nurul Millah, S.E.' AS nama, '198512062020122005' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Asrizal Rasyid, S.Kom' AS nama, '199108152025051002' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Perencanaan dan Penganggaran' AS asal_satker
    UNION ALL
    SELECT 'Reza Maulana, S.Pd.I' AS nama, '199110152023211021' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Hj. Siham, S. Sos.,M.M.' AS nama, '197907132005012006' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Ubaydillah Fajri, S.Th.I.' AS nama, '199107012023211026' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Jafar Shodiq, S.Pd.I' AS nama, '198705152019031007' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Puryanto, Ss' AS nama, '196705172005011004' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Priwahyudi, St' AS nama, '198202022008011014' AS nip, 'Pengevaluasi Program' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Diana Khairina, S.Ip' AS nama, '198405152024212021' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Dra. Mardiah Baginda, M.Pd.I' AS nama, '196906112005012004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Joko Tri Haryanto, S.Ag, M.S.I' AS nama, '197506152006041001' AS nip, 'Peneliti Ahli Madya' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. M. Alimashariyanto, M.Si' AS nama, '196804271993021002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Drs. Abu Bakar, Mm' AS nama, '196606081997031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Heri Setiawan, S.Pd.' AS nama, '197412022024211001' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Litbang Agama Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Jailani, M.Pd' AS nama, '198610072005011001' AS nip, 'Penyusun Laporan Hasil Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Thoha Cahya Ash Shoddiqy., S.Kom' AS nama, '199612292025051002' AS nip, 'Calon Pranata Komputer Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Atiyah Suharti, M.Pd.' AS nama, '196603231997032002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ali Iqbal, S.S.' AS nama, '199105162023211021' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'I Gusti Bagus Prasada, S.H.H.,M.I.Kom.' AS nama, '198009192001121002' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Amril Shadiq, S.Pd.' AS nama, '199508212024211024' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Arif Suryono, S.Kom.' AS nama, '198610312011011009' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Dewi Rahma Putri, S.Km' AS nama, '199803062024212027' AS nip, 'Penyuluh Kesehatan Masyarakat Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Ananda Citra Aulia, S.Kom.' AS nama, '197809172003122003' AS nip, 'Pengembang Sistem Program' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. H. Abd. Kadir Ahmad, Ms.' AS nama, '195606021985031003' AS nip, 'Peneliti Ahli Utama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Aditya Martha Nugrahanto, S.E.' AS nama, '198411252020121004' AS nip, 'Analis Perencanaan, Evaluasi dan Pelaporan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Mahmudah Amin, Se' AS nama, '197203242003122004' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Kusmadewi' AS nama, '198407112025212010' AS nip, 'Pengadministrasi Perkantoran' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Waichsan' AS nama, '197105102007101002' AS nip, 'Pengolah Bahan Perencanaan' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Udin Narwawan' AS nama, '197908172025211010' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Farta Rahmiyati Firdausi, Se, M.Si' AS nama, '198309252005012003' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Rizki Agung Santoso, S.H' AS nama, '199507152023211015' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Karyudi Prasetyo, S.T.' AS nama, '198610142022031001' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Abdul Muis, S.Kom.I' AS nama, '199210152023211029' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Litbang Lektur Khazanah Keagamaan dan Manajemen Organisasi' AS asal_satker
    UNION ALL
    SELECT 'Nasri, S.Sos.' AS nama, '197307072007012031' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Thea Desyanti, Se' AS nama, '199512012024212057' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Dandy Wicaksono, S.Si., M.Mmsi' AS nama, '199004202019031017' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Saipul Bahri, S.E' AS nama, '198108132023211010' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Hendra Irawan, S.Ip,Sh' AS nama, '198204102023211015' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Budi Hartono, M.Pd' AS nama, '198607122022031001' AS nip, 'Calon Widyaiswara Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Khoirul Abdul Azis' AS nama, '199312222025211010' AS nip, 'Operator Layanan Operasional' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Basofi Sudirman, S.Sos' AS nama, '199605232025051005' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Azmi Imania Safitri, S.Hum.' AS nama, '199310292025052004' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Renaldi Firmansyah, S.H.' AS nama, '200206282025051002' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hajizah Pakudu, M.Si' AS nama, '196304211994032002' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Theovani Nursamudrayanty Hutagaol, M.Pd' AS nama, '199102022020122017' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Drs. H. Jaja Jaelani., Mm' AS nama, '196507131985031002' AS nip, 'Kepala Pusat' AS jabatan, 'Pusat Strategi Kebijakan Pembangunan Bidang Agama' AS asal_satker
    UNION ALL
    SELECT 'Adji Budiono, S.Kom' AS nama, '198905192023211018' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Litbang Agama Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. Agustina, M.Pd' AS nama, '198208182006042032' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Fadlun  Zakiyah Alhamid, Se' AS nama, '197907062009012010' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. H. Achmad Gunaryo, M.Soc. Sc' AS nama, '196208101991031003' AS nip, 'Kepala Badan' AS jabatan, 'Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Yusuf , S.Sos' AS nama, '196804201993031003' AS nip, 'Analis Kinerja (Jabatan Pelaksana)' AS jabatan, 'Pusat Litbang Pendidikan Agama dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Yana Putri Lozi, S.E.' AS nama, '199701092022032001' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Suhirman, S.Kom.' AS nama, '198412122011011012' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Emma Himayaturohmah, M.Ag.' AS nama, '197411011998032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Riduwan, S.Ag, M.Pd.I' AS nama, '197008312005011006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. H. Moh.  Isom, M.Ag' AS nama, '196804151996031001' AS nip, 'Kepala Pusat' AS jabatan, 'Pusat Litbang Lektur Khazanah Keagamaan dan Manajemen Organisasi' AS asal_satker
    UNION ALL
    SELECT 'Muh. Arsyad, S.S' AS nama, '196807102005011007' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Bayu Aji Pratama, S.Kom' AS nama, '199206192025051005' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ihyakulumudin, S.Si' AS nama, '198208022008011012' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Isra Meiliana, S.Ip.' AS nama, '200105302025052009' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Ra. Mustika Hariyanti , S.Pd, M.Pd' AS nama, '198301122005012004' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Mazaya Fikrotil Aimmah, S.H' AS nama, '199405152022032008' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H.  Abd. Wahib Syakour, M.Pd.I.' AS nama, '195610201985121001' AS nip, 'Lektor/Kepala Unit' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Maskub, Se' AS nama, '198611212023211017' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Husnul Mahlisa, S.Pd.I' AS nama, '198709032020122013' AS nip, 'Analis Program Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Musafak, S.Pd.' AS nama, '198704302023211015' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Arda Arief Ridhaffa, S.S.' AS nama, '198706232023211023' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
) AS p
JOIN tbl_role r ON LOWER(r.nama_role) = LOWER(p.jabatan);