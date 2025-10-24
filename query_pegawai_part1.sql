INSERT INTO tbl_pegawai (nama, nip, jabatan, asal_satker)
SELECT 
    p.nama,
    p.nip,
    r.id_role AS jabatan,
    p.asal_satker
FROM (
    SELECT 'I Kadek Suparta, S.Ag.S.Ipi' AS nama, '196912312000121001' AS nip, 'Kepala Pusat' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Sitti Rabiah, S.Pd, M.Pd' AS nama, '197202081998032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ahmad  Maulana, S.Pd' AS nama, '197707252002121002' AS nip, 'Arsiparis Ahli Madya' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Srirahayu Widyastuti Wahid, Sst' AS nama, '199309232025052001' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Dr. Meutia Fariha, S.Pd., M.Pd' AS nama, '196902121999052001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Firdos Mujahidin, M.Ag' AS nama, '197408141999031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Mufida Sadiq Alamri, Se' AS nama, '198405072002122001' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Daffa Daud, S.Sos.' AS nama, '199705082023211004' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Ndr. Ayu Nurdiana, S.Hum., M.Hum.' AS nama, '199910252025052011' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Syarkani, S.Sos,M.M' AS nama, '197503042003121003' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'I Komang Wawan Mahardika Putra, S.Kom' AS nama, '198811152022031001' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Irma Djanapa Bulow, S.Pd., M.Pd.' AS nama, '196806211992032011' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Mbarep Ahmad Witana, S.E' AS nama, '198807142024211023' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Khoirotun Layyinah, A.Md.Lib.' AS nama, '200007252024212011' AS nip, 'Pustakawan Terampil Pelaksana' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Abdul Jamil Wahab' AS nama, '197001032005011006' AS nip, 'Peneliti Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Mustakim' AS nama, '196805162007101001' AS nip, 'Teknisi Sarana dan Prasarana (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Nur Aini Alboneh, Se' AS nama, '197703102005012001' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Imron Atma Wijaya, S.Pd.' AS nama, '200006142025051003' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Penilaian Buku Agama Lektur dan Literasi Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Anton Sasono , S.E., M.A.B.' AS nama, '198010192005011013' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Asrul Haq Alang, M.Pd.I' AS nama, '198502212002121001' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Lilis Suryani , M.Si' AS nama, '196509061994032001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Ludy Chyntia Hawa Saputri, S.I.Kom' AS nama, '199111142025052004' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Sundusiyah, S.Ag.' AS nama, '197611212024212007' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Selamat Difinubun, S.Ag., M.Pd.I' AS nama, '197107142003121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Ana Rosana, S.Pd.I., M.Pd.I' AS nama, '197604101997032002' AS nip, 'c' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Faraedito Tejomulyo Haidi, S.E' AS nama, '199505302020121013' AS nip, 'Analis Perencanaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Ichsan Maulana, S.E' AS nama, '199409032024211016' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Losarini Sumartati, M.Pd.' AS nama, '197011241997032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Sodikin, S.E., M.M.' AS nama, '197406132009011009' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Dr. Nazia Nuril Fuadia , M.Psi., Psikolog.' AS nama, '198410282009122006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ihyakulumudin, S.Si' AS nama, '198208022008011012' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Hildha Intan Permatasari, S.E.' AS nama, '200103052025052002' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Fonda Mensy Sally, S.Tp' AS nama, '197511222006041015' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Firdha Rizki Aulia, S.Kom' AS nama, '199707222025052006' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Mulyadi, S.H.I., M.H.' AS nama, '198802042011011004' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'H. Darwiyanto, S.Pd., M.Ed.' AS nama, '196702051997031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Andini Fitriyani, S.Sos' AS nama, '200001062025052008' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Febria Nurhany' AS nama, '198502072020122000' AS nip, 'Teknisi Elektronik (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Iksarman, S.Sos, Mm' AS nama, '196508181986031007' AS nip, 'Pustakawan Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Mastuki, M.Ag.' AS nama, '197201041997031002' AS nip, 'Kepala Pusat' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Muh Jisron, S.Ip., M.M.' AS nama, '196702111987111001' AS nip, 'Kepala Bagian' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Yasin Laru, S.Kom.' AS nama, '198909052020121005' AS nip, 'Analis Data dan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Dedy Darmawan, S.Ag., M.Pd.I' AS nama, '197610102006041002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Panggih Karyanto, S.E.' AS nama, '199201202023211024' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nur Aeni Abu, Sh' AS nama, '198108122005012002' AS nip, 'Penyusun Standar Pelayanan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Sukmah, S,Pd.I.,Ma' AS nama, '197504212005012005' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Irfan, Se' AS nama, '198205132009011011' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Rizaldi, S.St' AS nama, '199011092023211019' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Wawan Hermawan, S.Kom' AS nama, '197511252008011007' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Sekretariat Badan Moderasi Beragama dan Pengembangan Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Dedy Kurniawan, S.Pd.I.' AS nama, '198106102023211008' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Noorajeng Galuh Nareswari, S.T.' AS nama, '198407202024212018' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nur Bahri, S.Pd' AS nama, '196409082003121003' AS nip, 'Analis Barang dan Jasa' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Riskandi Lestaluhu' AS nama, '199205062025211019' AS nip, 'Pramubakti (Non ASN)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Hendrawaty Tubagus, S.Sos' AS nama, '196410231986012001' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Murlandes, S.S.' AS nama, '198203052024211006' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'H. Sudharmono, Lc., M.Sy' AS nama, '198308132009121003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Stefy Agnestasia Worotikan, S.E.' AS nama, '198807102020122010' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Dra. Siti Rahma , S.Ipi., M.Pd' AS nama, '196210051994032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Julya Ade Jhora, S.T' AS nama, '199306292020122013' AS nip, 'Analis Rencana Program dan Kegiatan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Phitaloka, S.Pd' AS nama, '200107202025052009' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Manajemen Kepemimpinan dan Moderasi Beragama' AS asal_satker
    UNION ALL
    SELECT 'Perwita Utami Rizkia, S.H.' AS nama, '199505192020122031' AS nip, 'Perancang Peraturan Perundang-Undangan Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Drs. Muhran' AS nama, '196404211986031004' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Taufik Dwi Pamungkas, S.E.' AS nama, '198909122024211017' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Umi Masruroh, S.Ag' AS nama, '198912062022032001' AS nip, 'Pentashih Mushaf Al-Qur?an Ahli Pertama' AS jabatan, 'Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Drs. Taufiqurrohman. S, M.Pd.I' AS nama, '195707251984021001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Dudung Abdul Rohman, M.Ag.' AS nama, '197307292000031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Sayed Dhiauddin, Sh' AS nama, '198810032025211017' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Anggun Triyoga, S.Psi' AS nama, '199807112022031003' AS nip, 'Calon Asesor SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Siti Nurjanah, S.Pd' AS nama, '198208132009012007' AS nip, 'Penyusun Program Anggaran dan Pelaporan' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Risani, Mh' AS nama, '196904231999031002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Hamzah, M.Ag' AS nama, '196212311998031006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Panitia Bdk Bandung' AS nama, '000000000000000022' AS nip, 'Ajudan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Arnis Rachmadhani, S.S, M.S.I' AS nama, '197210172003121001' AS nip, 'Peneliti Ahli Madya' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Junedi Suprianto, S.An., M.Ap' AS nama, '199511172025051005' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Sumber Daya Manusia Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ari Yani Mahmud, A.Md.' AS nama, '198406112023211007' AS nip, 'Pranata Komputer Terampil Penyelia' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Adhanta Reksa Darma, S.P.' AS nama, '199505102025051002' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Yuni Kaisuku,S.Kom' AS nama, '198706222024212023' AS nip, 'Calon Pranata Hubungan Masyarakat Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Mohamad Isa Putra, S.E' AS nama, '198609072023211020' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Dr. M. Zaenul Asyhuri, S.Ag.,M.H.I.' AS nama, '197108191996031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Yulie Ardiansyah, A.Md, Par' AS nama, '199507022022031001' AS nip, 'Pengelola Asrama (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Kusyamto, M.Pd.' AS nama, '196301291994031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'M. Agus Sulistio, S.P.' AS nama, '197609082024211002' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Prof.Dr. H. Nashruddin Baidan' AS nama, '195105051979031014' AS nip, 'Guru Besar' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Tontowi, S.Ag' AS nama, '196505142005011003' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Hisan, S.Ag., M.Pd' AS nama, '197410062005011004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Hamka, Se' AS nama, '197807102005011009' AS nip, 'Pengelola Pengadaan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Moh. Rizky Montoalu' AS nama, '854443579985544333' AS nip, 'Lain-Lain' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'I Gusti Ngurah Suariana, S.Kom' AS nama, '198604072009121009' AS nip, 'Pranata Komputer Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Sri Sunarti, M.Pd' AS nama, '198301192006042019' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Nurfitri, S.E.' AS nama, '199503052023212041' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Husnul, S.Pd.I' AS nama, '198107272003122004' AS nip, 'Analis Pengembangan Karir (Jabatan Pelaksana)' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dwi Nurul Ikhwani, S.E., M.Si.' AS nama, '199408102025052002' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Andin Sudirman' AS nama, '198208172014111002' AS nip, 'Penyusun Program Peningkatan Kompetensi Pendidik Dan Tenaga Kependidikan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'H. Sahri Wardi, Lc., M.Ap' AS nama, '197812252003121003' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Drs. H Kgs. M. Daud, M.H.I' AS nama, '195704071985031013' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Fathur Rahman, Amd, Ak' AS nama, '198112312024211027' AS nip, 'Arsiparis Terampil Pelaksana' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Kusnadi, S.Pd' AS nama, '199606052024211024' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'M. Hafizudin, S.E' AS nama, '199902102025051004' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Maula Qorri Aina S.Si' AS nama, '199609052022032014' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Dra. Hj. Sifa, M.Pd.I., M.Pd.' AS nama, '196911061993032004' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Nasrun Noho' AS nama, '196608071986031002' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Muh. Syahrul Alim' AS nama, '197510122007011025' AS nip, 'Pengolah Data' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Suhardi S, A.Md.' AS nama, '198310012024211009' AS nip, 'Arsiparis Terampil Pelaksana' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Siti Aisah, S. Pd' AS nama, '199506212023212036' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Darwis , Se., M.M' AS nama, '197212272006041004' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Fathurozi, S.Sos.I' AS nama, '198308122023211013' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Shohib, M.Ag.' AS nama, '197310292000031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'H. Zainal Airifin, S.Ag, Ma' AS nama, '197401252000031003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Nenden Siti Aminah, S.Pd' AS nama, '197711122009012007' AS nip, 'Penyusun Laporan Hasil Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Desty Nurmayanti, S.Kom' AS nama, '199512032023212039' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Dr. Euis Setiawati, M.Pd.' AS nama, '196809031997032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Musyaddad, M.Si.' AS nama, '199101112020121006' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Atika Yusni Ferdina, M.B.A.' AS nama, '199301042020122018' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Rahmawati, S.Kom' AS nama, '199407192024212043' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Yuni Avrianti, S.E' AS nama, '198906252024212027' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Ince Crisanti, A.Md.Kep' AS nama, '198606222024212017' AS nip, 'Perawat Terampil Pelaksana Pemula' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Bustanil Arifin, Se' AS nama, '199305152024211025' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Gunadi' AS nama, '197210052006041003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Nur Arisal, S.E.' AS nama, '197707272023211005' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Irfan Saputra, S.Kom' AS nama, '199709102025051003' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Zaidan Ni`Amillah, S.E.' AS nama, '199404292020121007' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Baijuri, M.Pd.I' AS nama, '197811042009021001' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'A. Ika Rifka Adnan, S.S' AS nama, '199405082024212043' AS nip, 'Penata Penerbitan Ilmiah Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Tajuddin, S.Ag., M.Si' AS nama, '197602121999031002' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Reinaldo Suryo Negoro, S.S.' AS nama, '199612292024211018' AS nip, 'Calon Pranata Hubungan Masyarakat Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Mardiansyah, S.Ip, M.Si' AS nama, '198103102009011009' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Ihsan Raya, S.E' AS nama, '198906172020121004' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Lizayana, S.Pd' AS nama, '199406232020122026' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ichsan Nurcahyana, S.E.' AS nama, '198705182023211023' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Syamsuddin, S.M' AS nama, '198012252005011005' AS nip, 'Analis Kepegawaian Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Nurwarniatun, Sh.Mh' AS nama, '196705031990032002' AS nip, 'Pustakawan Ahli Madya' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Mona Arida Oktaria, S.Ip' AS nama, '198410092009012012' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Munawarah, S.Ag' AS nama, '197112192005012002' AS nip, 'Analis Tata Usaha (Jabatan Pelaksana)' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Martadinata, S.Ag, M.M.' AS nama, '197005071996031002' AS nip, 'Arsiparis Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Amru Ichwan Alwy, S.Ipi.' AS nama, '197011051992031003' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Bujang Ali Supandi' AS nama, '197312152014111001' AS nip, 'Pengawas Kebersihan dan Keamanan' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Erra Sonya' AS nama, '197804302002122010' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Sekretariat Badan Amil Zakat Nasional' AS asal_satker
    UNION ALL
    SELECT 'Mushaffa Royani, S.Ag.' AS nama, '199912172025051008' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Manajemen Kepemimpinan dan Moderasi Beragama' AS asal_satker
    UNION ALL
    SELECT 'Galeh Setiaji Putra, A.Md' AS nama, '199309032025051001' AS nip, 'Pranata Komputer Terampil Pelaksana' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nur Annisa Yusuf, S.Stat' AS nama, '199608012025052005' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dewi Indah Ayu Diantiningrum, S.Sos' AS nama, '198612182011012016' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. A. Buchori, M.M.' AS nama, '196206121990031002' AS nip, 'Kepala Pusat' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Rahmatullah, S.Ag' AS nama, '197107062003121001' AS nip, 'Analis Kepegawaian Ahli Madya' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Dr. Muh. Zainal, S.Ag, M.Pd' AS nama, '197212252000121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Selvia Febriani, S.H' AS nama, '199902032025052006' AS nip, 'Analis Hukum Ahli Pertama' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Febria Nurhany, A.Md' AS nama, '198502072020122008' AS nip, 'Teknisi Elektronik (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Andum Dewi , S.Ag., S.Ipi., M.Pd.' AS nama, '196603231989032003' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Sarah Rahmadhana, S.E' AS nama, '199402232020122021' AS nip, 'Analis Laporan Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Drs. M. Taher' AS nama, '196606062003121003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Drs. Bincar' AS nama, '196206012000031001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dra. Yusra' AS nama, '196304031994032001' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Juwairiah, M.Si.' AS nama, '196312311999032005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dra. Seriwati, M.Psi.' AS nama, '196412311994012004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Susilawati, S.Pd.I' AS nama, '196508101985032002' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dra.  Nur Asyiah' AS nama, '196509161992032001' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Fian Nur Fajria, A.Md' AS nama, '199210252020122013' AS nip, 'Teknisi Listrik, Telepon, AC, dan Lift (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Nanda Kamtari, S.Tr.Ak' AS nama, '199701142020122014' AS nip, 'Analis Laporan Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Irma Suryani, S.E' AS nama, '199509282020122020' AS nip, 'Analis Perencanaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Azwin, A.Md' AS nama, '199608252020121009' AS nip, 'Teknisi Mesin' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Yevi Grata Putra, S.Kom' AS nama, '198805182020121010' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'A. Redho Nugraha, S.E.' AS nama, '199502062020121008' AS nip, 'Analis Perencanaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Siti Yulaekah' AS nama, '197108241994032002' AS nip, 'Pengadministrasi Umum (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Abdul Munir. M.Fil.I' AS nama, '000011111111111111' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Muaripin., M.Ag.' AS nama, '196907032000031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Syawaluddin' AS nama, '197702062005011003' AS nip, 'Pengadministrasi Umum (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Ani Maryani' AS nama, '197108191994032003' AS nip, 'Pengelola Informasi Kelitbangan/Kediklatan' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ali Musthofa, S.Th.I' AS nama, '198301222023211008' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Litbang Pendidikan Agama dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Riva Ratna Sari, S. Ag' AS nama, '197009082005012004' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Abdul Hadi, S.Kom' AS nama, '199903162025051004' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Heni Kusumaningrum, S.Sos., Mpa' AS nama, '199202282018012001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Lembaga Admistrasi Negara (LAN)' AS asal_satker
    UNION ALL
    SELECT 'Muchammad Malikhan, S.H.' AS nama, '199003222023211016' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'H.  Mulyadi, S.Pd' AS nama, '196308271987061001' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Yovi Kusman' AS nama, '198010242014031002' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Aqul Mashuri, S.Sos.' AS nama, '198007062007101005' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Siti Munawaroh, S.Pd' AS nama, '197911242009122001' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Firman Parlindungan Butar-Butar, M.Pd.' AS nama, '198910122025051003' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Rana Fadhilah, A.Md' AS nama, '199802012025052009' AS nip, 'Pranata Komputer Terampil Pelaksana' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Dr. H.  Saefudin, S.Ag., M.Si.' AS nama, '197501052003121002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Lili Husa' AS nama, '196707101994032004' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Syahroni, S.E., M.M.' AS nama, '197611232003121002' AS nip, 'Analis SDM Aparatur Ahli Muda' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Setianto Widodo, S.Kom' AS nama, '199305262023211023' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Ni Luh Sukmawati, Se.Mm' AS nama, '197002142003122001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Abd. Wahab, S.H.,  M.A.' AS nama, '195904251994031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'H. Mukmin, S.H.I., M.Sy' AS nama, '197806052009121003' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Ayi Nasrudin, M.Pd' AS nama, '196805271989031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Alia NiAm, S.S.' AS nama, '198712102024212036' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Leni Nopilia, S.E., M.E.' AS nama, '197808202008012018' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Hasnawati, S.I.P' AS nama, '199205072024212047' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Mansur, M.Pd.I' AS nama, '196610062003121001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Hesti Yuana Mahardika, S.T.' AS nama, '200207072025052006' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Irvanda Putra Mambou, S. Kom' AS nama, '198910172023211022' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Fidela Alma Sahira, S.Sos' AS nama, '199907052025052010' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Sekretariat Badan Moderasi Beragama dan Pengembangan Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Dr. Miskiah, M.Pd' AS nama, '197805082002122001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Nur Aini, S.Si, M.Pd' AS nama, '198205242006042028' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Wilantika Ramadhani, S.Ip.' AS nama, '199701082025052003' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Abdul Rahim, S.E.' AS nama, '199110202020121004' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Mohammad Ishaq, S.Ars' AS nama, '199209182023211023' AS nip, 'Penata Ruang Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Redilla A. Rahim, S.E' AS nama, '199110262020122014' AS nip, 'Analis Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'H. Yasir Arafat, S.Pd, M.Pd' AS nama, '197007042006041001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ramadhan, Se' AS nama, '199004102020121010' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Irfan, Se' AS nama, '198205132009011011' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Hj. Asmahan, S.Ag.,Mh ,Sc.Asl, Ph. D' AS nama, '197410011999052001' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dr. Muhlis, M.Ag.' AS nama, '197506242005011004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Deybi Kolopita, S.E, M.E' AS nama, '197612252003122003' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Yuyun Widayanti , A.Md' AS nama, '198309142005012002' AS nip, 'Pustakawan Terampil Pelaksana Lanjutan' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Roesdiana, Se' AS nama, '197712102009122002' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Basma Graha Nashorinal, S.T.' AS nama, '199008062023211021' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Ni Kadek Ceryna Dewi, S.Kom., M.Kom' AS nama, '199007042019032017' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Sakur.' AS nama, '196610081993121001' AS nip, 'Penyusun Laporan Hasil Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Aldino Ngangun, S.H.' AS nama, '199505062020121014' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ina Tofani, Se' AS nama, '198002242009122003' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Ida Fitri Dianingrum, S.Pd.I., M.A.' AS nama, '198107132009012010' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nursaripati Risca, S.Pd.' AS nama, '198805302020122008' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Siti Nur Maunah, S.H.I., M.Si' AS nama, '198110142005012003' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Asnianti, S.Sos.' AS nama, '197504011994032001' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Azmul Akhyar, M.Si' AS nama, '198609232009101001' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Husnawiyah, S.Pd.I, M.M' AS nama, '198505052009102001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Elce Yohanna Kodina, S.Th., M.Th' AS nama, '196906261992032002' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Nanang Slamet Murdiyat, Se., M.Si' AS nama, '197604092002121003' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nasrun Karami Alboneh, S.Ag' AS nama, '197507041994031001' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Nensia, M.Hum' AS nama, '199010082020122011' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ali Saputra, S.Psi' AS nama, '197508282009011007' AS nip, 'Peneliti Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. AsroI, M.Pd' AS nama, '197310122005011001' AS nip, 'Kepala Bagian' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Abd. Karim, M.Hum' AS nama, '199209032020121009' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Fitria, S.H' AS nama, '197910202005011003' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Surya Rahmah Labetubun., S.Kom.' AS nama, '198702122020122005' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'H. Soni Sofian, S.E., M.Pd.' AS nama, '196511161985031001' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Mukarramah, S.Pd.' AS nama, '199304162020122009' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Arif Rahman Hakim, S.E' AS nama, '198701082023211017' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Sari Damayanti, S.H.' AS nama, '198707162020122006' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Salma Nurul Zahara, S.Tr.Bns' AS nama, '199908182025052009' AS nip, 'Pranata Keuangan APBN Terampil' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ati Susanti, S.Ag., M.A.P.' AS nama, '197408082000122007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'St. Aflahah, M.Ed.' AS nama, '199312122020122020' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. H.Saprillah, S.Ag., M.Si.' AS nama, '197702102005011001' AS nip, 'Kepala Balai' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Niken Sayuti Widyastuti, S.Si., M.M.' AS nama, '197807092008012017' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Am Saifullah Aldeia, M.Pd' AS nama, '199406232020121006' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'La Ode Agus Jaya, S.T.' AS nama, '198908252020121010' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Kaharu, S.Ag., Mh' AS nama, '197501132006041003' AS nip, 'Ajun Peneliti Madya (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Sri Mulyati, S.E., M.M.' AS nama, '197705312005012006' AS nip, 'Kepala Bidang' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Toto, S.Ag' AS nama, '196401191988011001' AS nip, 'Penyusun laporan Keuangan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Neneng Maria Kiptyah, S.Pd,M.Pd' AS nama, '197708142005012010' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Siti Noor Azizah, S.Sos.' AS nama, '197209241997032001' AS nip, 'Pengevaluasi Ketenagaan' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Tusi Hartati, S.E., M.A.B.' AS nama, '196902102002122003' AS nip, 'Penyusun Program Anggaran dan Pelaporan' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Mukhiar, S.Pd., M.Pd' AS nama, '196904251993101001' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Ani Muflihah, Mm' AS nama, '198311142003122002' AS nip, 'Pengadministrasi' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Zainal Arifin, Se.' AS nama, '198401122009101001' AS nip, 'Analis Pengembangan SDM Aparatur (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Hj. Afiati, S.E., M.Ab.' AS nama, '197212221998032001' AS nip, 'Arsiparis Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Ahmad  Hendi Trastiyo, S.Sos.' AS nama, '196904152005011009' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'H. Achmad Nidjam, S.Ip., M.M.' AS nama, '196906081988021001' AS nip, 'Kepala Bidang' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Adi Mardinata, S.E.' AS nama, '198403172003121006' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Hj. Endah Prasetyani., S.Kom., M.M' AS nama, '197801072005012006' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Ahmad, S,Pd,S,Ipi' AS nama, '196907272002121003' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Dr. Ispawati Asri, M.M.' AS nama, '196909062003122001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Devi Kurniawati, S.Pd.' AS nama, '198202172023212022' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Rahmawati' AS nama, '196504271985032001' AS nip, 'Pengelola Perpustakaan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Izzi Safir, S.E.M.Si' AS nama, '197911272008011018' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Yuhandi' AS nama, '196506071987031001' AS nip, 'Pengadministrasi Pelatihan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'H Ahmad Rasyid , Lc.,M.Pd' AS nama, '197308042001121002' AS nip, 'Analis Monoitoring, Evaluasi dan Pelaporan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Azis Kurnia Wihardani, S.T' AS nama, '198502162011011009' AS nip, 'Analis Monoitoring, Evaluasi dan Pelaporan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Farida Ishak Indrawan, S.E.' AS nama, '198505182009122003' AS nip, 'Analis Kebijakan Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Yuly Rusmariani, Se' AS nama, '198407072008012012' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Mardiyanti, M.Pd.' AS nama, '197001011997032004' AS nip, 'Widyaiswara Utama Madya (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Zaenal Karihin, S.Kom., M.M.' AS nama, '198511282011011006' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Drs. Saiful Bahri, M.A.' AS nama, '197006272002121001' AS nip, 'Kepala Bidang' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Deden Wahyudin, S.Fil.I' AS nama, '197902092005011006' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Mohammad Tahmid, M.Pd' AS nama, '196605041992031005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Hj. Djubaidah, S.Ag, M.Pd.' AS nama, '197903072003122003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Peny Aristanti, S.Ag.' AS nama, '196605261985032002' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Risyoni Faqih Yusufa, S. Ip.' AS nama, '199203242020121007' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. Andi Isra Rani, S.Si., S.Pd., Mt.' AS nama, '198205312009011012' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Nani Qurotul AYun , St' AS nama, '197409092003122002' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Dr. Rahmiyati, S.E., M.Ap.' AS nama, '197412242006042001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Fajar Rukman , S.E., M.M' AS nama, '196609282005011004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Nursanti, S.Ipi., M.Pd' AS nama, '197911062006042003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Rahmi Siregar, S.Sos.' AS nama, '197912162009122002' AS nip, 'Penyusun Bahan Publikasi (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Siti Kusriyah, S.Ag., M.Pd.' AS nama, '197107152006042001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Qurrotu Aini, S.Psi.,M.Psi' AS nama, '198010112005012004' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Drajat Gandhy Rahmadi, S.E' AS nama, '197910182006041014' AS nip, 'Kepala Bagian' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Dudi Irawan' AS nama, '198011112009101002' AS nip, 'Pengadministrasi' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Agustina , S.Kom., M.M.S.I.' AS nama, '197109012005012005' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Yaniwati, S.E., M.Ap.' AS nama, '198101022009122001' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Budi Nugraha' AS nama, '196710041994031002' AS nip, 'Analis Penjamin Mutu (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Margo' AS nama, '196711021989031001' AS nip, 'Pengadministrasi' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Uswatun, S.Pd' AS nama, '198202162014122003' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Amik Tri Istiami, S.Pd., M.M' AS nama, '197110082005012003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Dr. Muhammad Salman, S.Ag, M.Ag' AS nama, '197301042000031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. H Muhammad Ali Ramdhani, S.Tp., M.T.' AS nama, '197111062008011009' AS nip, 'Kepala Badan' AS jabatan, 'Badan Moderasi Beragama dan Pengembangan Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Mohamad Topan, S.Kom.' AS nama, '199212222020121009' AS nip, 'Analis Data dan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Dewira Christofel, S.Pd' AS nama, '199712132025052008' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'M. Pebri Yanto, S.Kom' AS nama, '198902222023211019' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Nurjannah, S.Ip' AS nama, '199301172024212041' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Isti Mawaddah, A.Md.' AS nama, '197908072007012020' AS nip, 'Pustakawan Terampil Pelaksana Lanjutan' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Refa Ristyo Wijaya, S.H.' AS nama, '199410162020121014' AS nip, 'Perancang Peraturan Perundang-Undangan Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Sholihuddin, M.Pd' AS nama, '197201242008011008' AS nip, 'Lektor/Sekretaris Unit' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Dra.  Masyitoh' AS nama, '196906232005012004' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Latifa Rahmi, S.S.I.' AS nama, '199710212022032002' AS nip, 'Pentashih Mushaf Al-Qur?an Ahli Pertama' AS jabatan, 'Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Idea Hudaya, S.Ag' AS nama, '197505292003121003' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Paisal, Sh.' AS nama, '198010102009011023' AS nip, 'Peneliti Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ardi Siregar, S.Kom.' AS nama, '198511102023211020' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Diah Ismayani, S.Ds' AS nama, '199404292023212046' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Phindi Agung Dharmanto, Se' AS nama, '198111182009121004' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Cahya Novita Sari, S.Kep.,  Ners' AS nama, '199211062022032002' AS nip, 'Perawat Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Cindi Paramita Februari, S.Pd.,M.Si.' AS nama, '199002162025052003' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Fadliadi , S.Ag.' AS nama, '197304021999031003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'I Nyoman Sutama' AS nama, '198409122009011009' AS nip, 'Pengadministrasi Sarana dan Prasarana (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Rahmad Sholikhin, M.Pd' AS nama, '199404232025051001' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Rismawaty M, S.Si.,M.M' AS nama, '198603052008012001' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Siti Fauziah Zahratunnisa, S.Mat.' AS nama, '199810102024212048' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Alifah Anggun Pratiwi, M. Acc' AS nama, '199208012020122024' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Fajar Adhy Nugroho, S.Sos.,M.Si.' AS nama, '197007111999031001' AS nip, 'Kepala Bidang' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Imanuel Rumayom, St' AS nama, '198212202009121002' AS nip, 'Penyusun Standar dan Sistem Prosedur Kerja' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'I Putu Wantika Ananda, Se' AS nama, '198011272005011003' AS nip, 'Kustodian Kekayaan Negara (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Eka Gustiana, S.Pd, M.Si' AS nama, '198208102005012003' AS nip, 'Penyusun Data Pendidikan Agama dan Keagamaan (Jabatan Pelaksana)' AS jabatan, 'Pusat Litbang Bimbingan Masyarakat Agama dan Layanan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Tauhid, S.H.I' AS nama, '198707242020121009' AS nip, 'Analis Kerjasama Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Irsafitri Isnaeni Sirajuddin, M.Pd' AS nama, '199401122025052008' AS nip, 'Calon Widyaiswara Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Rahmat Saehu, M.Sos.' AS nama, '199203262020121010' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Pusat Litbang Bimbingan Masyarakat Agama dan Layanan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Eka Pangestuti, S.I.P., M.P.A.' AS nama, '198609032009122001' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Djoksan R. Radjaba Ycolle, S.Sos' AS nama, '196601011987101002' AS nip, 'Pustakawan Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Wahidin' AS nama, '196808022014111001' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Riri Savitri, S.Pd., M.Pd.' AS nama, '197604222005012004' AS nip, 'Penyusun Bahan Informasi (Jabatan Pelaksana)' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Yayan Mulyana, S.Pd.I., M.Pd.' AS nama, '197506082009011005' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Misbah Ariani, Se, Mm' AS nama, '198308042008012007' AS nip, 'Analis Monitoring dan Evaluasi Pelaksanaan Anggaran (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Syarif Husain, S,Ag., M.Si.' AS nama, '196909091998021001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dewi Yantiningsih, A.Md' AS nama, '197901212007012017' AS nip, 'Pustakawan Terampil Pelaksana Lanjutan' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Aby Haryanto' AS nama, '198602152023211014' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Aep Saepudin, S.Ag' AS nama, '196605252006041001' AS nip, 'Pengelola Humas dan Protokol' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ir. Hikmawati Hanurani, M.Si.' AS nama, '196707032003122005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Feri Kurniawati, S.Sos., M.Si' AS nama, '198102182009012006' AS nip, 'Analis SDM Aparatur Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Zubaidi, A.Md' AS nama, '198904282023211015' AS nip, 'Pranata SDM Aparatur Terampil' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Andriyas Hariyandi, S.Kom' AS nama, '198407202023211013' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Ferunika, Se., M.Si' AS nama, '198210202002122002' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Dirhamsyah, S.E' AS nama, '198403122014111002' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'H. Nazaruddin Nawir, S.Kom' AS nama, '197304092003121002' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Zen, S.Pd.I.,M.M.' AS nama, '197701142010011003' AS nip, 'Analis Jabatan' AS jabatan, 'Balai Litbang Agama Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. Ni Wayan Silawati, Mm' AS nama, '195805221982032001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Rico Wijaya, S.E' AS nama, '197410092024211005' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'H. Saipul Akbar , S.Pd.I' AS nama, '196710261989031003' AS nip, 'Asesor SDM Aparatur Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Hj. N. Yuyun Yuliasih, Se.' AS nama, '196706171992032002' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Nur Sidik, A.Md' AS nama, '197411282023211003' AS nip, 'Pranata Komputer Terampil Penyelia' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Ngakan Putu Denny Fajar Bagaskara, Se' AS nama, '199407012020121008' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Ida Safitri, S.Akun.' AS nama, '199702112025052007' AS nip, 'Analis Anggaran Ahli Pertama' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nur Ubay' AS nama, '197908062009011015' AS nip, 'Pengelola Kepegawaian (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Rizky Anggraini Utami, S.Si.' AS nama, '199910302025052007' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Wemmy B.Lengkong,S.Sos,Sh,Msi' AS nama, '197003211996031005' AS nip, 'Pustakawan Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Aryyadi Setiawan, A.Md.Kom.' AS nama, '200202072025051002' AS nip, 'Pranata Komputer Terampil Pelaksana' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Hery Susanto, S.S., M.Ap' AS nama, '198311132009011009' AS nip, 'Kepala Bidang' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Dr. Seska Vonny Langitan, M.Si, M.Th' AS nama, '197008162005012004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Margeritha Alice Richardy Pariela' AS nama, '199005092025052002' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Siti Afrianti , S.Pd., M. Pd.' AS nama, '198508292009012008' AS nip, 'Analis SDM Aparatur Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Fauzan Ariwibowo, Sh' AS nama, '198711212024211016' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Agus Gunawan, A.Md.' AS nama, '199508092020121007' AS nip, 'Pengelola Layanan Operasional (Jabatan Pelaksana)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Akhmad Miftakhul Ulum, A.Md.Kom' AS nama, '199104022025051001' AS nip, 'Penata Laksana Barang Terampil' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Wachidun, S Pd., M.Pd.' AS nama, '197306132003121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Noor Mochamad Diantoro, A.Md' AS nama, '199610062020121012' AS nip, 'Pengelola Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Danang Eka Sandi, S.Sos. M.M' AS nama, '1,97601E+17' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dra Rawati, M.Pd.I' AS nama, '196812042006042001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Yulianda Betri, S.E.' AS nama, '198907312020122006' AS nip, 'Analis Perencanaan Anggaran (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Nor Ahla Agustati, Se.,Mab' AS nama, '197708262003122003' AS nip, 'Penyusun Laporan Hasil Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Azni Zuhrini S.Pd.I. M.Pd.' AS nama, '198908202020122010' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Ahmad Musodik, M.M.' AS nama, '196401251991031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Yosi Herlina, S.Pd.I' AS nama, '198604162020122003' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Andriko Firma, A.Md.' AS nama, '199107192020121004' AS nip, 'Pengelola Barang Milik Negara (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Vegi Virgora Hardi, S.Pd' AS nama, '199207222020122015' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'St. Marhamah Sabry , S.Ag, M.Ag' AS nama, '197209112005012006' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Dedik Subroto' AS nama, '197704102005011003' AS nip, 'Pengelola Sarana dan Prasarana Kantor (Jabatan Pelaksana)' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Titi Isnaini Fauzah, S.Sos,.M.Si.' AS nama, '197605182008012019' AS nip, 'Peneliti Ahli Muda' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Fatma Jati Herlani, S.Hum.' AS nama, '198510202019032010' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Khusnul Muna, M.Pd' AS nama, '199111052020121007' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nur Laili Noviani, S.Psi' AS nama, '198511092009012004' AS nip, 'Peneliti Ahli Muda' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Indria Sukmawati., S.Pd' AS nama, '197712242011012005' AS nip, 'Analis Penegakan Integritas dan Disiplin Sumber Daya Manusia Aparatur (Jabatan Pelaksana)' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Zahra Alyani Fauhan, S.K.M.' AS nama, '199612252024212059' AS nip, 'Penyuluh Kesehatan Masyarakat Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Purbaya, S.Kom' AS nama, '198606252009121004' AS nip, 'Penyusun Standar dan Sistem Prosedur Kerja' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Hasmirah, Se.,M.A.P' AS nama, '198304242008012026' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ida Aulia Rohmah, S.Psi' AS nama, '199002142020122003' AS nip, 'Analis Ketatalaksanaan' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Agus Iswanto, S.S.,Ma.Hum' AS nama, '198308232009011007' AS nip, 'Peneliti Ahli Madya' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Wahab, M.Pd' AS nama, '195810131986031002' AS nip, 'Peneliti Ahli Utama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Aji Nugroho, Lc., M.Pd.I.' AS nama, '198412122020121002' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Erna Nurkholida, M.Pd' AS nama, '197611252007102005' AS nip, 'Lektor' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Nurprastia Amanda Dewisita, S.Kom' AS nama, '199312222023212046' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Yulinar Aini Rahmah, M. Ag.' AS nama, '199407052020122015' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Rahendra Sukma, Se' AS nama, '198202212009011022' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. A. Saepudin, M Ag' AS nama, '197305122002121001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ryo Yudowirawan, S.Kom' AS nama, '199001162019031009' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Aswin Naiu, Se., Mm.' AS nama, '197306202008011019' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Fenty Herlina Sari, Se, M.Si' AS nama, '198106112008012022' AS nip, 'Analis laporan Realisasi Anggaran (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Muntakhib, S.Ag' AS nama, '197807122009011015' AS nip, 'Peneliti Ahli Muda' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Antono, M.Pd' AS nama, '198207092005011002' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Rahman Ibrahim Numare, S.T.' AS nama, '199212072020121008' AS nip, 'Penyusun Rencana Kehumasan Dan Perpustakaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Arif Rahman Hakim, Se' AS nama, '198802282020121005' AS nip, 'Verifikator Keuangan' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Moch. Lukluil Maknun , S.S' AS nama, '198411132009121004' AS nip, 'Peneliti Ahli Madya' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Santa Nialpa, S.E' AS nama, '199701072023212027' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Sekretariat Badan Amil Zakat Nasional' AS asal_satker
    UNION ALL
    SELECT 'Gatot Tri Laksono, S.Kom.' AS nama, '197105081994031001' AS nip, 'Teknisi Litkayasa Terampil Pelaksana Lanjutan' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Umi Muzayanah , S.Si. M.Pd.' AS nama, '197801042005012003' AS nip, 'Peneliti Ahli Madya' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Surya Trisna, S.Si., M.Pd' AS nama, '198705062020122010' AS nip, 'Analis Data dan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Yuyun Libriyanti, M.Pd.I' AS nama, '198710182020122008' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Siska Nur Apriyani, S.I.Pust.' AS nama, '199504302020122007' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Umi Masfiah, M.Ag' AS nama, '197510182003122001' AS nip, 'Peneliti Ahli Madya' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Oktarina Endang Suryani, S.E.' AS nama, '199310162020122008' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Erma Kurniasari, S.Pd' AS nama, '198303232009012014' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Rinaldi, S.Pd' AS nama, '199405112020121013' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Ika Berdiati, M.Pd.' AS nama, '196507161998032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Rice Yolanda, S.E.' AS nama, '199407172020122018' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'H. A. Saepul Uyun, Sh.I' AS nama, '196607271992031002' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Zainuddin, S.Pd' AS nama, '198604222025211011' AS nip, 'Lain-Lain' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Joko Waluyo, S.Pd., M.Pd' AS nama, '198201162006041002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Nisaul Jannah, S.T' AS nama, '199706142020122018' AS nip, 'Analis Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hanafi Pelu, S.Pd., M.Pd' AS nama, '197905242002121003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. M. Samir Patsan, M.Ag' AS nama, '196006041991031001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Mulyanah, A.Md.Kes' AS nama, '197605292024212008' AS nip, 'Terapis Gigi dan Mulut Terampil' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. M. Arskal Salim Gp, M.Ag' AS nama, '197009011996031003' AS nip, 'Kepala Pusat' AS jabatan, 'Pusat Litbang Lektur Khazanah Keagamaan dan Manajemen Organisasi' AS asal_satker
    UNION ALL
    SELECT 'Drs. Abdussalam , M.Pd,Ctesol' AS nama, '196512031994031004' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dedi Hendra Lesmana Harahap, Se' AS nama, '197606132009011014' AS nip, 'Analis Monitoring dan Evaluasi Pelaksanaan Anggaran (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Rike Humairoh S.H., M.H.' AS nama, '199406032025052004' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'M. Lukmanul Hakim, St' AS nama, '198103242006041002' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Hilman, S.Pd' AS nama, '199211142023211027' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Lily Jumiati, S. Pd.' AS nama, '198007052005012008' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Nimas Zanuba Marine Misarowati, S.I.Kom' AS nama, '200003232025052008' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Agus Akhmadi, M.Pd.' AS nama, '1,96308E+17' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Fikri Zakiy, S.M.' AS nama, '199608192020121007' AS nip, 'Penyusun Kebutuhan Barang Inventaris (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Suaebah, S.Ag.M.Pd.' AS nama, '197810182023212010' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Rifai Harahap, S.Kom.' AS nama, '199212032023211022' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Dudu, S.Pd' AS nama, '197006051990031005' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Mahin Mahmud Mashum, S.Kom' AS nama, '198705112020121006' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Bambang Irwandi, S.Pd.I' AS nama, '198907062024211018' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Regina Marta Deyu, S.Akun' AS nama, '199809292025052004' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Biro Perencanaan dan Penganggaran' AS asal_satker
    UNION ALL
    SELECT 'Fahrul Raji Lestusen, S.Sos' AS nama, '198905152024211030' AS nip, 'Analis Sumber Daya Manusia Aparatur (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Erwan, S.Ag' AS nama, '197412022003121004' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Ory Adisky Pani, M.Pd' AS nama, '199508282025052008' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Hamdani, S.Ag' AS nama, '197508141997031002' AS nip, 'Perencana Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Abdul Hakim Hidayatullah, S.Ag' AS nama, '197212012023211002' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Siti Elita Akashi, S.Psi' AS nama, '199402052025052001' AS nip, 'Asesor SDM Aparatur Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Sumber Daya Manusia Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Zahrul Buadi, S.Sos' AS nama, '196610141989021001' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Niar Yuniarti, Sp., M.Pd.' AS nama, '197306052003122002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Didik Maulana, A.Md' AS nama, '199608202025051007' AS nip, 'Penata Laksana Barang Terampil' AS jabatan, 'Sekretariat Badan Moderasi Beragama dan Pengembangan Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Resti Amnuza Shaly, Sp' AS nama, '199106142025052001' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Zulhan Hanif, St' AS nama, '198110022009041004' AS nip, 'Pengadministrasi Umum (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Ilyas, S.Pd., M.Pd.' AS nama, '197305252003121004' AS nip, 'Lektor/Kepala Unit' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Ngamilah, M.Si' AS nama, '195909191990022001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Anshori' AS nama, '196605191993031002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Rima Maulida, S.E.' AS nama, '200007292025052010' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Hilalliyah, S.Si.M.Pd.' AS nama, '197608212003122002' AS nip, 'Analis laporan Realisasi Anggaran (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Fandy Akhmad, S.Sn' AS nama, '199607012020121017' AS nip, 'Penyusun Bahan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Hindun, M.Pd.' AS nama, '195612101983032002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Adam, Se' AS nama, '197508182023211006' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dwi Cahyani, Se' AS nama, '199301162020122027' AS nip, 'Pengelola Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nanang Suryana, S.Ag.' AS nama, '197604102003121002' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Chilman Taris Azinuddin, S.Hum' AS nama, '199403072020121017' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Rukhana Fitriati, S.Sos., M.Ap' AS nama, '198307062009012006' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Deni Adam Malik, S.S' AS nama, '197901122023211009' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Nelly, Mm' AS nama, '196711261994032003' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Siti Chaerunnisa, S.Si' AS nama, '198101032009012008' AS nip, 'Analis Pengembangan Karir (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Fesal Musaad, S.Pd.,M.Pd.' AS nama, '197012051998031010' AS nip, 'Kepala Biro' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Nurmalasari Mulia Putri, S.H' AS nama, '200108062025052006' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Sartono' AS nama, '197211202009011005' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Yulianti, S.Pd, M.Pd' AS nama, '199207142023212056' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Nurhidayah Putri Wijayanti, S.Sos.' AS nama, '198906182024212029' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Inda Yani, S.Ab' AS nama, '199203232023212059' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Sekretariat Badan Amil Zakat Nasional' AS asal_satker
    UNION ALL
    SELECT 'Novirdiyanto, S.Ag, M.Pd.I.' AS nama, '197610312003121003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H Aguslani, M.Ag' AS nama, '196606061991031005' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'H. Muhammad  Sadli Mustafa, S.Th.I., M.Pd.I.' AS nama, '197807082009121002' AS nip, 'Peneliti Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Tari Rezti Aprianty, S.Kom.' AS nama, '199104262023212047' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Noval, S.Kom., M.T.I.' AS nama, '198602072009011005' AS nip, 'Pranata Komputer Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Rini Hariani, S.Kom' AS nama, '198109092009122004' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Surindi, S.Ag, M.S.I' AS nama, '197512232005011003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Ni Putu Dian Darmapatni, M.Si' AS nama, '199302182020122013' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Rina Aprillia, A.Md' AS nama, '199304112025052006' AS nip, 'Penata Laksana Barang Terampil' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Iza Suryani, S.Pd' AS nama, '198509132009012007' AS nip, 'Analis Organisasi dan Tata Laksana (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Auzy Fahrial, S.Psi' AS nama, '199407222023211021' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Alfi Untilatur Rochmah, A.Md. Lib.' AS nama, '199906242024212029' AS nip, 'Pustakawan Terampil Pelaksana' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Wahono, S.E.' AS nama, '198602122023211018' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Nurul Aini Dwi, S.Pd' AS nama, '199109152020122016' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Falahudin, S.S.' AS nama, '199409252022031001' AS nip, 'Pentashih Mushaf Al-Qur?an Ahli Pertama' AS jabatan, 'Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Firdaus, M.M.' AS nama, '197705192007121001' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Ansi Lazuardi Mansur, S.Pd' AS nama, '199406172025052006' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Manajemen Kepemimpinan dan Moderasi Beragama' AS asal_satker
    UNION ALL
    SELECT 'Dr. Tri Karyanto, Se,M.Adm.Sda' AS nama, '197412282009011006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Japar, M.Pd' AS nama, '196812311994031026' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'I Gusti Made Wahyudinata, S.E' AS nama, '198011152023211009' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Ahmad Husain, S.Ag, M.Ag' AS nama, '197005312002121001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'H. Mukhammad Nailil Fijjar, Sh, M.Ak.' AS nama, '198004142003121003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Sarifudin, S.Hum' AS nama, '199307022025051001' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Rani Syahputri, A.Md, Par' AS nama, '199706122025052004' AS nip, 'Pranata Keuangan APBN Terampil' AS jabatan, 'Sekretariat Badan Moderasi Beragama dan Pengembangan Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Giyanti, S.E' AS nama, '197202122007012034' AS nip, 'Pengelola Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Arifatin Kholisah, S.Sos' AS nama, '198102222009012008' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Drs. Mumuh Muhtarom, M.Pd' AS nama, '196207131991031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Raiza Abdi Fardani, S.Sos' AS nama, '199003172025051001' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Muhlis Sonu' AS nama, '123242467899837267' AS nip, 'Lain-Lain' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Rahmat Domu, S.Pd, M.Si' AS nama, '197511192005011004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Drs. Bambang Rudianto, M.Pd.' AS nama, '196803011994031004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Agus Apriansyah, S.Kom, Mm' AS nama, '197808222003121003' AS nip, 'Kepala Balai' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Dian Margiono, S.Pd.' AS nama, '198003061999031001' AS nip, 'Analis Data dan Informasi (Jabatan Pelaksana)' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Swastono Sapto Bintoro, S,Pt' AS nama, '197604272005011005' AS nip, 'Penyusun Rencana Program dan Anggaran' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Yuswono' AS nama, '197501312009101001' AS nip, 'Pengadministrasi Pelatihan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Teti Herlina, Se' AS nama, '198106232007122002' AS nip, 'Pengolah Data Anggaran Dan Perbendaharaan  (Jabatan Pelaksana)' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Bagus Adi Santoso, S.Kom.' AS nama, '199506082020121010' AS nip, 'Pengelola Sistem dan Jaringan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Dahlan, S.Pd.I' AS nama, '198412252024211009' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Rizkaliani Senja Utami, S.E' AS nama, '199805062025052005' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Biro Perencanaan dan Penganggaran' AS asal_satker
    UNION ALL
    SELECT 'I Gusti Ayu Putu Pastini' AS nama, '197001152007012042' AS nip, 'Pengelola Wisma (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Monica Henny Sudaryati, M.Si.' AS nama, '196303301987032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Nurnajemah, S.Ag.' AS nama, '196807151994032002' AS nip, 'Penyusun Laporan Hasil Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Rasyidul Basri, M.A.' AS nama, '195508041983031002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Artina Burhan, M.Pd.' AS nama, '195511111982032001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Saidan, M.Ag.' AS nama, '196103071990021001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Eldison, M.Pd.I.' AS nama, '196303191991031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Enidar, M.Pd.' AS nama, '196311141996032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Purnamawati, M.M.' AS nama, '196405011994032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Besri Effendi , S.Sos.' AS nama, '196409191989031004' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Elidarnis , S.E.' AS nama, '196502071986032001' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Ahd. Masduki' AS nama, '196507051992021001' AS nip, 'Pengolah Data Anggaran dan Perbendaharaan' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Emi Arbi' AS nama, '196505201994031004' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs Rismon, M.Pd' AS nama, '196509091999031004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Zanwir, S.Pd.' AS nama, '196510081992031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Nur Asril, M.M.' AS nama, '196603081994031003' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Eriantonis' AS nama, '196610081994031006' AS nip, 'Pengelola BMN' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Jasrizon' AS nama, '196609171992031002' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Hendri, M. Ed.' AS nama, '196805201994031004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Zulman, M.Ag.' AS nama, '196807272005011004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Rusliadi, S.Pd.' AS nama, '196808301999031003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Agusrida , M.Pd.' AS nama, '197008171999032004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Khurnia Eva Nilasari, M.Pd.' AS nama, '197110152005012003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Wan Nasir, S.Ag., M.Pd.' AS nama, '197104272003121003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Nurhidayah' AS nama, '197210091994032001' AS nip, 'Pengolah Data' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Fahrul Usmi , S.Iq., M.Ag.' AS nama, '197210282003121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Media Eka Putra, S.Ag, M.Ag' AS nama, '197703152002121006' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dessi Akhriani, S.E., M.M.' AS nama, '197412282009012003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Nefri Leni , S.E., S.Pd., M.Pd.' AS nama, '197504132009122001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Melati Yeni , S.E.Ak.' AS nama, '197706192008012018' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Etriyanto, S.Pd., M.A.B.' AS nama, '198001052005011005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Widodo, S.Sos. M.Pd.' AS nama, '197308191993031002' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dahihul Haq , S.Sos.' AS nama, '198005232003121002' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Abdul Hukmi, S. Ag.' AS nama, '197309072005011006' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'El Azadivon Fhelsi, S.Si., M.Biomed.' AS nama, '198006292006042003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Sri Hanum Laila' AS nama, '198009062007012010' AS nip, 'Pengolah Data' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Tri Juliansyah, S.E' AS nama, '199307232023211020' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Hj. Risyum Hernita, S.E.' AS nama, '197602032006042006' AS nip, 'Penyusun Program Anggaran dan Pelaporan' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'H. Aprianto, S.Ag., M.A.' AS nama, '197603012003121004' AS nip, 'Kepala Seksi' AS jabatan, 'Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Mardhiati Thamrin, S.Si, M.Pd' AS nama, '198103062008012017' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Mila Syarma, S.E.' AS nama, '197812032005012009' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Mukhlis , S.T.' AS nama, '198201062005011002' AS nip, 'Pranata Komputer Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Rivana Upitasari, S.E,.M.M.' AS nama, '198212202009012010' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Suryadi, M.Si.' AS nama, '198303152009121004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Novrizal, S.Sos.' AS nama, '198403252009121007' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Amelia Wihardi , S.Pd.I., M.A.' AS nama, '198403112009012009' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Fahmeini, S.Si.,M.Cio.' AS nama, '198405172008012009' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Mita Fauzana , S.Pd.,M.Pd.' AS nama, '198503262009012006' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Ayubhar, S.Sos' AS nama, '199711122025051006' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Fitria Agustina, S.Sos' AS nama, '199308092025052003' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'H.  Ndakwan, S.H.' AS nama, '197008132003121001' AS nip, 'Pengelola Angkutan Kendaraan' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Risma Yuliana Wahab, S.Kom.' AS nama, '198607232009122007' AS nip, 'Analis Laporan Pertanggungjawaban Anggaran (Jabatan Pelaksana)' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Nahdil Fikri, Se' AS nama, '197510251996031001' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Salmiah, S.Ag., M.Pd.' AS nama, '196303101994032001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dandy Wicaksono, S.Si' AS nama, '199004202019031017' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Ayu Miranti Amara, S. Pd' AS nama, '198512062009122003' AS nip, 'c' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Bambang Rudianto, M.Pd.' AS nama, '196803011994031004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Urip Muryanto, S.Si., M.Pd.' AS nama, '197405142005011006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'ZahraA, S.Pd' AS nama, '199203022020122015' AS nip, 'Analis Kerjasama Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Harianti, M.Pd.' AS nama, '199510252025052008' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Maulana Reza Arifin Prawiranegara, S.E.' AS nama, '200008172025051008' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Gilang Priambodo, S.T.' AS nama, '198704182024211012' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Chintya Nur Intan Aini, S.E.' AS nama, '200107032025052006' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Selfi Budiaty Ambaru, S.Ag.' AS nama, '197408102009012003' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Arif Ahmad Djalaluddin' AS nama, '197401142008011010' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Sitti Marwah, S.Sos.,M.A.P' AS nama, '197803012009012006' AS nip, 'Penyusun Program Anggaran dan Pelaporan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ghofar Ali, S.Pd' AS nama, '199607192023211007' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Anthony Hardinal Sijabat, S.E., Mmpp.' AS nama, '199305022020121009' AS nip, 'Pengelola Barang Milik Negara (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Ismail' AS nama, '199512252025211005' AS nip, 'Pengelola Layanan Operasional (Jabatan Pelaksana)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Syamsiah, S.Hi.' AS nama, '196812312007102007' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Ni Ketut Ayu Sriwiidiani' AS nama, '197303022009012003' AS nip, 'Pramu Kantor' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Muchlisin, S. Ag.' AS nama, '198003022001121003' AS nip, 'Pengembang Sarana dan Prasarana' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Eko Fajarwadi Setyawan, A.Md' AS nama, '197712232023211002' AS nip, 'Pranata Komputer Terampil Penyelia' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Hawaryyun Djaelani, S.Si.' AS nama, '198204072008012025' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Yeni Lesmana Dewi, Se' AS nama, '198407032009122006' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Septri Rahayu, S.Pd.,M.Pd' AS nama, '199209152020122010' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Mabda Amnesti Hananto, S.Kom.' AS nama, '199602232022031001' AS nip, 'Calon Pranata Komputer Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Sri Gustiningsih, S.Pd.' AS nama, '196808161993032002' AS nip, 'Penyusun Bahan Publikasi dan Promosi' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Syarifuddin, Ss., M.Hum.' AS nama, '198402172009121005' AS nip, 'Peneliti Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Priyanta , S.Pd., M.Pd' AS nama, '197611102006041003' AS nip, 'Penyusun Laporan Hasil Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Sugeng Sudarsono, M.Pd' AS nama, '196909041995031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Indra Tangkas Perkasa Sinaga S.T., M.M.' AS nama, '199209072025051002' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'H. Sholahuddin, M.Pd.I' AS nama, '196411291985031003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Hapizin, S.Ag' AS nama, '197305062005011009' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Linda Putri Trisnadariawati, S.S.' AS nama, '198802132024212036' AS nip, 'Penata Penerbitan Ilmiah Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. SyafiI, M.Ag' AS nama, '196607031994031004' AS nip, 'Kepala Pusat' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Septiana Donna Ardhilla, S.E.' AS nama, '198605192009122009' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Siti Nurhayati, M.M.Pd.' AS nama, '196701251993032003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'H. Asep Saefulloh, S.Ag, M.Pd' AS nama, '197005182002121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dina Hayati, S.Pd.' AS nama, '199205252023212061' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dwinanto Herry Wibowo, S.Kom' AS nama, '198011182006041003' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Sri Maryati H. Thaib, S.Sos, M.Si' AS nama, '198903062011022001' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Dr. Ir. Achmad Firdaus , M.M' AS nama, '196504301999031001' AS nip, 'Analis Kepegawaian Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Wildan Saputra Buntuan, S.Kom.' AS nama, '199401132020121007' AS nip, 'Pengelola Sistem dan Jaringan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Ibrahim, S.Si' AS nama, '197905132008011014' AS nip, 'Penyusun Bahan Publikasi (Jabatan Pelaksana)' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Saeful Nurdin, S.Pd., M.Pd.' AS nama, '198202252008011009' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Sri Maryati, S.E., M.M.' AS nama, '197604142008012012' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Achmad Dediono, S.T' AS nama, '199008162023211031' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Riffal Utama Wibawa, S.Kom' AS nama, '199806062025051004' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Hj. Astuti Nilawati, S.Pd., M.M.' AS nama, '196606021987032002' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Arifin' AS nama, '196308121985031007' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Adhika Widya Prastomo, S.Kom.' AS nama, '199307262025051003' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Khairul Rijal, M. Ag' AS nama, '199402112025051004' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Arif Gunawan Santoso, S.Si., M.A.Hum.' AS nama, '197910162008011022' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dede Anwar' AS nama, '196411101988031004' AS nip, 'Caraka' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hasra Mukhlisan' AS nama, '199011122024211023' AS nip, 'Dokter Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'A.Hasan Basri, Se,M.Adm.Sda' AS nama, '198410232009121008' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Fauzan Ahmad Agus Nugraha, St' AS nama, '199808012025051003' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Aan Nopriandi, S.Ip, M.Si' AS nama, '197911042009011007' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Hj Khairunnisa, M.Ed.' AS nama, '197004121997032005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Alfiansyah, S. Hum' AS nama, '199504272024211015' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'H. Erwansyah, S.E., Mm.' AS nama, '198407162002121007' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Ali Muadzin, S.Th.I' AS nama, '197806102024211006' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Ni Luh Yunita Dastrini, Se, Mm' AS nama, '198412302005012003' AS nip, 'Bendahara (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Jubaidi, S.Pd' AS nama, '200003082025051004' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Ni Putu Intan Puspa Dewi, S.Si.' AS nama, '199801312020122014' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Pusat Litbang Bimbingan Masyarakat Agama dan Layanan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Drs. Suhri Nasution, , M.Ag' AS nama, '196805141997031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Shufi Salsabila, S.Pd.' AS nama, '199709112023211009' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Amalia Puspayanti, S.Si., M.Pd' AS nama, '198301162006042004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Fitriah, Se,Ak., M.A.P' AS nama, '197610242009122003' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Fransiskus Haris Leonard, S.Ak' AS nama, '199003292020121001' AS nip, 'Analis Laporan Akuntabilitas Kinerja' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Baihaki Mukhtar, S.H.I.' AS nama, '198602252009121005' AS nip, 'Perancang Peraturan Perundang-Undangan Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Adib Abdushomad, M.Ag, M.Ed, Ph.D' AS nama, '197608022002121002' AS nip, 'Kepala Pusat' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Riezha Mutia, S.E., M.Si' AS nama, '199603252020122018' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Alprilia Nuriani Rachmawati, S.Pd' AS nama, '199304172023212039' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'I Putu Dicky Widhiantara, S.M' AS nama, '200006272025051005' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Hajir Rizky Nugroho, S.Kom.' AS nama, '200011132025051003' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Muklasin, S.H.' AS nama, '197410282005011001' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nirwani Jumala, M.Pd' AS nama, '197711262007102004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Ayu Dwi Rukmana, S.Ei.' AS nama, '199712162022032003' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Irfan Hidayat, S.E.' AS nama, '198206242023211011' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Tuti Nurdjannah Amba, Se' AS nama, '196603241989032002' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Amiruddin' AS nama, '196412311986021155' AS nip, 'Pengawas Kebersihan dan Keamanan' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Lukman Hasannudin, S.E' AS nama, '199110242024211014' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Sekretariat Badan Amil Zakat Nasional' AS asal_satker
    UNION ALL
    SELECT 'Dewi Ratnasari, Se' AS nama, '198104102009122002' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dra. Erna Zainah, Mm' AS nama, '196512201994032004' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Ni Putu Sri Devi Ratna Pratiwi, M.S.A.' AS nama, '199512112020122017' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Sekar Novia Cahyaningtyas, S.Sos' AS nama, '199311302023212049' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Usuludin' AS nama, '196304231994031004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Fikriya Malihah, M.S.I' AS nama, '198511252019032004' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Ina Muthmainna, S.Psi., M.Si' AS nama, '198607122009122007' AS nip, 'Asesor SDM Aparatur Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Siti Sinta Fauziah, S.Sos.' AS nama, '200008212025052009' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Fandy Akhmad, S.Sn.' AS nama, '337302010719960001' AS nip, 'Penyusun Bahan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Arief Rahman Hakim, S.Si' AS nama, '198506222009121006' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Sudirman Abdullah, M.Pd.' AS nama, '198101252010011011' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Fadel Zulvandanue, S.Kom' AS nama, '200104032025051003' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Asnandar Abubakar, St' AS nama, '197307012003121003' AS nip, 'Analis Kebijakan Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Alfiqi, S.Sos' AS nama, '199209152025051003' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Utari Ardiniamalia, S.E., M.Ak' AS nama, '199504062025052006' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Sri Ningsih, Se' AS nama, '196606111994032001' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Dedi Restendi, S.Pd, Mm' AS nama, '198006212009011006' AS nip, 'Pengembang Sistem Program' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Sri Rahayu, S.Kom' AS nama, '199003092019032009' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Senda Deliani Andaresta, S.Ap' AS nama, '200103032025052004' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Deddy Nur Prasetya, St., Map' AS nama, '198303262006041001' AS nip, 'Analis Perencanaan Anggaran (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Fenny Indra Astuti, S.Si, M.M.' AS nama, '198211142009012008' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Haris Budi Santosa, S.Pd., M.Pd.' AS nama, '196907181993011002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Melva Arnida, S.Sos.' AS nama, '197901292009122004' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Alvita Eka Rahmah, S.Ag' AS nama, '199808022022032001' AS nip, 'Pentashih Mushaf Al-Qur?an Ahli Pertama' AS jabatan, 'Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Hefson Aras , M.Pd.' AS nama, '196309111993031001' AS nip, 'Kepala Bagian' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Khomsani Kharismawati, S.E' AS nama, '199611282025052007' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Biro Perencanaan dan Penganggaran' AS asal_satker
    UNION ALL
    SELECT 'Rahma Pelu, S.Sos' AS nama, '197501012009122004' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'La Edy, S.E., Mm' AS nama, '197606132009011016' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Warda Tuny, S.Pd., M.Pd' AS nama, '198105122008012032' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Wajaiyana La Dalubi, Se' AS nama, '198305022009012011' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Herman Bin Saleh, S.Pd., M.Pd' AS nama, '198305042009121005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Drs. Abdullah Patty, M.Sc' AS nama, '196906022003121002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'La Djuma, S.Pd., M.Pd' AS nama, '197104062003121001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Tri Kurnia, Se' AS nama, '198504292009012008' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dra. St. Jumriati. S, M.Si' AS nama, '196501012003122002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Arif Ahmad Djalaluddin, S.Si., M.Si' AS nama, '197401142008011010' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Sudirman, S.Ag, M.Si.' AS nama, '197112312003121015' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Yusuf, S.H.I.' AS nama, '197709132007011009' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Asani, S.Ag.,M.Pd.I' AS nama, '197202052001121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Edoardus Johson Ohoiledwarin, S.Pak., M.Pd' AS nama, '197404282003121009' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Hanna Noija, S. Th., M.Pd' AS nama, '197205052000032001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Safrudin Salem, S.Pd.I' AS nama, '196511231986031003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Dr. Dewi Sri Indriati, M.H.I' AS nama, '196407271992032004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Yuliani Ananda Putri, S.Pd.' AS nama, '199807292025052008' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Manajemen Kepemimpinan dan Moderasi Beragama' AS asal_satker
    UNION ALL
    SELECT 'Heldy Monasophia Titarsole, S.Sos., M.Si' AS nama, '198008212009012007' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Eka Hartaty Lamusu, S.Ap, M.Ap' AS nama, '198707062009122003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Hasnawati, S.S., M.Pd' AS nama, '197907262006042001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Drs. Rusli, M.Si' AS nama, '196412311994031027' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Setia Handayani, M.H' AS nama, '199510052025052007' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Tuah Rizkiyah, M.T' AS nama, '198608112011012017' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Sofyan Yamin, S.Si., M.E.' AS nama, '197708052009011012' AS nip, 'Analis laporan Akuntabilitas Kinerja (Jabatan Pelaksana)' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Yunisa Azzahra, S.Kom' AS nama, '199406302023212042' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Sekretariat Badan Amil Zakat Nasional' AS asal_satker
    UNION ALL
    SELECT 'Rizka Azhari, S.E., M.Sc.' AS nama, '199605172020121012' AS nip, 'Pengelola Laporan Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Mujiono, S.Sos. S.Ipi' AS nama, '196705271985111001' AS nip, 'Pustakawan Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Drs. I Made Winarta, M.Pd.H' AS nama, '196203021983031007' AS nip, 'Pustakawan Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Mulyadi Idris, S.Ag.,M.Hum' AS nama, '197110191998031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dra. Ratna Hartati, M.Si' AS nama, '195901051983032001' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Denny Rochendi, Ss.' AS nama, '197201122005011003' AS nip, 'Bendahara Penerimaan/Pengeluaran' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Vivi Zaiyust, Shi' AS nama, '197907182023212016' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Ni Luh Nik Sri Astuti' AS nama, '198608082009102001' AS nip, 'Pengadministrasi Pelatihan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Fietra Listiana Kartika Murti, S.Si' AS nama, '199702132024212041' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'Lela Kodriah, S.Akun' AS nama, '200112052025052010' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Fica Aprillia Aisyah Aziz, M.Psdm' AS nama, '199004222019032012' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'I Komang Adi Pramana Putra' AS nama, '198905262020121007' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Erfiati  S.Pd.I.,Ma' AS nama, '198208132005012006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Yarwin, A.Md' AS nama, '199205012022031001' AS nip, 'Pengelola Barang Milik Negara (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Diah Siti Fatimah Azzahrah, S.Kom' AS nama, '200009242025052004' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Hidayat, S.Ip.' AS nama, '198507232024211013' AS nip, 'Analis Sumber Daya Manusia Aparatur (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Eni Astuti, S.I.Pust.' AS nama, '199305082024212052' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Fentia Lekatompessy' AS nama, '199002172024212026' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Deni Haryadi, S.Ag' AS nama, '197210282006041019' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Gusrafli, S.Pd.' AS nama, '197310232006041002' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Miftahul Jannah, A.Md.Lib.' AS nama, '200009292024212007' AS nip, 'Pustakawan Terampil Pelaksana' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'H. Cecep Hilman, M,Ag' AS nama, '197302242001121001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Azruhyati Alwy, Ss.,' AS nama, '197505022006042001' AS nip, 'Analis Organisasi dan Tata Laksana (Jabatan Pelaksana)' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Darmawan, Se' AS nama, '198707302023211019' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Umar Alhaq, M.Ag' AS nama, '199003092025051001' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Helli Helmansyah, S.Sos, M.Ap.' AS nama, '197403032005011006' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Prasiska Adela Susilowati, S.Kom.' AS nama, '199106092020122022' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Muklis Iribaram' AS nama, '199503042025211008' AS nip, 'Pengadministrasi Perkantoran' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Angga Madona, S.Kom' AS nama, '199003222020122012' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Jati Fernawati, S.Pd' AS nama, '198002082023212015' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ahmad SyaRoni' AS nama, '198607262014121001' AS nip, 'Petugas Keamanan' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Melyana, S.Si' AS nama, '198110192008012010' AS nip, 'Pengelola BMN' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Drs. I Made Agus Suarjana, M.Pd' AS nama, '196308161989031013' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Sudardi, St' AS nama, '197610282009101002' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Christy Forus Tokan, S.H' AS nama, '198711132024211013' AS nip, 'Pramu Bakti (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Drs. Abdul Kodir, M.Pd.' AS nama, '196107221986031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Muis Riadi, S.H, M.Si' AS nama, '197007231992031002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Aisa Ulate, Se' AS nama, '198910092023212050' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Abdul Jalil' AS nama, '196506201988031002' AS nip, 'Pengawas Sarana Kantor' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Japar, M.Pd' AS nama, '196812311994031026' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Ratu Kamaliah, S.Pd.I' AS nama, '198312082009012005' AS nip, 'c' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nani Rohmani, M.P.Fis' AS nama, '196911131994032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Yudo Al-Hinani Usman, S.Pd.' AS nama, '198809082023211030' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ayu Lestari, S.E.' AS nama, '199808042025052008' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Rizki Putri Nanda, S.Pd' AS nama, '199402252020122020' AS nip, 'Pengelola Perpustakaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Irhason, Ss, M.Ed' AS nama, '197607082003121002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Litbang Agama Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Mohamad Fauzan, S.Ag., M.Pd.' AS nama, '197201172002121003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Siti Khadijah, S.I.Pust' AS nama, '198907192024212026' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Moch Imam Rifa`I' AS nama, '198209102009101001' AS nip, 'Pengelola Kepegawaian (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Reina Intan Kusumawati, S.Si' AS nama, '199703232025052002' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Reynaldi Syaputra, S.Kom' AS nama, '199807262025051006' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Loka Pendidikan dan  Pelatihan Keagamaan Bandar Lampung' AS asal_satker
    UNION ALL
    SELECT 'St. Rosmini, S.Sos.' AS nama, '196406192007012008' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Anggraini Novita Sari, S.E.' AS nama, '199407212020122023' AS nip, 'Analis laporan Realisasi Anggaran (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Rois Mustofa, S.E., M.Ec.Dev.' AS nama, '198304232009121002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Safirda Ilhamia Fasma, S.E.' AS nama, '199206282020122018' AS nip, 'Analis Kebijakan Barang Milik Negara (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Rahmad Oktavianto, S.Kom' AS nama, '199210022020121003' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Arbain, S.Pd.' AS nama, '196906112003121003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muchamad Mukhlis, S.Pd.I' AS nama, '198511072023211020' AS nip, 'Pengembang Teknologi Pembelajaran Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Zakiah, Se., Ak.' AS nama, '197809112008012022' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. H. Mundzirin Yusuf, M.Si.' AS nama, '195005051977011001' AS nip, 'Guru Besar' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Prof.Dr.. H. A. Faisal Haq , M.Ag.' AS nama, '195005201982031002' AS nip, 'Guru Besar' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. H. Kamrani Buseri, Ma' AS nama, '195005251979021001' AS nip, 'Guru Besar' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. H. Mohd. Hatta' AS nama, '195006091978031001' AS nip, 'Guru Besar' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr. Abdul Wahab Abd. Muhaimin, Lc., Ma.' AS nama, '195008171989031001' AS nip, 'Guru Besar' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Amirullah. S, Se' AS nama, '198905122020121006' AS nip, 'Pengelola Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Lava Himawan, S.Pd.' AS nama, '199410072020121016' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Pusat Litbang Pendidikan Agama dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Nilam Nur Azizah, S.E.' AS nama, '198408092008012004' AS nip, 'Kepala Bagian' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Yotan MangaPan, M.Pd.K' AS nama, '197302152000031002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Miftakhurozaq, S.Ag.' AS nama, '197811172024211006' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Okto Arinda Putri, S.E' AS nama, '199410242023212028' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Drs Ferizal Taufik Hidayat, Mh' AS nama, '196802022006041026' AS nip, 'Pengelola Humas dan Protokol' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Syaiful Afdhal, S.Si.' AS nama, '199308112025051003' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Abdul Hadi, Sh,S.Ipi' AS nama, '197906252003121001' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Nurdin, S.Pd.I, M. Pd. I' AS nama, '198110072007101001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Sopi, S.Ag' AS nama, '197308172007011039' AS nip, 'Pengevaluasi Program' AS jabatan, 'Pusat Litbang Pendidikan Agama dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Paramita Nurul Astrini, A.Md' AS nama, '199203312025052004' AS nip, 'Penata Laksana Barang Terampil' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Komarudin, S.Ag' AS nama, '196907032003121002' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Naufal Wanhar, S.Kom' AS nama, '199803252025051006' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Hamim, S.Kom' AS nama, '197906302005011004' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Hilman Taufik, S.E.' AS nama, '197808132008011009' AS nip, 'Pranata Keuangan APBN Penyelia' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Ni Made Dwi Kusumawardani, S.Si' AS nama, '198910222022032001' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Zarkani, S.Ag., Map' AS nama, '197310102003121005' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Siti Fojia, Se' AS nama, '198311252006042018' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'I Wayan Iwantara, S.Si.,M.Pd.' AS nama, '198104042008011020' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Ahmad' AS nama, '197709022007011021' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Doni Putra, S.Si' AS nama, '199710262022031001' AS nip, 'Calon Statistisi Ahli Pertama (Pengangkatan Pertama)' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Rini Purwanti, S.Sos., M.Si.' AS nama, '197605242009012006' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Nurudin, S.Pd.I., M.Si.' AS nama, '198007202006041003' AS nip, 'Kepala Biro' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Dr. Asih Aryani, M.Pd.' AS nama, '196712061997032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Ridwan, M.H.I.' AS nama, '197005071995031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Sudirman Yahya, Se, M.Ap' AS nama, '197405172005011003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Anak Agung Istri Dumay Praharningsih, S.P.' AS nama, '200205022025052005' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'H. Asep Hadiat, S.H., M.H.' AS nama, '196807131989031002' AS nip, 'Kepala Bidang' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Zidane' AS nama, '199807062025051003' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Siti Rismadilla, A.Md' AS nama, '199612252020122027' AS nip, 'Pengelola Asrama (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'H. Al Imran, S.T., M.M' AS nama, '198207142010011029' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Asyfia Salsabila Rahmawati, S.Pd.' AS nama, '200202252025052007' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Mahyudinnor, S.Pd, M.Ed' AS nama, '196805031998031007' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Muchammad Toha, S.Ag., M.Si.' AS nama, '196910282002121002' AS nip, 'Kepala Balai' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Irham Ginoga, S.Ag' AS nama, '196910152009011008' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Nur Ubay' AS nama, '197908062009011015' AS nip, 'Pengawas Kebersihan dan Keamanan' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Minhat, M.Pd' AS nama, '196203101987031001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Nurhanidha Rahma Riztania, S.Psi.' AS nama, '200003072025052003' AS nip, 'Asesor SDM Aparatur Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Sumber Daya Manusia Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Abu Fadhailal Syarief, S.Kom' AS nama, '198006262005011003' AS nip, 'Analis Data dan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Syahrial Noor, S.Sos' AS nama, '196701061988011001' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Yohanes Dedio Yuan Heriyanto, Skm' AS nama, '199203092024211015' AS nip, 'Penyuluh Kesehatan Masyarakat Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Irna Fithriah., S.E., M.M.' AS nama, '197812232003122003' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Drs. H.  Ahmad Sodiqin , Mm' AS nama, '196106131987031006' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Husniawati, A.Md, Kep' AS nama, '198207122024212018' AS nip, 'Perawat Terampil Pelaksana Pemula' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Fasya Pramudia, S.Pd' AS nama, '199903032025051005' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Pusat Pengembangan Kompetensi Manajemen Kepemimpinan dan Moderasi Beragama' AS asal_satker
    UNION ALL
    SELECT 'Syafanatun Naja, S.M.' AS nama, '200210272025052004' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Paulus Tasik Galle' AS nama, '196908222008011005' AS nip, 'Kepala Sub Bidang' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Agus Triyanto, S.Kom' AS nama, '198608302005011002' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Patima Wakang , S.Pd., M.Pd' AS nama, '197006172006042003' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Drs. Swengli Umar, M.Si' AS nama, '196110171988031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Nazarullah, S.Ag. M.Pd' AS nama, '197301271999051001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Muhammad Hasbi , M.Ag.' AS nama, '196707071994031004' AS nip, 'Lektor Kepala/Kepala Unit' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Rachmat, S.E' AS nama, '198709202020121008' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Wanhar, M. Pd' AS nama, '196602281993031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Suharti, S.Sos, M.Si' AS nama, '196703061989112001' AS nip, 'Penyusun Bahan Siaran dan Pemberitaan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Shain, S.Pd.I' AS nama, '197905052009011018' AS nip, 'Verifikator Keuangan' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Muh. Nuhwaqif, S.Kom.' AS nama, '199607232025051007' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Mufida Sadiq Alamri, Se' AS nama, '198405072002122001' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'M. Iqbal Hasby An Najmy, S.Hum' AS nama, '199004242023211030' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Khofifah Evaralda Anggreini, S.Pd.' AS nama, '200010122025052007' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Risdiyati, S.Pd, M.Pd' AS nama, '196603261988032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'H. Abdul Wahib Amsa, S.H., Mh' AS nama, '196802071993031005' AS nip, 'Analis SDM Aparatur Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Ade Ima Ani Astuti' AS nama, '196805271994032002' AS nip, 'Penyusun Bahan Penyelenggaraan Diklat' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Luluk Masruroh, S.Si. M.Pd' AS nama, '198410032008012004' AS nip, 'Statistisi Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Grindulu Machya, S.Sos.I' AS nama, '197912082007011015' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Mia Miratussholihah, S.E' AS nama, '199805142025052014' AS nip, 'Analis Pengelolaan Keuangan APBN Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ulfah Cahyaningsih, S.E., M.Pd' AS nama, '198006182003122003' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Ramin, M.Ag' AS nama, '196305141984121001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Rika Sari, S.Sos' AS nama, '199710092025052007' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Sujito, S.H' AS nama, '198302112023211010' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Kamarullah, S.Ag, M.Pd' AS nama, '197606222000121002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Dr.Istiati Hatma Mallewai, S.Pd, M.Pd' AS nama, '197609132003122001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Zaenal Mutaqin' AS nama, '196103171986031001' AS nip, 'Penghulu Ahli Madya/Kepala KUA' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Rizky Ayu Amalia, S.E.' AS nama, '199307102020122027' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Rofik Efendi, Mm' AS nama, '196906171998031002' AS nip, 'Lektor/Kepala Unit' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Achmad Muslih, S.Sos' AS nama, '196504082000121003' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Ismail Lating, S.Pd' AS nama, '197708062024211003' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Litbang Agama Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Purnawati, Se, M.Si' AS nama, '197705172008012021' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Dr.  Drs. Muhamad Soif, M.Pd.I' AS nama, '196806152000031005' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Wadda Sakinah, S.Kom.' AS nama, '200209262025052002' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'Afiati Muthmainah, Se, S.Pd' AS nama, '198608132020122012' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Heryanto Isak, M.E' AS nama, '197812312005011022' AS nip, 'Penyusun Rencana Program dan Anggaran' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Nuryanto, S.Pd.I' AS nama, '197108021994031003' AS nip, 'Analis Jabatan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Noviawita Yulia, S.Pd' AS nama, '199207232020122015' AS nip, 'Analis Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Nur Robaniyah S.H., M.Ag.' AS nama, '199609212025052002' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dr. Dra. A. Nurjannah , S.Pd, M.Pd' AS nama, '196704071994032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Wawan Djunaedi, M.A.' AS nama, '197706022005011005' AS nip, 'Kepala Biro' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Zaki Mubarak S.H, M.H.' AS nama, '199208182025051004' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Laila Safitri, A.Md' AS nama, '199206012025052001' AS nip, 'Pranata Keuangan APBN Terampil' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Takdir , S.Kom' AS nama, '198904192011011003' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Subhan Sofhian, M.Pd' AS nama, '195703011983031004' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Kasmawati, Ss, M.Pd' AS nama, '197101052006042034' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Dr. Maulana , S.Sos, M.Pd' AS nama, '197003021993111001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Yulia Setiawati, S.Sos' AS nama, '197307122005012005' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'I Gusti Ayu Putu Ekaningsih, S.E' AS nama, '197907022009102003' AS nip, 'Pengelola Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'I Wayan Sutama, M.I.Kom.' AS nama, '198303122018011002' AS nip, 'Asisten Ahli' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'I Nengah Kusmantika, S.H.' AS nama, '198310172024211010' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Cahaya Pratiwi, S.E' AS nama, '198705092011012010' AS nip, 'Penyusun Standar Pelayanan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Abun Sobur' AS nama, '196605102005011013' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Hapizul Ahdi, M.H' AS nama, '199008272020121005' AS nip, 'Calon Dosen Asisten Ahli (Pengangkatan Pertama)' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Zikri Isna Turmudzi, S.Si' AS nama, '198501042023211014' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Muhimatul Kibtiyah, S.H.I., M.Si.' AS nama, '198111222005012004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Juhairia Iribaram, S.I.P' AS nama, '199609242023212031' AS nip, 'Pranata Humas Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Riza Nugraha Putra, S.Ikom' AS nama, '198502012023211015' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Dr. Makmun Hidayat, M.Pd.' AS nama, '197304142005911015' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Tim Fasilitator ( Shohib, M.Ag., Dedi Restendi, M.M., Dr. Radea Juli A. Hambali, M.Hum)' AS nama, '123456788910111213' AS nip, 'Widyaiswara Ahli Madya / Koordinator' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. Haisang, S. Ag., M.Pd.' AS nama, '197108172000032003' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Dr. H. Aep Syaefudin Firdaus, M.Pd' AS nama, '196606191999031006' AS nip, 'Kepala Bagian' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Khairul Anwar, S.Kom.' AS nama, '198412202023211013' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Drs. Yoyo Supriono., M.Ag.' AS nama, '196207161992011001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Wawan Setianto, S.E' AS nama, '198203082024211007' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Dr. Hj. RobiAh Ummi Kulsum, M.Pd.I' AS nama, '197903192005012003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Nurul Fadhilah J, S.Psi.' AS nama, '199910092024222001' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Anang Aji Guritna, S.Ip' AS nama, '198512092005011001' AS nip, 'Pengolah Data Anggaran Dan Perbendaharaan  (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Rosdiana Majaan, S.Pd, M.Pd' AS nama, '198702042009122003' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Ni`Matul Hasanah, S.Si.' AS nama, '199407262025052001' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nisfi Zulhaida, S.Sos' AS nama, '198109182009012008' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Abduh, M.Pd.I' AS nama, '198005252003121003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Raipansyah S. Kom' AS nama, '199407022025051002' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Rossy Eka Widyanto, S.E' AS nama, '198310302023211009' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Iqbal, S.E., M.M' AS nama, '197706102000121001' AS nip, 'Kepala Biro' AS jabatan, 'Biro Perencanaan dan Penganggaran' AS asal_satker
    UNION ALL
    SELECT 'Idham Cholid' AS nama, '111222233333444446' AS nip, 'Ajudan (Jabatan Pelaksana)' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'H. Faizal Bachrong, S.Sos., M.M.' AS nama, '197311072005011001' AS nip, 'Peneliti Ahli Pertama' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Jasin Makalew' AS nama, '123523534652624625' AS nip, 'Lain-Lain' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Wayan Seruni, Sh' AS nama, '197107042006042005' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Rusman, S.Sos' AS nama, '198605282024211012' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Ida Bagus Putu Sastrawan., Sh.' AS nama, '197405041997031001' AS nip, 'Pengelola Sarana dan Prasarana Kantor (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Azmi Karman , Se' AS nama, '198411262002121002' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Fadel Pratama, S.Sos' AS nama, '199603062022031002' AS nip, 'Penyusun Rencana Kebutuhan Rumah Tangga dan Perlengkapan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Muhtadin, S.Ag., M.Pd.' AS nama, '197509232009011005' AS nip, 'Kepala Bagian' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'H. Abdul Razak, S.Pd.I' AS nama, '196709151989031006' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Edoardus Johson Ohoiledwarin, S.Pak.' AS nama, '197404282003121009' AS nip, 'Analis Penjamin Mutu (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Andi Rahman Giu, Se, Mm.' AS nama, '197806302003121005' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Joko Purnomo, M.E.' AS nama, '198310102024211008' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Dermawati, M.Si.' AS nama, '196612251992032007' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Yurisa Ulfa, Se' AS nama, '199308012020122016' AS nip, 'Pengelola Keuangan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Wikaning Tri Dadari, S.Stat.' AS nama, '199609222020122029' AS nip, 'Analis Data dan Informasi (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Arinal Mirdha, S.Pd., M.Si.' AS nama, '199507052025051004' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Drs. Thohari , M.M.' AS nama, '196201011989031022' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Asmawatie Rosyidah, Sh, M.Pd' AS nama, '196211071986032001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Sugeng Riyanto, S.E., Map' AS nama, '197303161997031004' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Drs. Muh. Syafrudin, M.A.' AS nama, '196308101992031002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'H. Mulyono, S.H., M.M.' AS nama, '196311051989031017' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Agus Akhmadi , M.Pd.' AS nama, '196308031991031002' AS nip, 'Widyaiswara Ahli Utama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Drs. Jarot Iswanto' AS nama, '196401231990031005' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Abadi, S.Sos.' AS nama, '196402011989031018' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. M.  Islam, M.Si' AS nama, '196401081989031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Drs. Sholikin, M.Ed.' AS nama, '196405041992031003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Yulianti, M.Pd.' AS nama, '198207092006042004' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Dra. Umi Kasiyani' AS nama, '196412261991032010' AS nip, 'Arsiparis Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'H Sambas' AS nama, '196708181988031002' AS nip, 'Penyusun Rencana Program dan Anggaran' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Rahman, S.Pd' AS nama, '199909062025051005' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Strategi Kebijakan Pendidikan Agama dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Moh. Sahrudin' AS nama, '198612312009101002' AS nip, 'Petugas Keamanan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Agus Nurwahyudi, S Ag' AS nama, '196712192024211001' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Alfian Syukron, S.H' AS nama, '199902232025051001' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Pertama' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'M. Khidir, S.S. M.Pd' AS nama, '197207092003121002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Jufris Pakaya' AS nama, '197511082006041006' AS nip, 'Pustakawan Terampil Pelaksana' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Ayudia Khaerani, S.M.' AS nama, '199806292023212014' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Teknis Pendidikan dan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Fenny Rahmawati, S.Pd' AS nama, '198101242008012010' AS nip, 'Penyusun Administrasi Diklat' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Nurlaili, Se' AS nama, '197810232008012024' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Siti Zubaidah , M.Pd.I.' AS nama, '197811272006042001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Tri Wahyono' AS nama, '197901122009101001' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Sayyidatul MuthiAh, S.Pd.I' AS nama, '198110102009012012' AS nip, 'Pengevaluasi Program' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Ani Nur Hidayati, S.Pd., M.Pd.' AS nama, '198203222006042003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Qurrota AYun , S.E., M.Si.' AS nama, '198306242003122002' AS nip, 'Penyusun Laporan Keuangan' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Yogi Kerry Ananda, S.Kom' AS nama, '198307012011011010' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Iwan Nur Kholis, S.H.' AS nama, '198403232009101001' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Sri Rejeki, S.Pd., M.Pd.' AS nama, '198405242009012005' AS nip, 'Penyusun Laporan Hasil Diklat' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Abdul Qohar, S.Si' AS nama, '198508302008011003' AS nip, 'Pengembang Pegawai' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Irfan Suwandi, S. Mat' AS nama, '199704292025051003' AS nip, 'Statistisi Ahli Pertama' AS jabatan, 'Biro Perencanaan dan Penganggaran' AS asal_satker
    UNION ALL
    SELECT 'Ana Fatkhur Rohmah, S.H.I., M.Pd' AS nama, '197707032009122002' AS nip, 'Pengelola Informasi Kelitbangan/Kediklatan' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'M. Syarief Fahmy, S.Ag' AS nama, '197106051999031004' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Elfagani Mahmud, Se' AS nama, '197407042014121002' AS nip, 'Pengawas Kebersihan dan Keamanan' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Sri Hendriani, S.Si, M.M.' AS nama, '197902112008012021' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Himatul Khoiriyah, S.H.' AS nama, '199601132025052006' AS nip, 'Analis Hukum Ahli Pertama' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Iksan Sugiarto , S.E' AS nama, '196508132003121001' AS nip, 'Analis Kepegawaian Ahli Madya' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'AsyAri, S.Pd' AS nama, '197512071999031004' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Deklami Agta Musvaria, Sei' AS nama, '198312222024212013' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Marzal , M.Pd' AS nama, '198003292005011002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Hj. Nor Aliah Hasanah' AS nama, '197905222005012007' AS nip, 'Pengelola Data (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'H. Choirul Walid , Lc.' AS nama, '197103102003121001' AS nip, 'Pengelola Perpustakaan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Drs. Ilham, M.Si' AS nama, '196811081998031001' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Magfhirah Safaruddin, S.Sos' AS nama, '199109152019032020' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Riski Prihantini, S.Psi' AS nama, '198312212006042008' AS nip, 'Analis Kepegawaian Ahli Muda' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Farhan Firdaus, S.Hum., M.Pd' AS nama, '199103302020121003' AS nip, 'Calon Dosen Asisten Ahli (Pengangkatan Pertama)' AS jabatan, 'Unit Pelaksana Teknis' AS asal_satker
    UNION ALL
    SELECT 'Siti Hafiza Latulanit, S.Hi' AS nama, '198912102024212058' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Maria Ulfa, S.Pd, M.Pd' AS nama, '198203022005012005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Lely Fitriani , Se, M.Pd.I' AS nama, '197805262005012006' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Reza Maulana, S.T.' AS nama, '199209242023211020' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Sekretariat Badan Litbang dan Diklat' AS asal_satker
    UNION ALL
    SELECT 'Imron' AS nama, '196908172002121001' AS nip, 'Pengelola BMN' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Mona Eliza, Se' AS nama, '198810262019032006' AS nip, 'Perencana Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Mohammad Junaedi, S.Pd, S.Ipi' AS nama, '196403271989121001' AS nip, 'Pustakawan Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Ai Nurjanah, S.Ag, M.Pd.' AS nama, '196903141995032002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Ngapirin, S.Ag.M.M' AS nama, '196808061992031005' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Zaeni, S.Ag, Mab' AS nama, '197710042003121001' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Tri Yuliani, S.Psi' AS nama, '199607102025052002' AS nip, 'Asesor SDM Aparatur Ahli Pertama' AS jabatan, 'Pusdiklat Tenaga Administrasi' AS asal_satker
    UNION ALL
    SELECT 'Apif Zaelani Sidiq, Sh' AS nama, '198009222009011006' AS nip, 'Pengelola BMN' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Khoriza Anzana Nasution, S.Pd.I' AS nama, '199508182022032001' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Nisa Kautsar Tinika Setia, S.Sos' AS nama, '200104212025052005' AS nip, 'Analis SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Aulia Arifiani, S.Pd.' AS nama, '199402092024212042' AS nip, 'Analis Pengembangan Kompetensi Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Jumani' AS nama, '197908082009011021' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Annisa Gilang Yudhitya, M.Ds.' AS nama, '199012232019032017' AS nip, 'Penyusun Naskah Rapat Pimpinan' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Detty Apriliani, S.H.' AS nama, '199504242025052006' AS nip, 'Analis Hukum Ahli Pertama' AS jabatan, 'Balai Penelitian dan Pengembangan Agama Semarang' AS asal_satker
    UNION ALL
    SELECT 'Meilinda Rizky Putri Wandhani, S.I.Kom.' AS nama, '199305012024212050' AS nip, 'Penyunting Naskah Penerbitan Buku (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Bambang Ariyanto, S.Kom' AS nama, '198802112024211012' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Dr. Weldan Firnando Smith, S.Pd, M.Ap.' AS nama, '197810272003121003' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Ruslan, A.Ma' AS nama, '197912182005011006' AS nip, 'Penyusun Program Penyelenggaraan Diklat (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Heru Setiawan Satu' AS nama, '241414141414214141' AS nip, 'Ajudan (Jabatan Pelaksana)' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Susanto Tuhuteru, S.H.I' AS nama, '198705252025211019' AS nip, 'Penata Layanan Operasional' AS jabatan, 'Balai Diklat Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Yusmadi, Se., Mm' AS nama, '197311092005011005' AS nip, 'Pranata Humas Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nurasiah' AS nama, '196404121992032004' AS nip, 'Pengelola Administrasi dan Dokumentasi' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Mardy  Supriyatna, S.Si.' AS nama, '199003092019031003' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Eko Dwi Saputra' AS nama, '198003192009011008' AS nip, 'Pengadministrasi' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Nurul Huda Mahmud, S.T' AS nama, '200109202025051004' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Papua' AS asal_satker
    UNION ALL
    SELECT 'Khaerul Anam, S.Sos' AS nama, '196405201993031006' AS nip, 'Penyusun Bahan Kerumahtanggaan' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Joshua Togar Immanuel Nainggolan, A.Md' AS nama, '200111302025051004' AS nip, 'Pranata Keuangan APBN Terampil' AS jabatan, 'Pusat Kerukunan Umat Beragama' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Akhmad Lutfi, M.M.' AS nama, '196307161988031002' AS nip, 'Kepala Biro' AS jabatan, 'Biro Organisasi dan Tata Laksana' AS asal_satker
    UNION ALL
    SELECT 'Septian Saputra, S.Kom' AS nama, '198609222011011014' AS nip, 'Kepala Bagian' AS jabatan, 'Biro Sumber Daya Manusia' AS asal_satker
    UNION ALL
    SELECT 'Tim Fasilitator (Dr. H. Syahrul Anwar, M.Ag, H. Endang Fadli, S.Ag.,M.Ag., Sodikin, S.E., M.M)' AS nama, '198111111111111111' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Mohammad Agung Cahyo, S.Kom' AS nama, '199505212023211018' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Machzudi, S.Ag., M.Si.' AS nama, '197205181994031009' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Sholehuddin, S.Ag., M.Pd.I.' AS nama, '197409082003121009' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Kusnul Ika Sandra, S.Pd., M.Psi.' AS nama, '197409242006042002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Muslimin, S.Pd., M.M' AS nama, '197210102003121011' AS nip, 'Kepala Sub Bagian' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Dr. Andiek Widodo, M.M.' AS nama, '197410222003121005' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Icep Sunandar' AS nama, '197504012009011009' AS nip, 'Pengelola Bahan Kepegawaian dan Ketatalaksanaan' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Ninik Supriyati, S.Si., M.Pd.' AS nama, '197303162005012014' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Surabaya' AS asal_satker
    UNION ALL
    SELECT 'Reni Nila Sari, S.Hi' AS nama, '198305272024212011' AS nip, 'Arsiparis Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Padang' AS asal_satker
    UNION ALL
    SELECT 'Dr. Ahmad Husni Hamim, S.Pd., M.Ag.' AS nama, '196704031994031006' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Bandung' AS asal_satker
    UNION ALL
    SELECT 'Jadwa Amalia, S.Pd' AS nama, '198511172009012007' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Banjarmasin' AS asal_satker
    UNION ALL
    SELECT 'Susi Mandataris Samosir, S.Sos' AS nama, '198303092024212017' AS nip, 'Pustakawan Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Medan' AS asal_satker
    UNION ALL
    SELECT 'A. Muh. Fadel AlFayed, S.Pd' AS nama, '199904042025051008' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Hamdan Sani, S.Kom.' AS nama, '199206132023211023' AS nip, 'Pranata Komputer Ahli Pertama' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'M. Nasrul, S,Ag, M,Si.' AS nama, '197507072005011006' AS nip, 'Analis SDM Aparatur Ahli Muda / Subkoordinator' AS jabatan, 'Balai Diklat Keagamaan Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Nurjannah, S.Ag' AS nama, '197408121999052001' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Eva Solina, M.Ag.' AS nama, '199109132025052005' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Pendidikan dan Pelatihan Keagamaan Provinsi Aceh' AS asal_satker
    UNION ALL
    SELECT 'Rudi Suhendra, S.E' AS nama, '198403282009011008' AS nip, 'Pengelola Pengadaan Barang/Jasa Ahli Muda' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Prasetyo Nugraha., S.Th.I., M.H.I' AS nama, '198603022011011005' AS nip, 'Pelaksana (Pilihlah JFU sesuai PMA 48)' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Zaeni, S.Ag, Mab' AS nama, '197710042003121001' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Denpasar' AS asal_satker
    UNION ALL
    SELECT 'Ulinnuha Husniyati , S.Psi' AS nama, '198904052019032011' AS nip, 'Asesor SDM Aparatur Ahli Pertama' AS jabatan, 'Biro Kepegawaian' AS asal_satker
    UNION ALL
    SELECT 'Ardiyanto Hasugian, S.Pd.' AS nama, '199308232024211018' AS nip, 'Analis Kebijakan Ahli Pertama' AS jabatan, 'Pusat Litbang Bimbingan Masyarakat Agama dan Layanan Keagamaan' AS asal_satker
    UNION ALL
    SELECT 'Eki Pratama Putra, S.Kom' AS nama, '198504122009121009' AS nip, 'Analis Aset Negara (Jabatan Pelaksana)' AS jabatan, 'Balai Litbang Agama Jakarta' AS asal_satker
    UNION ALL
    SELECT 'Rismawaty Rustam, Se.' AS nama, '198608202009102001' AS nip, 'Pengelola Barang Persediaan' AS jabatan, 'Balai Litbang Agama Makassar' AS asal_satker
    UNION ALL
    SELECT 'Safaruddin, S.Sos' AS nama, '196712311994031107' AS nip, 'Pustakawan Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hodidjah, M.Pd.' AS nama, '196606152003122002' AS nip, 'Widyaiswara Ahli Madya' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Puryanto' AS nama, '198007232009011008' AS nip, 'Pengawas Sarana Kantor' AS jabatan, 'Balai Diklat Keagamaan Semarang' AS asal_satker
    UNION ALL
    SELECT 'Ikraami Saputri Yusuf, Se' AS nama, '198801102009122002' AS nip, 'Arsiparis Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Manado' AS asal_satker
    UNION ALL
    SELECT 'Hermawi Taher' AS nama, '423423423423423445' AS nip, 'Petugas Keamanan' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'H. A. Ali Imran Sadiq, S.Ap., M.Adm.Sda' AS nama, '198303232003121002' AS nip, 'Widyaiswara Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Makassar' AS asal_satker
    UNION ALL
    SELECT 'Riza Rahmady Daeng' AS nama, '199412282025051003' AS nip, 'Widyaiswara Ahli Pertama' AS jabatan, 'Balai Diklat Keagamaan Ambon' AS asal_satker
    UNION ALL
    SELECT 'Nyimas Hikmah Susanti, S.Sos., M.Si' AS nama, '198311272009012005' AS nip, 'Perencana Ahli Muda' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
    UNION ALL
    SELECT 'Lilis Latifah, A.Md.Kes' AS nama, '197812222024212002' AS nip, 'Terapis Gigi dan Mulut Terampil' AS jabatan, 'Biro Umum' AS asal_satker
    UNION ALL
    SELECT 'Mursidah, S.Ag, Mm' AS nama, '197209121998032004' AS nip, 'Kepala Seksi' AS jabatan, 'Balai Diklat Keagamaan Palembang' AS asal_satker
) AS p
JOIN tbl_role r ON LOWER(r.nama_role) = LOWER(p.jabatan);