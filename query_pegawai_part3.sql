INSERT INTO tbl_pegawai (nama, nip, jabatan, asal_satker)
SELECT 
    p.nama,
    p.nip,
    r.id_role AS jabatan,
    p.asal_satker
FROM (
    SELECT 'Armizah, S.Pd.I' AS nama, '197206182007012024' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Amidra Yanti, Se, M.Si.' AS nama, '197804012009012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Gusnianti Hasibuan, S.Pd.I' AS nama, '198408032009122005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Delma Aria Monika, S.Pd' AS nama, '199512272023212027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Drs. Syamsuddin' AS nama, '196312301999031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Hj. Basyariyah, S.Pd.I' AS nama, '196408142003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Adek , S.Pd.I' AS nama, '197410242005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Fauzi Rais, S.Pd' AS nama, '199504242023211022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'M. Nazar, S.Ag' AS nama, '196409022003121002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Tamam, M.Pd' AS nama, '197611142008011010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Nur Hayati, S.Pd' AS nama, '198403302009122002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Ardian, S.Ag' AS nama, '197507252003121008' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Wazifah Nasmar, S.Pd.I' AS nama, '196809112003122001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Abdul Afiffuddin. Md, S. Ag' AS nama, '197701012009121004' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Budi Yuono, A.Ma' AS nama, '197508032005011004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Syuryati, S.Ag' AS nama, '197408102003122006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Makmur, S.Pd.I' AS nama, '196809152000031003' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Binty Lathifah , S.Pd.I' AS nama, '198908162023212046' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Anizar, S.Pd.I' AS nama, '197007052000031002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Esrul Haizah, S,Ag' AS nama, '197208152005022004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Hj. Indrawani, S.Pd.I' AS nama, '197207112007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Mulyasna, S.Ag' AS nama, '197601022006042001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Yateno, S.Pd.I' AS nama, '198707042023211014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Karmin, S.Pd' AS nama, '081390902044333333' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Agustami , S.Ag.Ma' AS nama, '197207292003121005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Masyitah, S.Pd' AS nama, '198311212009122004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Felmi Hilda, S.Ag' AS nama, '197409172009032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Novalia, S.Pd.I' AS nama, '198411132011012012' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Hj. Elni Yulita., S.Pd.I' AS nama, '197407072007012031' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Nurmiwati., S.Hi' AS nama, '197601122014112001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rahmad Purnomo, S.Si' AS nama, '198709082023211022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Arniyeti, S.Ag' AS nama, '197011212003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rusman, S.Ag' AS nama, '196412312002121031' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Vinko Tani, S.Pd' AS nama, '196910292005012001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Robaniah, A.Ma' AS nama, '197907122005012011' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Towali, S.Pd.I' AS nama, '197903242009121003' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Abdul Kahar, S.Pd.I' AS nama, '197703072014121001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Sri Masni Buniarti, S.Ag' AS nama, '197602292006042002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Zulfahmi, S.Pd' AS nama, '197306102005011008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Nurdaima Sari, S.Pd.I' AS nama, '197407062005012012' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Farida Hanum, S.Pd.I' AS nama, '197306131997032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Rubiati, S.Pd.I' AS nama, '198401112009122007' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Sukarmin, S.Pd.I.' AS nama, '197512252024211002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Yamsasni' AS nama, '197204262002122004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Hj. Bakhroini, S.Pd.I' AS nama, '197310162014122002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Aminah., S.Pd' AS nama, '197012232014112001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Desiana, S.Pd' AS nama, '197904222006042011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Miswidiyanto, S.Pd.Sd' AS nama, '198702262020121012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Juliawati, S.Pd.I' AS nama, '198007242005012005' AS nip, 'Guru Madya Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Endang Pujiwati. S.Ag' AS nama, '198404162019032001' AS nip, 'Guru Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Tarimah, S.Pd.B' AS nama, '196909131995102001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Tari Muhdarmaniza Purwanto, S.Pd' AS nama, '199305212023212043' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'M. Marsudi, S.Pd.I' AS nama, '198501212019031001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Aguspian, S.Pd' AS nama, '197008191998031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Fitrisma Rais, S.Pd.,M.Pd' AS nama, '.19740313200604201' AS nip, 'Guru Ahli Muda' AS jabatan, 'Loka Pendidikan dan Pelatihan Keagamaan Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Izum, S.Pd.I' AS nama, '196407131989111001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Nur Aisyah, S.Pd.I' AS nama, '198404142009012017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Fauziah, S.Pd.I' AS nama, '198304052023212042' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Emawati, S.Pd.I' AS nama, '198507102023212051' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Winarni, S.Pd' AS nama, '197602052005012001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Heldamilia' AS nama, '197109242000032002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Astuti, S.Pd. I' AS nama, '198107142023212018' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Harni, S. Pak' AS nama, '196012312000032008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Evi Elita Tambunan' AS nama, '196802042000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dra. Robiah' AS nama, '197009051999032012' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'SaDiah, S. Pd.I' AS nama, '196107021993032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Drs. Ismail' AS nama, '196111202006041004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Masnely Warni, S.Si.,M.Sc' AS nama, '197206252005012006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Dra. Ismailena' AS nama, '196112261993032001' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Erni Salmawati Sinaga' AS nama, '196803232000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Syamsuddin, S.Pd.I' AS nama, '196406191988031001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Faridah, S.Ag' AS nama, '197201042006042015' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'M. Puat, S.Pd.' AS nama, '198701152023211026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Drs. Mesliin  Debataraja' AS nama, '196205021995031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Zulfadli, S.Pd.Sd' AS nama, '197201262007101001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Putri Komala, S.Pd' AS nama, '199212102020122023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Hermiwaty Saragih' AS nama, '196806282000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rita Yunarti,S.Pd' AS nama, '198504102025212012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Rubita, S.Pd.I' AS nama, '197203122005012004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Suhernawati, S.Pd.I' AS nama, '197610012005012004' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mona Soneta, S.Pd' AS nama, '197612052005012005' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Afrizal' AS nama, '196209161997031001' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Drs. M Syarif, S.Pd, Ma' AS nama, '196209201986031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Asni, S.Pd.I' AS nama, '197203232003122004' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nelty Elfira' AS nama, '199309022023212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Susilawati, S, Pd.I' AS nama, '198108312022212019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Haryanto, S.Ag' AS nama, '197203262007011016' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ratna Maladewi , S. Pak' AS nama, '196807292000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nuradhawiyah, S.Pd.Sd' AS nama, '197906082005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Samsuri, S.Ag' AS nama, '197708142005011006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Deslin Fitri, S.Pd' AS nama, '197610252007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Desi Astuti, S.Pd' AS nama, '197401082005012004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Nofreyeni, S.Pd.I' AS nama, '197611062003122009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Normah, S.Ag' AS nama, '197204172007012019' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Komari, S. Pd.' AS nama, '197204222005011002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dona Erika, S.Pd.I' AS nama, '199003292023212034' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Khuliya Nuraini' AS nama, '197804252023212010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Sumarni, S. Pd.' AS nama, '197204232005012004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'E. Rosalina, S.Si' AS nama, '199311272019032023' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Neny Deswita, S.Pd' AS nama, '197612012003122003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Elyawati, S.Pd.I' AS nama, '197612082007012021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sujarno, Sh' AS nama, '196302022007011016' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sugeng Fitri Aji, S.Pd.I., M.Pd.I' AS nama, '199203312015031002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Hartati, S.Pd.I' AS nama, '198011032005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Sarono' AS nama, '196303152007011035' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Suyanti, S.Pd' AS nama, '197604212008012020' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Ira Romila, S.Pi' AS nama, '197205152007102005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Roslaini' AS nama, '197310102007012015' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Fajar Aswati, S.Ag' AS nama, '197206022003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nazarhan, S.Pd' AS nama, '197803152005011005' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Jamilah, S.Pd.I' AS nama, '197206022007012026' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dra. Yerniwilis' AS nama, '197106282005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'H.  Hamid, S.Pd.I' AS nama, '196809032000031003' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rasyidah, S.Pd.I' AS nama, '198211142007012009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ispandi, S.Ag' AS nama, '196809112007011028' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Irodenni Damanik, S. Pak' AS nama, '197206072005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Kismawati, S.Pd.I' AS nama, '197206082002122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sogirah, S.Ag' AS nama, '197206102007012028' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Derliana Simatupang' AS nama, '196809282000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ida Fitri Rahmasari' AS nama, '199602202023212032' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Fitrianingsih' AS nama, '198711212023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Nurlina, S.Pd' AS nama, '197703062005012007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mardewi Anis, S.Pd.I' AS nama, '198209152006042009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Hermatati Indra, S.Pd' AS nama, '197703132003122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurul Amin, S.Pd.I' AS nama, '198201042023211010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Suswanto, S.Pd.I' AS nama, '197703232005011006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nur Hasimah, S.Pd.I' AS nama, '197703272007012014' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Poide Manurung' AS nama, '197206212005012004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Elizabet, S.Pak' AS nama, '197206272000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurhakiki, S.Pd' AS nama, '199610292023212026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hambali, S.Ag' AS nama, '196810212006041001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'M.Tsis, M.Pd.I' AS nama, '197704042011011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mahadir, S.Pd.I' AS nama, '197704122007101002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurliza , S.Pd.I' AS nama, '197307032005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Marlizayani, S.Pd.I' AS nama, '198302232007012003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Marsiem, A.Md.' AS nama, '196811022014112001' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Khoridah, S.Ag' AS nama, '196811092014112001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Maryati, S.Pd.I' AS nama, '198710132023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Sabariah, S.Ag.' AS nama, '197207172007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sakur, S.Ag' AS nama, '197207202007101002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Gumini, S.Ag' AS nama, '197410022005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Mardiyani, S.Pd' AS nama, '198903232023212063' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Saryani, S.Pd' AS nama, '196811201995032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Samsu Nazaruddin, S.Ag' AS nama, '196812182005011002' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Putri Rahmah Hidayah Lisri, S.Ag' AS nama, '197706082007012018' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Muslaini, S.Pd' AS nama, '198801062024212027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Drs.  H. Sanusi Usup' AS nama, '196401022000121001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sururiah, S.Pd.I' AS nama, '197208071999032002' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dedi Wahyuni, S.Pd' AS nama, '198806062023211031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Mimi Hafriana, S.Pd' AS nama, '198305082007012015' AS nip, 'Guru Pratama (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Iskandar, S.Ag' AS nama, '197208172007101003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Agusnawati, S.Ag' AS nama, '197208172014112005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Novika Harisma Liana' AS nama, '198511072023212031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Irwanto, S.Pd.I' AS nama, '197707012000031003' AS nip, 'Guru Madya Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fitriani, S.Pd.I' AS nama, '198306022007012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Salbiah, S.Pd.I' AS nama, '196412311987032019' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Mhd. Shaleh' AS nama, '196712312008011045' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Zulhendri' AS nama, '198502172019031001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Rina Fitri' AS nama, '198202012023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dra. Rise Armayani Amir' AS nama, '196901141999032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Farida' AS nama, '197907152023212027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Suginen, A.Md' AS nama, '196405272000031001' AS nip, 'Guru Madya (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Essi Suriyana, S.Ag' AS nama, '197209252007012012' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Natalia Christina, S.Psi' AS nama, '198112252005012010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Neni Susi Irawati, S.Pd.I' AS nama, '198308112007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Farida, S.Pd.I' AS nama, '196903042000032006' AS nip, 'Guru Madya Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Adinurahim, S.Ag.' AS nama, '196903072014111003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Desma Yulia, S.Pd' AS nama, '198712292020122008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Kasihani, S.Ag' AS nama, '197211202007012022' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Zahidi, Sh' AS nama, '198203052023211016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Rizki Utama' AS nama, '199805302023211004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Abdul Halim, S.Ag' AS nama, '197212132007101002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'M. Irsyadul Qori, S.Pd' AS nama, '198411272009121003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Sumarno, S.Ag' AS nama, '196904112005011005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Budi Afrianto' AS nama, '198604042023211026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Nurhairani, S.Pd.' AS nama, '198801152020122009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Dra. Maslina Eny' AS nama, '196408202001122001' AS nip, 'Guru Dewasa (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Drs, H.Sudirman' AS nama, '196409031997031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Anis Hidayah, S.Pd.I' AS nama, '198304292009032006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Herman Nizam, S.Pd' AS nama, '198310082023211015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Malia Hendra, S.Pd' AS nama, '198411282009011005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Jumaiyah, S.Pd' AS nama, '197603112003122005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Muawinah, S.Pd.M.Pd.I' AS nama, '196905062005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yory Almiza' AS nama, '199010302023212035' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Martini, S.Pd.I' AS nama, '197302032003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fuji Rohyatin, S.Pd' AS nama, '198412232009122005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Nurhasny, S.Ag' AS nama, '197711162005012009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Puspa Dewi, S.Pd.I' AS nama, '197309292005012003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Epi Susilawati, S.Ag' AS nama, '197711272007102005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sukarnila, S.Pd' AS nama, '198905072023212055' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Drs.  Dzulfikar Indra' AS nama, '196905302014111002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Muhammadun, S.Pd.I' AS nama, '197303012007101002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Elvi Hartati, S.Pd' AS nama, '198802012025212016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Zamhuriah, S.Pd.I' AS nama, '197303031999032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Salizal Surya' AS nama, '198809172019032006' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Sudirman, S.Pd.I' AS nama, '197712312000031004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Endang Firdaus, S.Ag' AS nama, '196901191996031002' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Parhimpunan Rambe' AS nama, '198005012023211006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Hj. Umi Kalsum, S.Sos' AS nama, '197304102007012027' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Herlina Hariana, S.Psi.' AS nama, '198210142011012008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Desri Jurmiati, S.Pd' AS nama, '198912012024212032' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sulastri, S.Pd.I' AS nama, '198404142007102001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Teti Herawati, S.Pd.I' AS nama, '197304302003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sutarnu, S.Ag' AS nama, '197305042007011036' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurhaniza, S.Pd' AS nama, '198405032019032018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Drs. Suprianto' AS nama, '196503041999031001' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Syukri Rahmat, S.Pd.I' AS nama, '197911042023211009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Tengku Zainab, S.Pd.I' AS nama, '197803152007102008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Diah Mertianti Talkah, M.Mpd' AS nama, '197605192010012005' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Anambas' AS asal_satker
    UNION ALL
    SELECT 'Lisma Sitorus, S.Pak' AS nama, '197305192003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Abdul Roni' AS nama, '199009062019031006' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Amrisal, S.Pd' AS nama, '196908232007011034' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yurnalis, S. Pd.I' AS nama, '196908252000032004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Didik Supriyadi, S.Ag' AS nama, '196908312005011003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Irdati, S. Ag.' AS nama, '197305302005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sri Purwani S.E' AS nama, '198105022023212018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Turyati, S.Pd.B' AS nama, '196910012000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Zainuddin, A.Ma' AS nama, '196505072005011003' AS nip, 'Guru Muda Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Fauzi, A.Ma' AS nama, '196910042014111001' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sariyah, S.Pd.B.' AS nama, '197504262008012008' AS nip, 'Calon Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Dra, Hj, Hamidah, M.Ed' AS nama, '196505251997032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sarwini, S.Pd' AS nama, '197911052023212018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Bambang Sutaryo, M.Pd' AS nama, '197805062005011009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rosfita, S.Ag' AS nama, '197805112005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ego Anarki Rusli Saputra, S. Pd. I' AS nama, '198909222023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Hamdan, S.Si' AS nama, '196902022000121007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Jawanismar, S.Ag' AS nama, '196507262003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Rohani, S.Pd.I' AS nama, '197307101998032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rosneti, S. Ag' AS nama, '197307122005012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rimala  Raja Guk Guk' AS nama, '196911272000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Katno, S. Ag' AS nama, '196911302005011003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Afriyansyah, S.Pd.I' AS nama, '199204142023211022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Asmida, S.Pd.I' AS nama, '197307292000032002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Drs. Kamaruddin' AS nama, '196509182006041008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Jumiyati, S. Pd. B' AS nama, '197106271994102001' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rieka Anita, S.Pd' AS nama, '196509261992032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Drs. Syukur' AS nama, '196509282000031003' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Febria Triska, S.Pd' AS nama, '198502232023212029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Ahdiati, , S.Pd.I' AS nama, '197807092003122004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Emeryana, S.Pd.I' AS nama, '196510132007012013' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Tukinah, S.Pd.I' AS nama, '197308102007102002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Aniar, S.Pd.I' AS nama, '197308252007102002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sairozi, S.Pd.I' AS nama, '197308272007101003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Risnawati, S.Sos' AS nama, '198506152019032005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Puji Raharjo Setyo Utomo, S.Pd' AS nama, '197002042005011007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Delfi Murni, S. Pd. I' AS nama, '197309252000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Jusniar Zalukhu, A.Md' AS nama, '196511202000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Juriah, S.Pd.I' AS nama, '197310102000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Gusti Erlina, S.Pd' AS nama, '197808072005012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fera Kurniati, S.Pd.I, M.Pd.I' AS nama, '198509232009122007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ali Amran, S.Ag' AS nama, '196512032003121001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fitri Zadar, S.Pd' AS nama, '197310272005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nuraini, S.Pd.I' AS nama, '197311041998032005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Al-Azmi, A.Ma' AS nama, '197003102000031003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Umi Kalsum, S.Ag' AS nama, '197003102007012030' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Lizawati, S.Pd.I' AS nama, '198512012007102001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ningsih, S.Pd' AS nama, '197810212006042027' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Wahyuningsih' AS nama, '198402022023212033' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nursyamsu, S.Pd.I' AS nama, '197401032007101002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Syamsul Hidayat' AS nama, '198110152023211010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Sarudin, S.Pd.I' AS nama, '196601011994031031' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurasiah, S.Pd.I' AS nama, '197810292007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fatma Sari, S.Pd.I' AS nama, '199009142023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Mili Astuti, S.Pd.I' AS nama, '197811102000032001' AS nip, 'Guru Madya Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurhayaty Muchlis, S. Pd. I' AS nama, '197004252000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Syarifuddin, S.Ag' AS nama, '197402022007101002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mutmainnah, S.Ag' AS nama, '197402062007102002' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Noordiana., S.E.' AS nama, '196602122014112001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Aminah, S.Pd.I' AS nama, '197005252000032003' AS nip, 'Guru Madya Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sulaiman S, S.Pd.I Ma' AS nama, '196603011993031005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurbaiti, S.Pd.I' AS nama, '197403022000032004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Meidedes Carolina' AS nama, '198405062023212033' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Juli Yanti' AS nama, '198407272023212043' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Samsul, S.Pd' AS nama, '199104302023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Erwandi, S.Pd.I' AS nama, '197806052009031003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Indrayani, S.Pd' AS nama, '198606292019032009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sumaji, S,Ag.' AS nama, '197406162007011031' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'M. Yakin, S.Ag' AS nama, '197406142007011030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Jumardi, S.Pd.I' AS nama, '197903092009121002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sri Indrawati, S.Pd' AS nama, '197903132009012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Pono, S.Ag.' AS nama, '197008101994101002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Lusinta Sembiring, A.Ma' AS nama, '197007182005012005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dra. Rowiyah' AS nama, '196605102007012028' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Hafizul Halim' AS nama, '199206222023211021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Mardiah, S.Ag' AS nama, '197406282000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yuni Winarsih, S. Ag' AS nama, '197406302005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Hj. Harmida., A.Ma' AS nama, '196605251989022001' AS nip, 'Guru Dewasa Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dra,Hj Asnah, M.Ag' AS nama, '197008221996032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Haslinda' AS nama, '197407272005022007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Suharti, S.Pd.I' AS nama, '197408102007102002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rita Andriana' AS nama, '198405092023212035' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Liswati, S.Si' AS nama, '198702232019032008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Baihaki, S.Pd.I' AS nama, '199007072023211027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rusmi, S.Pd.I' AS nama, '197009041995032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yulinar,S Ag' AS nama, '197902132008012019' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Ennyri, S.Ag' AS nama, '197009132007012017' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sakri , S.Pd.I.' AS nama, '197906012009011009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rozita, S.Ag' AS nama, '197408162007012026' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Abdul Aziz, S.Pd.I' AS nama, '198005202009121005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Wintisari, S.Pd' AS nama, '197009152005012006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Drs. Yusmanto' AS nama, '196607192002121002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Warsono, , S.Ag' AS nama, '197906042006041023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rohani, S.Pd.I' AS nama, '197906052003122006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Zuliyana, S.Pd' AS nama, '197906182007102003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yulianis, S. Pd. I' AS nama, '197907082005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurzakiyah, S.Pd' AS nama, '197010061998032002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fauzun Aisyah, S. Pd' AS nama, '199506012023212048' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'SubaiAh , S.Pd.I' AS nama, '198202192023212016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Asma Yepi, S.Pd.I' AS nama, '197809192005012006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Betti Fariati, S.Pd.I' AS nama, '197908052005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Hadijah, S.Pd' AS nama, '199305242023212042' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Eka Susanto, S.Pd.I' AS nama, '197909032005011004' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ridwan, S.Ag, M.Pd.I' AS nama, '197412252005011007' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Study Ralianita Damanik, S,Pak.' AS nama, '197412292003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Elida, S.Pd' AS nama, '197011302005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Eti Susanti, S.Pd.I' AS nama, '197910092007102001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Asyef Budairi, S.Pd.I' AS nama, '198905032023211017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Ahroji, S.Pd.I' AS nama, '197012242005011003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dra. Sri Murni' AS nama, '196609181997032001' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Harlina, S.Pd.I' AS nama, '197502012007102005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Muslih, S.Pd.I' AS nama, '196610102006041001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mugiyem, S.Pd' AS nama, '197502102009012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rahmawati, S.Pd.I' AS nama, '197808272008012015' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Zufrida, S.Ag' AS nama, '197101032001122001' AS nip, 'Guru Dewasa (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurhasanah, S.Pd' AS nama, '198602202023212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Osman, S.Pd' AS nama, '196612062005011002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Srihartati, S.Pd.I' AS nama, '197503052000032003' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Evi Hertalina, A.Md' AS nama, '198001062005012012' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Selamat, S.Pd' AS nama, '197102062007011036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rini Nopita, S.Pd' AS nama, '198001282006042002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Marliana , S.Pd.I' AS nama, '198002162007102002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ranni Harianja , A.Md.' AS nama, '198002282005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mustakim, S. Ag' AS nama, '197602222024211003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Febra Yetti, S.Pd' AS nama, '198002282007102003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'H.Lukman, S.Si, Ma' AS nama, '197103122003121002' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Syukri , S.Ag' AS nama, '197504072003121003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Anasruddin, S.Ag' AS nama, '197504082005011005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Khairul Azhar Saragih, S.Sos' AS nama, '198512012023211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Zul Fadhli, S.Pd.I' AS nama, '198906172019031014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Bingatin , S.Ag' AS nama, '197103172005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Maryendrawati, A.Ma' AS nama, '197103202006042006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Parwati, S.Ag' AS nama, '198003242005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Arifa Sarah Aini, S.Pd' AS nama, '199507242023212040' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Tri Marti Saheni. S, S.Pd' AS nama, '199003272023212042' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Rohaniah, A.Ma' AS nama, '198004012007012027' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Henny Suswarina, S.Pd' AS nama, '196802172023212004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kanwil Kementerian Agama Provinsi Riau' AS asal_satker
    UNION ALL
    SELECT 'Masridah, S.Pd' AS nama, '198009022009122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Zaherman , S.Ag' AS nama, '197104062000031002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rima Jannati' AS nama, '199601082023212025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Sumini, S.Pd' AS nama, '197104132001122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Jumiati, S.Pd.I, M.Pd.I' AS nama, '198004182009012003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nilma Juita , A.Md.' AS nama, '197004282014112003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'H. Afrizan, Ma' AS nama, '197104142005011007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Hawa, S.Pd.I' AS nama, '198005102007012035' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dra.Hj. Zaimah' AS nama, '196702202014112002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ririn Kusmawati,M.Pd.I' AS nama, '198712072023212021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Drs. Nur Aziz' AS nama, '196703042005011001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mislarita, S.Pd' AS nama, '197105132007012022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'H. Junaidi, S.Ag' AS nama, '197504302007101004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Muzdalifah, S.Pd.I' AS nama, '197505092000032005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Esra Penggabean' AS nama, '196703252000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'M. Rizal, S.Pd.I' AS nama, '198006102007101001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Aisah, S. Ag' AS nama, '197303052007012007' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Elia Suhelmi , S.Pd' AS nama, '197105252003122005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Susilawati, S.Pd.I' AS nama, '197505242007102003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Joko Hartono, S.Pd' AS nama, '199406132023211019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Zurmaini, S.Pd' AS nama, '197105172005012008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Mariani, S. Pd. I' AS nama, '197106072003122004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Angga Maulana, S. Pd' AS nama, '199005182019031004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nurma Mukhtis' AS nama, '196704041997032001' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Masita, S.Ag' AS nama, '197506052007102007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yuliya Wulandari, S.Pd' AS nama, '199007282019032016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dwiyeni , S.Pd' AS nama, '197107222003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Johan Arif, S.Pd' AS nama, '197107272007011032' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rudi Harnata, S.Ag' AS nama, '197008012005011004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Emi Hartati, S.Ag' AS nama, '197309042022212003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Endang Susanti, S.Pd.Sd' AS nama, '198008162007102003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fuadi, S.Pd' AS nama, '196705082005011004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Bakhtiar, S.Ag.' AS nama, '197108112007101004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Zulfitrimulianis, S. Pd' AS nama, '197711032023212007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Guswetri Murni, St' AS nama, '198008302014112001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurhidayati, A.Md' AS nama, '198009102007102004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yusra Abdi, S.Pd' AS nama, '197507142005011008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Ngaisah, S.Pd.Sd' AS nama, '196705162005012002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fita Yuniawati, S.Pd' AS nama, '199106032019032026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dra. Sarmijah' AS nama, '196504102005012002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Hj. Nurlaili, S.Si' AS nama, '196706051999032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Khairunnisah, S. Si' AS nama, '199109182019032018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Parnadi, S. Ag' AS nama, '197508212005011006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Tenti Efrita, S.Pd' AS nama, '197508232007102002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Zulfan Ikhram, S.Pdi,Ma' AS nama, '198010132007101004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fadilah Raskasih, S.H' AS nama, '199110062019032013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Jamilah, S.Pd.I' AS nama, '197509102007012019' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sariyanto, S.Pd.I' AS nama, '198011042007101002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Safni, S.Pi' AS nama, '198011292005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nini Marlina, S.Pd.I' AS nama, '198012012006042002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Marsudi, S.Ag. M.Pdb' AS nama, '196902061993101001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Ardesia Putri Utami, S.Pd.' AS nama, '198012102009012009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Wahyudi, S.S' AS nama, '198007142023211005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Ratnawaty, S.Ag' AS nama, '197109132007102005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Desilawati, S.Pdi' AS nama, '198012242005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Suharni, S.Pd.I' AS nama, '198101012007012036' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Musrifatun, S.Pd.I' AS nama, '199008182019022004' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Misherlina, S.Pd.I' AS nama, '197510012007012032' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fitri Nelda Herman, S.Pt' AS nama, '197510062007102001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Marlina, S.Pd.I' AS nama, '197510072007012026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Roslin Pakpahan' AS nama, '196708012000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fenni Marriza, S. Pd' AS nama, '199205112019032015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Erlinawati, S. Pd.' AS nama, '196708072005012001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siska Mitmarisanti, S.P' AS nama, '197511032007102004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurasiah, S.Pd.I' AS nama, '198010102005012011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Khairunnisa' AS nama, '198303132023212053' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rosnawati, S.Ag' AS nama, '197511062009012003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Liswarni' AS nama, '198604022023212039' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Wiwik Mariana, S.Ag' AS nama, '197511072007102001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Neni Gustina, S.Pd' AS nama, '197908082005012007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Adiati, S.Ag' AS nama, '196708272005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mardiyah, S.Ag' AS nama, '197511212007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Suseno, Sp' AS nama, '197511222007101002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Syarifah Lubis, S.Pd.' AS nama, '197511271999032003' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Triya Gusvianti, S.Pd' AS nama, '199208222019032030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Miftahul Husna, S.Pd.' AS nama, '199212042019032017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Syofia Deswita, S.Si' AS nama, '199212212019032026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Haryono, S.Pd' AS nama, '199011292023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sablis Salam, S.Pd' AS nama, '199302022019031010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Roki Susanto' AS nama, '198604142023211027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Widya Putri, S.Si' AS nama, '199307132019032017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'H. Khairudin, M.Pd.I' AS nama, '197603052007101007' AS nip, 'Guru Madya Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Amar, S.Ag' AS nama, '197603162007012029' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Azizah, S.Ag' AS nama, '197603202007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rena Roy, S.Si' AS nama, '197804272005012004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Abdul Wahab, S.Pd.I' AS nama, '198402282023211013' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Rusmita , S.Pd.' AS nama, '197603232007102005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Asnidar, S. Pd' AS nama, '197603272005012008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Veronika Sihotang, A.Md' AS nama, '197604042005012006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Choirunnisa Fitriani Harahap, S.Psi' AS nama, '199407072019032019' AS nip, 'Calon Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yuni Eka Fitri, S. Pd. I' AS nama, '199101242019022006' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Hayati, S.Pd.I' AS nama, '198106202007102003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Beni Bopindo, S.Pd.' AS nama, '199411302019031007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Aprilla Sandi, S.Pd' AS nama, '199504092019032015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Akmal Hamzah' AS nama, '199510232023211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Putri Audelina Pradhana, S.Si' AS nama, '199508152019032021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Budi Agus, S.Pd.I' AS nama, '198108022007011011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Mawadah,S.Ag' AS nama, '197804242006042007' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Tatik Haryani, Se' AS nama, '198108172007102004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Maiyuni, S.Pd.I' AS nama, '197606082007102005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Endang Fitriyani, S.Pd.I' AS nama, '198212302022212027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nur Hasni, S.Pd.I' AS nama, '198110022007012009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rusnawati, S.Pd.I' AS nama, '198110152007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Muhaimin,S.Pd' AS nama, '199406062019021006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Fitria, S. Pd.I' AS nama, '198110192005012003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Susianti, S.Pd.I' AS nama, '198112022007102007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Khoiri, S.Pd.I' AS nama, '198112192007101001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Hermandas, S. Pdi' AS nama, '198706172019031006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Eliyana, S.Pd.I.' AS nama, '197802072024212006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Adisah, S.Pd.I' AS nama, '198005152023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Dewi Astuti, S.Pd.I' AS nama, '198206132008012010' AS nip, 'Guru Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Marlianis' AS nama, '198505202023212052' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Efendi, S.Pd.I' AS nama, '198105072023211008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'M. Syarkawi, S.Ag.' AS nama, '199609122024211017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Peramli, S.Pd.I' AS nama, '198908142023211021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Dra. Utantimi' AS nama, '197102202005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Juni Kardian' AS nama, '198506162023211015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Panny Apriansyah, S.Pd' AS nama, '198704042023211021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Khairil Anwar, S.Pd' AS nama, '198909032023211032' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Fakhri., S.Pd.I' AS nama, '197303142005011003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Tuti Fridianty, S.Pd' AS nama, '197405312005012001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Zaky Fauzano, S.Pd' AS nama, '198708172019031006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rinna Elya Roza, S.Pd' AS nama, '198604042023212045' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Arumanti,S.Pd.I' AS nama, '197611302005022007' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Odi Eriza, S.Pd.I.' AS nama, '199405232019031001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Hendra, S.Pd' AS nama, '199504172023211015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Hamdan Jamil., M.Pd.I' AS nama, '197506262005011003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Hernani, S.Pd.I' AS nama, '197608102024212009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Defitri Yeni' AS nama, '198107312023212015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Rahmansyah, S.Pd.I' AS nama, '197012312000031023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Wagimin, S.Ag.M.Pd.B' AS nama, '196703271994101001' AS nip, 'Guru Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Alman,S.Pd.I' AS nama, '197403022006041003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hijriadi Askodrina, S.Pd.I' AS nama, '198705052023211046' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Khairul Ansori, S.Ag' AS nama, '196905262006041015' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Agus Bimantoro, S.E' AS nama, '197908222023211008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Imam Alamin' AS nama, '199807222023211005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Sutarno, S.Ag.' AS nama, '196604091993101001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Adillah Harniati, S.Pd' AS nama, '198706122023212067' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Raja Meirina Dwi Indiarni, S.Pd.' AS nama, '199405022023212054' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Reflinda' AS nama, '198809022023212027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Yaslimaryanti, S.Pd' AS nama, '196903011998032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Abd.Rahman' AS nama, '198805022023211016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Megi Zukri' AS nama, '199107212023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Abdur Rasyid, S.Pd' AS nama, '197601292006041004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Desnali, S.Ag' AS nama, '197209062007012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nurkolis, S.Pd.I' AS nama, '197506112023211002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Salpitrianis' AS nama, '198805132023212049' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Asrul Sani, S.Pd.I' AS nama, '198905112023211026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Alfian Afrizal, S.Pd.I' AS nama, '198004242023211005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Hasnah Dewati , S.Pd.I' AS nama, '197507212023212004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Nila Witri, S.Pd.I' AS nama, '198202142023212022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Yuliana Fitriani S.Pd' AS nama, '199207252023212048' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Helda Lisna, S.Pd.I' AS nama, '197802082010012008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Erma Weni' AS nama, '198806182023212051' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Siti Khadijah, S.Pd.I' AS nama, '197412121997032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Lidya Astuti, S.Pd' AS nama, '198806052023212053' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Robi Ratno' AS nama, '199009172019031005' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Dewi Syafrina, S.Pd' AS nama, '199109042019032001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Lisa Susmi, S.Pd' AS nama, '197101011999032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Halimatu SaDiyah' AS nama, '198810042023212031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Afidah S, S.Pd.I' AS nama, '196802042000032003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Abdul Manra S.Pd' AS nama, '199512032023211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Husnil Khatimah, S.Pd.' AS nama, '198803162020122012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Maisaroh' AS nama, '198810302023212033' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Anisa Safitri, S.Pd' AS nama, '199502272020122029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Erlina Susilowati, S.Pd.' AS nama, '197705102006042002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Noprianti' AS nama, '198811212023212045' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Mimi Maryani, S.E' AS nama, '197606302023212004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Ariantho Yusmarizal' AS nama, '199107032023211029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Sumarni, S.Pd.I' AS nama, '198507212011022001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Jufridin, S.Ag' AS nama, '197010052007101003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Drs. Syamsul Bahri' AS nama, '196605051999031004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Normah, S.Pd.I' AS nama, '196903121993032005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Weweng Kartiwi, S. Pd. I' AS nama, '198805242023212041' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Irma Suryani, S.Si' AS nama, '199309182023212031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Sawitah, S.Ag.' AS nama, '196603121993102001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Akmaluddin, S.Pd' AS nama, '199408052023211018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rosmardi, S.Pd' AS nama, '196903242005011001' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Marnita, S.Pd' AS nama, '197212032023212004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Intan Mutia, S.Pd' AS nama, '197605162009012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Zulia' AS nama, '197404142006042026' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Junaidi, S.Pd.I' AS nama, '199205302023211015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT '198708292023212028' AS nama, '198708292023212028' AS nip, 'Guru Pendidikan Agama Kristen (khusus Pengangkatan Pertama)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Asniwita, S.Pd' AS nama, '197705172007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Irni Yusnita, S.Pd' AS nama, '198309262022212018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Jumiati' AS nama, '198310102023212037' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Erawati, S.Pd' AS nama, '197311252009012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Musnelly, S.Pd' AS nama, '196907202005012002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Reski Erizal, S.Pd.I' AS nama, '199010052023211025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rahmiyati, S.Pd.I' AS nama, '198304212007102001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Elpiandis, S.Pd. M.Pd' AS nama, '197704022005011009' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Eliza , S.Pd.I' AS nama, '196903272001122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Pestaria Sihotang, S.Pak' AS nama, '196512252005012001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Salman, S.Pd' AS nama, '198302032011011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Fahrurazi, S.Ag' AS nama, '196707272000031002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Lusi Anggraini' AS nama, '199003032023212050' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Ikhwani, S.Ag' AS nama, '197608022003122006' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Bahwi Haruddin' AS nama, '196810152005011004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Harpan' AS nama, '199205122023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Meri Endra Lestari' AS nama, '199005032023212049' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Doli Indra Hanafi, S.Sn' AS nama, '199601142020121009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Renata Sinaga, S.Pak' AS nama, '197311302005012003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Ulvawana, S.Pdi' AS nama, '198201012007102004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Jamiatussoleha, S.Pd.I' AS nama, '198201112003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mindoria Situmeang, S.Pak' AS nama, '197312032005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Naimah, S.Pd.I' AS nama, '198201202007102002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Pardomuan Nasution, S.Pd.I' AS nama, '198109142023211008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Winda Pala Sari' AS nama, '199504032023212039' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Yusnizar, S.Ag' AS nama, '196805042005012007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Yusuf Firdaus Hasibuan, S.Pd.I' AS nama, '198303082011011011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Ina Kustianah, S.Pd' AS nama, '198205112006042003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Elsa Diana Saputri, S.Pd' AS nama, '199906162023212004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Azlina, S.Pd I' AS nama, '198205192009012010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rusmini , S.Pd.I' AS nama, '196712092000032005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Fairuz Abadi, S.Pd' AS nama, '199002232025211004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Anita, S.Ag' AS nama, '197606142007012028' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Masna Herwati, S.Pd.Sd' AS nama, '197312282000032004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Anambas' AS asal_satker
    UNION ALL
    SELECT 'Faisal Ade Manurung, S.Pd' AS nama, '199309192024211021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Syuhana, A.Ma' AS nama, '198205252007102004' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Titik Supriatin, S.Pd' AS nama, '197710112023212007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Adelina Effendi, S.Pd' AS nama, '199312042023212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Nila Liberti ., S.Pd' AS nama, '198104162011012009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Veggy Oktaviani' AS nama, '199710252023212018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Sri Murni, S.Ag' AS nama, '197305012007012005' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Raja Haris Pratama, S.T.' AS nama, '199608232020121012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Siti Suriyatun, M.Pd.I' AS nama, '198203152011022001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Heriyati, S,Pd.' AS nama, '197809302003122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Izma Rusela, S.Pd' AS nama, '199609192023212027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rizka Zani Putri, S.Pd.' AS nama, '199701072020122021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'NurAini, , S.Pd.I' AS nama, '197907172007102004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rena Cahyati, S.Pd' AS nama, '199702182020122014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Syarifah Yusminiati, S.Pd. Sd' AS nama, '196902062003122003' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Refina Yuliani, S. Pd' AS nama, '199407092023212046' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Rio Nandra, S.Thi' AS nama, '198809182020121010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Rahmidawanis. Kh, S.Pd. I' AS nama, '198006092008012017' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nuraida' AS nama, '196507292005012002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Deli Suhaimi, S.Pd.' AS nama, '198912252023212052' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Ruli Mutia, S.Pd.I' AS nama, '198512062023212019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Bronson Mukhtadhar' AS nama, '199208202023211026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ismail, S.Pd.I' AS nama, '198002222010011007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Nurma Manik' AS nama, '196204172000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Rita Yulia Putri, S.Pd.' AS nama, '199604202023212026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Hamidi' AS nama, '198311032009031004' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Mukhrijul Nikmat, S.Pd' AS nama, '198507222011011010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Syarifina, S. Pd. I' AS nama, '198004292022212003' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'M.  Kamal, S. Ag. M.Pd' AS nama, '197504172003121003' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Purnomo, S.Ag' AS nama, '197701052005011005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Ika Mar Isla S.Pd' AS nama, '199503272023212045' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Desti Wardiana' AS nama, '198312032023212023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nina., S.Pd.I.' AS nama, '198211092005012003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Angga Pratama Putra M, S.Pd,I' AS nama, '199409142023211014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Lisa Anggriani, S.Pd' AS nama, '199701012023212047' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Juliana, S.Pd.I' AS nama, '198007152011022001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Winarni, S.Pd.I' AS nama, '198403242023212038' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Husnaini, S.Ag' AS nama, '197707232022212002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Fahrudin Saleh, S.Pd' AS nama, '199803152020121004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Wegi Handayani' AS nama, '199210312023212023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Delpi Pakpahan, S.Pak' AS nama, '196905102000032008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Wan Ena Nofiza , S.Ag' AS nama, '197511192005012004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Murniyati' AS nama, '198202032023212019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Sukatam, S.Pd.B' AS nama, '196902011993101001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Arrasyidin Akmal Domo' AS nama, '199311232023211022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Sopyan, S.Pd.I' AS nama, '197512312022211030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Rasini,  S.Pd.B' AS nama, '197405082006042007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Rosita Yelli, S.Ag' AS nama, '197212032023212003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Muamalah, S.Pd.I' AS nama, '197408222007012009' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Kasbu, S.Ag.' AS nama, '197103261993101001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Fadhli' AS nama, '199106092023211018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ramadhan, S.Sos' AS nama, '199502172020121015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Deska Jumadi, S.Pd' AS nama, '199112092023211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Endang Surati, S.Ag' AS nama, '197112281995102001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Erda Susanti, S.Pd.I' AS nama, '198410102006042017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Rahmadani Pane, S.Pd.' AS nama, '199603182024212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Wahyudi Irawan' AS nama, '199803062023211010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Sylvia Sofian, S.Pd' AS nama, '199807122023212006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Parti Ningsih, S.Hum' AS nama, '199407182024212040' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Defrizon, S.Pd' AS nama, '198908242023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Muslini, S.Pd.I' AS nama, '198610102014072005' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Oktia Ranti Saputri, S.Pd' AS nama, '199310102023212063' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Neti Elvina' AS nama, '198204132023212022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hj. Maimunah, Ba' AS nama, '196103021986032001' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Farida' AS nama, '197002161997032002' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Yurnalis, S.Pd.I' AS nama, '196103211986032002' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Elva Susanti, S.Pd. Sd' AS nama, '197707262005012003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Wartoyo, S.Pd.I' AS nama, '196505022005011003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Endang Sukaisih, A.Ma' AS nama, '196104301984012001' AS nip, 'Guru Dewasa (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'M Zubir, A.Md' AS nama, '196105241992031003' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Eny Yusmiati' AS nama, '196711172000122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Dra. Sumiyarsih' AS nama, '196301141993032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Marwiyah, S.Pd.I' AS nama, '197212231998032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Elenita, S.Pd.' AS nama, '196605072000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Kasmiati, S.Pd.I' AS nama, '197605132000032002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Setia Murni Ginting, S.Pak.' AS nama, '197003042000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Dewi Sriana, S. Pd. I' AS nama, '198002252005012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Indah Riana Arista, S.Pd' AS nama, '199108222023212053' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Hadidjah, S.Ag' AS nama, '197408112003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Hamidah, S.Ag' AS nama, '196201011983032005' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Yosi Fatmawati., S.Pd' AS nama, '197801092006042022' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Yayuk Wahyuningsih., S.Pd.' AS nama, '197206142006042028' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Sukmini, S.Pd.I' AS nama, '196202131997032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Ami Kamiludin, Lc' AS nama, '197606112000121001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Surya Iriandi' AS nama, '196203211992031002' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Haidir, S.Pd.I' AS nama, '196204051991031003' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Muhammaddong, S.Pd.I' AS nama, '198205052023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Azmiwati, S.Ag' AS nama, '196702132006042008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Yudi Handoko , S.Pd' AS nama, '197211121999031003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Sri Herlina Emilia Jayanti, S.Sos.' AS nama, '199709092020122024' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Supriyatun, S.Ag' AS nama, '197607192000032001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Afida Putri Pradani, S.Pd' AS nama, '199001102023212038' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Rita Winarni, S.Pd.I' AS nama, '196209291989032002' AS nip, 'Guru Dewasa (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Hasni, A.Ma' AS nama, '196210251983032001' AS nip, 'Guru Dewasa (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Syukrianto S.Pd' AS nama, '199601052023211015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Aslinda, S.Pd.I' AS nama, '196905171994032005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Aswina Zulfi, S.Pd' AS nama, '198508102009122013' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Warsinah, S. Pd. I' AS nama, '198301252023212018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Ali Nafiah, S.Pd.I' AS nama, '197804232009011011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Yeni Hardiati, S.Ag' AS nama, '197101122007012023' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Nurkhairia, S.Pd.I' AS nama, '197212171997032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Titin Hikmawati, S.Pd' AS nama, '199102282023212035' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Mariati' AS nama, '196803082000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Rina Hartati , Se' AS nama, '198108112023212024' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Masriana Hannum, Ba.' AS nama, '196302061992032004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Riska Windasari, S.Pd' AS nama, '199102082023212046' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Dra. Mayasari' AS nama, '197003011997032002' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Rosmilan Lubis, S,Ag' AS nama, '197104152007102003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Nurmah    , S.Pd' AS nama, '196502021999032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Rosnely , A.Ma' AS nama, '196608081986032002' AS nip, 'Guru Madya Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Haswita Vera' AS nama, '880000000000000000' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ihsan, S.Pd' AS nama, '197505042005011010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Riawanti' AS nama, '198709162023212046' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Mudarrisiah, S.Pd.I' AS nama, '197003161999032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Drs. Sujarwo' AS nama, '196609041995031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Nurbaiti' AS nama, '197908052010012014' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Sadli, S.Pd.I' AS nama, '197908272009011010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Juraida Nasution, S.Pd' AS nama, '198404142023212043' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Milati, S.Pd.I' AS nama, '197912312014061021' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Marhen Br. Tarigan' AS nama, '196711282000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Murtika Asri' AS nama, '198911042023212041' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rini Wahyuni' AS nama, '199106222023212034' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Zuhdi Insany, S.Ag' AS nama, '197503052005011005' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Rodiah,S.Pd.I' AS nama, '198004032007012006' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Harfina, S. Pd. I' AS nama, '198708172023212068' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Gusti Dewi Kartika, S.Pd' AS nama, '198510202023212037' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Katiran, S.Pd.I' AS nama, '197907112023211007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Tri Dimas Suhartoto, S.Pd' AS nama, '199312162023211019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Tri Wahyuni, S.Pd' AS nama, '199706072023212028' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Ismail, S.Pd' AS nama, '198304112012121002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Desri Annisa, S.Sn' AS nama, '199712302023212012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Jumaini' AS nama, '198412312023212025' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Repi Ilyani' AS nama, '199509212023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nuraini, S.Ag' AS nama, '196903122003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Wina Rostika, S.Pd' AS nama, '199110132023212039' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Raulina Panjaitan, S.Th' AS nama, '196903202000032002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Pratiwi Febriani' AS nama, '199602252023212025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hasrianti Siregar, S.Si' AS nama, '199409032024212039' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Rahma Yani, S.Pd' AS nama, '199406262024212050' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Winda Harniati, M.Pd' AS nama, '197611102003122008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Arifin A, S.Pd.I' AS nama, '198011102005011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Tialesma Siregar, S. Pd. I' AS nama, '197704032008012018' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Drs. M. Sofian' AS nama, '196603052007011042' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Agus Suroto, S.Fil.I' AS nama, '198208082023211016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Elinar Oktaviani, S.Pd' AS nama, '197311102005012008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Maya Fiseha, S.Pd' AS nama, '199404012023212041' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Sutan Kamarasa' AS nama, '196906232005021001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Rahmat Dwi Putra' AS nama, '199704102023211008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Iwan Ade Syahputra, S.Pd' AS nama, '198810102023211043' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Agustian, S.Pd.I' AS nama, '198108272009121001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Uci Erniza , S.Pd' AS nama, '199507192019031008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Zainudin' AS nama, '199707192023211007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Suliana , S.Sos' AS nama, '199607142023212034' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Uci Erniza, S.Pd' AS nama, '199507192019032025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Balhum Mahmudi, S.Ag.Ma' AS nama, '197605252011011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Juli Arliyana, S.Pd' AS nama, '199104042024212059' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Nurma Yunita, S.Pd.I' AS nama, '198902042023212043' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Iis Sugiarti' AS nama, '198506022020122007' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Arman B, S.Ag' AS nama, '197512102008011014' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Baihaqi, S.Pd.I' AS nama, '198503052024211017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Monalisa' AS nama, '199711012023212026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Said Muhammad Makruf, S.Pd' AS nama, '198403312023211006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Dra. Maita Yunilda' AS nama, '196605121994032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Nurfadilah, S.Pd' AS nama, '197807282006042007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Dewi Shaofiah, S.Pd.I' AS nama, '199205292023212043' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Tuti Purnaningsih, S.Ag' AS nama, '197604062007012021' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Siti Rohma Wati, S.Si' AS nama, '199301252023212047' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Efendi, S.Pd' AS nama, '197911052023211015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Wahidah Lubis,S.Pd.I' AS nama, '197809202008012011' AS nip, 'Guru Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Zuraidah, A.Md' AS nama, '196109131986032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Drs. Muliadi' AS nama, '196704212003121002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Michelle Teller, S.Pd' AS nama, '198708272023212060' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nursamiati, S.Pd.Sd' AS nama, '198206142014122002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Hernita Manurung , S.Pak' AS nama, '197210282000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Asminto, S.Ag.' AS nama, '196907222007011012' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Bayu Rizki Hidayat' AS nama, '199306252023211012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Bambang Nurdiansyah' AS nama, '198611202023211011' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Tri Dianitari, S.Pd' AS nama, '199312202023212038' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Dewi Yuniati, S.Ag' AS nama, '197606262006042035' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Rahimah, S.Pd.I' AS nama, '197511192007012020' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Dandhung Whisapto, S.Pd' AS nama, '197808012009121001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Mukhlasun , S.Ag' AS nama, '197707042005011007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Mursyidah Fadilah, S.Ag' AS nama, '197605242008012009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Diana Ermawati, S.Pd.I' AS nama, '198212152009122006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Rika Silfana, S.Pd' AS nama, '198810302019032020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Abdul Hady, S.Hum' AS nama, '199405192023211015' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Waryono' AS nama, '198106102008031001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Zona Saputri, S.Pd' AS nama, '198811182011012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Aysah Nur Fitri, S.Pd' AS nama, '199702062023212020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Aulia Nasher, S.Pd.I' AS nama, '198906042023211022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Lastri Erman' AS nama, '199405262023212049' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Sulastri, M.Pd.I' AS nama, '197008012008012019' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Novera Bachrum, S.Ag' AS nama, '197211292006042020' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Rudi Anahdi, S.Pd' AS nama, '197110082023211003' AS nip, 'Calon Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Ririn Widyastuti, S.Si, M.Sc' AS nama, '198011092009122003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Meli Haryati , S.Pd' AS nama, '197103182003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Dra. Zainun' AS nama, '196806302023212003' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Helsi Murpina S.Pd' AS nama, '198810022023212031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Suhendra, S.Pd.I' AS nama, '198106062023211021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Irfan Wani Allja, S.Pd' AS nama, '199305152019031001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rita Ningsih, S.Pd' AS nama, '196505052005012002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Kiki Fatmala, S.Pd' AS nama, '140410480598003000' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Khairan Efendi, M.Pd.I' AS nama, '198106272023211008' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Idris, S.Pd' AS nama, '197912202009121002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Marlan Hasibuan, S.Si' AS nama, '199211012019031010' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Sampurna, S.Ag' AS nama, '197705022007012009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Faizin, S.Ag' AS nama, '197707122007101002' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nurdiana' AS nama, '196812272005012003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Jon Harmedi S.Pd.Ek' AS nama, '198001222023211004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Suhendra Nofarian, S.Pd.I' AS nama, '199211172020121013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Ginarto, S.Pd.I' AS nama, '198608182023211019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Indah Erawati, S Ag' AS nama, '197707212003122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'R. Yuliyani, S.Pd.I' AS nama, '198105212023212017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Ismeri Sepritaroza, S.Pd' AS nama, '198309202023212020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Lashendri,S.Pd.I' AS nama, '197502182007011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Mukhtarom, S.Pd.I' AS nama, '196906022005011006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Asrofi, Shi' AS nama, '197402072009031001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Juli Rosdiana Nainggolan, S.Pak' AS nama, '196607102000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Henny Suswarina, S.Pd' AS nama, '196802172023212004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Nurhafizah' AS nama, '198701202023212026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Muslim,S.Pd.I' AS nama, '197709012010011017' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Wirda Hayati, S.Pd.' AS nama, '199410172024212060' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Lilik Fauziah, S.Si.' AS nama, '198902182019032014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Susanto , S.Pd.I' AS nama, '198904252019031005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj Hayatirruh, M.Ed' AS nama, '196801121993032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Syahrul Nizam' AS nama, '199201192023211023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Drs. Adnan' AS nama, '196304141994031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Budi Nurhamid, S.Pd.I' AS nama, '197812192023211004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Drs. Sayang' AS nama, '196505212001121001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Azmilawati, S.Pd' AS nama, '199511222023212029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Hervina Suryanti, S.Pd' AS nama, '199012172023212046' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dra.  Suminah' AS nama, '196608052006042019' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Idawati, S.Pd.I' AS nama, '197206292005012003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Zahratul Aini' AS nama, '198309262023212017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Arnita, S.Th.I' AS nama, '198009122023212016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Hotda Pemriana Sitanggang, S.Th' AS nama, '197111202003122002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Saiun Paturi, S.Pd.I' AS nama, '196912201997031002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Ria Susanti' AS nama, '199004172023212047' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Zulni, S.Pd' AS nama, '196906132005012010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Sri Harmini, S.Ag' AS nama, '197307172000032005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Reta Pebria Novica. Ns.' AS nama, '199202142023212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Delviani Marzal, S.Pd' AS nama, '199510062023212031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Hamsar, S.Pd.I' AS nama, '197804162006041004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Jamilah,S.Ag' AS nama, '197307112023212003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Herlina' AS nama, '198402072023212023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Annisa Ridwani, S.Psi' AS nama, '199310172020122018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Siti Hadri, S.Ag' AS nama, '197105172000122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Ngateman, S.Ag., M.Pd.B' AS nama, '197305031995101001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Tengku Nirwana, S.Pd' AS nama, '197209172003122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Zulnilis, S.Pd' AS nama, '197212312005012026' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Eli Supitriani Siregar , S.Ag' AS nama, '197003282005012004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Zamzinar, S.Pd' AS nama, '197512262009122002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Putra Hendri, S.Pd' AS nama, '199508102019031001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nurmiati, S.Pd.I' AS nama, '198506272023212029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Mayolla Adha Rolin, S.Pd' AS nama, '199405242019032023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Yulia Fitri, S.Pd.I' AS nama, '197906072014112003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Dewi Astuti' AS nama, '198206132008012010' AS nip, 'Guru Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Betsaida Br Manjorang, S.Pak' AS nama, '196804062000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Rusmeida Simanjuntak , S.Th' AS nama, '196804122000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Haslinar, S.Pd.I' AS nama, '197207291998032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Erika Sari, S.Pd.' AS nama, '199704112024212029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Noni Wulandari, S.Pd' AS nama, '199003302023212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Roslaini, S.Pd.Sd.' AS nama, '197307052024212005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Titik Purwaningsih, S.Ag.' AS nama, '197302032007012019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Rika Mustika, S.Pd' AS nama, '198804042023212046' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Ria Pratiwi, S.S' AS nama, '198502142019032013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rosdiah Harlina, S.Pd' AS nama, '197810022005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Rahmawati, S.Pd.I' AS nama, '198106082014052001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Ririn Andriani, S.Pd' AS nama, '199404292020122032' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Nur Kamelia, S.Pd.I' AS nama, '199201182019032001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Peri Yudianto, S,Pd' AS nama, '197702162007101004' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Agus Rahmanda, S.Pd' AS nama, '199408282019031014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Murniati, S. Pd. I' AS nama, '197708182007012010' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Reni Rahmayanti, M.Pd' AS nama, '198011302005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Zaki Sowabi, S.Pd' AS nama, '199501262024211017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Tri Marti Saheni, S.Pd' AS nama, '199003272023212042' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Ibrohim Muhammad Adam Musa, S.H.I' AS nama, '198306032023211017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Makmur, S.Pd.I' AS nama, '198703092023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Sudirman, S.Th.I' AS nama, '197909132023211005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Syarifah Masnita, S.Pd.I' AS nama, '197011191996032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Drs. Janaan' AS nama, '196308231994031002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Endriani Erma' AS nama, '198401072023212016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Rosli B, S.Ag' AS nama, '196912312003121019' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. NurAini' AS nama, '196708051997032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Suri Hartati' AS nama, '198108172023212035' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nike Elly Simanjuntak, S.Pd.K' AS nama, '196509102000032004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Tuti Aida, S.Pd.I, M.Pd.I' AS nama, '196506262002122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Hayati Nupus , S.Pd.I' AS nama, '197207152000032004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nia, S.Pd' AS nama, '199403072023212035' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Rury Makhzuni' AS nama, '198908112023212029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Rokayah, S.Ag' AS nama, '196501011992032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Masjur. Hb, A.Ma' AS nama, '197505102000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Riduan, S.Pd.I' AS nama, '197208072005011004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Hasnah Laili, S.Pd.I' AS nama, '197707182000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'S. Ratih Uswatun Khasanah, S.Si' AS nama, '198307282009122006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Rosi Afrilia, S.Pd' AS nama, '199607292023212028' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Mastina Simbolon , S.Pd.K' AS nama, '197204062000032004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Abu Bakar, S.Pd.I' AS nama, '197001022000031001' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Muhamad Fariz, S.Pd' AS nama, '198502242011011006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Enilawati Br Ritonga' AS nama, '198109192023212020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ernawati, S.Pdi' AS nama, '198205152005012006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Irmawati, S.Pd.I, M.Pd.I' AS nama, '197005262005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'A. Haris, S.Ag' AS nama, '196606031997031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Elia, M.Pd.I' AS nama, '196808121993032004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Slamet Riyono, S.Pd.I' AS nama, '197904272011011004' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Nurainun, S.Pd.I' AS nama, '198006102005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rosmiati , S.Pd.I' AS nama, '196908042000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Doris Simbolon, S.Pak' AS nama, '197105262000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Widya Wiryan Tari, S.Pd' AS nama, '199406182023212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hj. Yusmanidar, S.Pd.I' AS nama, '196708281989022001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Khoiril Umam, S.Hi' AS nama, '198503162020121005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Afrizal, S.Pd' AS nama, '197204141999031004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sakinah Putri' AS nama, '199504092023212025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nopriati' AS nama, '196611251997032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mazlan, S.Pd.I' AS nama, '198205102023211017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Junaida, S.Pd' AS nama, '197806082007102003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Kamaruzzaman, S.Pd' AS nama, '196407122006041015' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Fairuz, S. Pd. I' AS nama, '198111262007102001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Mahani Razak, A.Ma' AS nama, '196605022000032001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Anambas' AS asal_satker
    UNION ALL
    SELECT 'Masniati, Ba.' AS nama, '196504191992032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rosmayati , S.Pd.I' AS nama, '197812122000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Irma Fibriani,S.Pd.I' AS nama, '198202102023212034' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Erni Sasmita, S.Pd.I' AS nama, '197612252000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Raudhatunnaimah' AS nama, '198404212023212033' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Suganda Setiawan' AS nama, '199504232023211010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nurhayati, S.Pd.I' AS nama, '197007071991032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ilza Antonius,  M.Pd.I' AS nama, '197710012005021005' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Mazziah, S.Pd' AS nama, '197303291997032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Surnadi Asrianto, S.Pd.I.,M.Pd.I' AS nama, '198402252005011005' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ayub, S.Pd.I' AS nama, '197908112009121003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Dian Hapsari, S,Pd' AS nama, '198808202023212052' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Maria Roza, S.Pd.I' AS nama, '198705272023212028' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Listiyani, S.Ag.M.Pd.B' AS nama, '197108231994102001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Katinem' AS nama, '198205272023212023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Sriamah, S.Pd.I' AS nama, '198012192005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Riyanto, S.Pd.I' AS nama, '198608142023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nurhidayati, S.Ag' AS nama, '197012081997032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Masnur Yazid, M.Pd.I' AS nama, '196703041993031006' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rosdah, S.Pd.I' AS nama, '197006052000032007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nuraziah, S.Pd.I' AS nama, '197411011997032001' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Dermawati Silalahi , S.Pak' AS nama, '196308052000032004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Inna Kurniasih, S.Pd.I' AS nama, '197810072022212012' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Zaida Adlina, S.Pd.I' AS nama, '197804052000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Azwar, S.Pd.I.' AS nama, '196912111989111001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Jusni , S.Pd.I' AS nama, '196801012000032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ali Makrus, S.Pd.I' AS nama, '199010272023211026' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rosmiar, S.Pd.I' AS nama, '196911112005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Reni Fitri Nengsih' AS nama, '198206102023212031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Drs. H.  Yatimin , Ma' AS nama, '196712271996031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Drs. Zainal Arifin, M,Si' AS nama, '196804131994031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sariana, Ba.' AS nama, '196412181992032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Karmila, A.Ma' AS nama, '198012042005012006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Rasmida' AS nama, '196712271997032002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Mukhlis, S.Ag' AS nama, '197605012003121004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Rosmawita' AS nama, '196511252000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Mardiah' AS nama, '196412312000032010' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Tri Wijayanti, S.Pd' AS nama, '199201132023212028' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Dra. Suriati' AS nama, '196507122005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Khoirul Amri Nasution' AS nama, '198408022023211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Drs. Nasrudin' AS nama, '196412121997031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yusuf, S.Pd' AS nama, '196906092005011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rinarni Fitri,S.Pd' AS nama, '199303202023212044' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hasri Yanti, S.Pd.I' AS nama, '197610162000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Tiarma Br Ginting, A.Md' AS nama, '198112232005012007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nurhasnah' AS nama, '196612071995022001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nurasni, S.Pdi' AS nama, '196612311992032008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Aida D.' AS nama, '196311021994032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Amin Ijabah S.Pd.I' AS nama, '198608212023212031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Pemliati , S.Pd.I' AS nama, '197705022000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Roma Tiomina Naibaho, S.Pd.K' AS nama, '197106092003122001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Prof. Dr H. Samsul Nizar, M.Ag.' AS nama, '197010241997031001' AS nip, 'Guru Besar/Ketua Sekolah Tinggi' AS jabatan, 'STAIN Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ritawati, S.Pd.I' AS nama, '198505032023212039' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dra. Yusma' AS nama, '196612102003122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Jasmaneli, S.Ag' AS nama, '197204302000032006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nurlela, S.Pd.I' AS nama, '196605222023212002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Suryanis, S.Ag' AS nama, '197307292003122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Zulhenri, S.Pd.I' AS nama, '197209282000121002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Tibri, S.Ag, M.S.I' AS nama, '197111241997031003' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Darnalis, S.Pd.I' AS nama, '196801012000032005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hayatun Nufus, S.Ag' AS nama, '196812312001122005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ilma Trisna' AS nama, '198608202023212042' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Jasmanidar, S.Pd.I' AS nama, '197202202000032004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rossaria Al Halsey, A.Ma' AS nama, '197310072000032006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Siroyulis, S.Pd.I' AS nama, '197106162000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Syamsidar, S.Ag' AS nama, '197201102007102001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Dra. Azizah' AS nama, '196701011999032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Desima A, S.Pd' AS nama, '197512182005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rasyid Mutra, S.Pd' AS nama, '199108252023211019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Yunisa Herli, S.Pd.' AS nama, '198305102009042008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Helma Zalita' AS nama, '199507312023212025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Huzaidati, S.Pd.I.' AS nama, '196809122000032004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ali Redha, S.Pd.I' AS nama, '196105012000031001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mara Dingin Siregar,S.Pd' AS nama, '198707232023211023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Eva Susanti, S.E' AS nama, '198107042023212016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dasmaniar , S.Pd.I' AS nama, '197011252003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Herman Felani, S.Pd' AS nama, '198611092023211024' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Aflidar, S.Pd.I' AS nama, '196901082003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Zulkifli, S.Pd' AS nama, '197212102001121002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Jon Salendra Putra, S.Pd.I' AS nama, '197506152005011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Yuni Aswita , S.Pd.I' AS nama, '197706152000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Agus Rinaldi' AS nama, '199508012023211012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yusmarni, S.Pd.I' AS nama, '196802241993032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Desmawati, S.Pd.I' AS nama, '197908122002122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Asenah, S.Ag' AS nama, '197402192006042014' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Darmansyah, S.Pd.I' AS nama, '198310132005011002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Erni Hasanah , S.Ag' AS nama, '197005182005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Fauziah' AS nama, '198701012023212096' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Zulkarnadi, S.Pd.I' AS nama, '198205122014071002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Elyyanti, S.Pd' AS nama, '197008101997032008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nursyamsuriati, S.Pd.I, Ma' AS nama, '197501051997032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Nurkasir' AS nama, '196410061999031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nomie Agustine Suparno, S.Pd' AS nama, '197508182001122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yeni Osmarni, S.Pd' AS nama, '197506222006042006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Ria Gustina' AS nama, '199508162023212028' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Martinis, S.Pd.I' AS nama, '196807111993032004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nurlaili, S.Pd.I' AS nama, '196703132000032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sari  Banun, S.Pd.I' AS nama, '196801012000122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Anna Dina Shofy' AS nama, '198702192023212028' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ida Harmailis, S.Pd.I' AS nama, '198005232003122003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dedi Irawan, S.Pd.I' AS nama, '198307252008011011' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Siti Aisyah S.Pd' AS nama, '199202052023212056' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Dra. Lilis Suryati' AS nama, '196611271996032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Lina Marni , S.Pd' AS nama, '197505152000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nuraini, S.Pd.I' AS nama, '196811122000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hj.  Maznalaily, S.Ag' AS nama, '197403172005012006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ermayanis, S.Pd.I' AS nama, '197402031999032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Estiwa Girsang, S.Pak' AS nama, '196509212003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ratnawilis, S.Pd' AS nama, '197711202000032004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rida Riyanto' AS nama, '198709232023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Subhan, S.Ud' AS nama, '198801202019031008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Nemi, S.Pd.I' AS nama, '196910202000032004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mardiana, S.Ag' AS nama, '197303022003122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Teti Makuri' AS nama, '197801012022212021' AS nip, 'Calon Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Zulmiyar , A.Md' AS nama, '196712311994032015' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Fatimah, S.Pd.' AS nama, '197311032000122004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Purnama, S.Pd.I' AS nama, '196806052000032007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Usman T, S.Pd.I' AS nama, '197706122023211004' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
) AS p
JOIN tbl_role r ON LOWER(r.nama_role) = LOWER(p.jabatan);