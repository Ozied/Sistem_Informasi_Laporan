INSERT INTO tbl_pegawai (nama, nip, jabatan, asal_satker)
SELECT 
    p.nama,
    p.nip,
    r.id_role AS jabatan,
    p.asal_satker
FROM (
    SELECT 'Mardiah , S.Pd.I.' AS nama, '196503071994032002' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Suryani, S.Pd.I.' AS nama, '197604292006042021' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Dra. Yusmarda' AS nama, '196707141995022001' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Suhardi, S.Pd' AS nama, '196602151997031002' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'M. Nazir, S.Ag.' AS nama, '196803172000031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Feni Zulhiza., Se' AS nama, '197612092007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Asbiah' AS nama, '198812152023212035' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Bagus Setiawan, S.H.I.' AS nama, '199008252019031005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Dra. Elismar' AS nama, '196808021996032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Janaria, S.Pd' AS nama, '197309091999032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Taupik, S.Pd.I' AS nama, '196311101993031004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Depita Engriani, S.Ag.' AS nama, '197412252001122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Pintar , S.Pd.I' AS nama, '196901042003121003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Darmawati, S.Pd.I' AS nama, '196712102000032004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dewi Erita, S.Pd.I' AS nama, '197807222000032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Juria Irmawati, S.Pd' AS nama, '198210222023212015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Drs. Maryulis' AS nama, '196901051998031004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hendri Saputra,S.Pd.I' AS nama, '199009062023211016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Dahniar, S.Pd.I' AS nama, '196710202000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Santi Anggraini' AS nama, '198906102023212050' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Afrizal, A.Md' AS nama, '196704091994031004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Tri Anggraini, S.Pd.' AS nama, '197209262005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nurmuliati' AS nama, '196607201998032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Syarifah Muslihati, S.Pd.I' AS nama, '198201092006042019' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Fauziah , S.Pd.I' AS nama, '196405202000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Muhammad Nasar' AS nama, '196506051997031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hasniar' AS nama, '196608302000032005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ahad Sidin, S.Pd.I' AS nama, '197905232005011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mustafa Kamal, S.Ag' AS nama, '196609041993031002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Abu Bakar. D' AS nama, '196708171999031002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Elta Yurianti, A.Ma.' AS nama, '198506082006042001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'M. Taufik, S.Si' AS nama, '199004052023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Aisyah, S. Pd. I' AS nama, '197006272005012012' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Efdayanti , S.Pd.I' AS nama, '197312052000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Deli Marlina, S.Pd.I.' AS nama, '197909302005012006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Dra.  Yuli Yarnis' AS nama, '196812312001122004' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Siti Minarti, S. Pd.I' AS nama, '197609282014072002' AS nip, 'Guru Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nurlizan, S.Pd' AS nama, '196905162002122001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Hasanah , S.Pd.I' AS nama, '196112271994032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'H. Supriadi, S.Ag.' AS nama, '197606072003121003' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Rosmaini, S.Pd.I' AS nama, '196907192000032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mardiana, S.Pd' AS nama, '197508062005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Dasmawati , S.Ag' AS nama, '197111122000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nitet Nuryanti, S.Pd.I' AS nama, '198103252002122005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Eddy Setiawan' AS nama, '198002112022211001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Amna, S.Ag' AS nama, '197108022000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Bastian, S.Pd.I' AS nama, '196112311993031018' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Johana Sahuri, S.Pd.I' AS nama, '198512052019021002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Zahibur, S.Pd.I' AS nama, '197601122007011021' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Selvia Riani' AS nama, '199009052023212050' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Norkholis' AS nama, '197511032023211004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Rival Angriawan, S.H' AS nama, '199208082023211022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Hesnawati, S.Ag.' AS nama, '197501132006042007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Safniwati, S.Pd.I' AS nama, '196901012002122003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Syafri' AS nama, '196609152000031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Elfarida, M.M.' AS nama, '197001281996032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Drs. Helmi' AS nama, '196802041997031002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Supardi, S.Pd.' AS nama, '197002062005011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Agussalim' AS nama, '196508111991031005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Amin, S.Ag M.Pd' AS nama, '197204241997031003' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Qusairi, S.Pd.I' AS nama, '197108262007101001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yandrizal' AS nama, '199101012023211041' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Wahyuni , S.Pd.I' AS nama, '197901202000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Agus Salim, S.Ag' AS nama, '197102022023211002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Erlin Susilawati, S. Ag' AS nama, '197303032023212008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Nursilianis, S,Ag.' AS nama, '197301312007012017' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. NurAina' AS nama, '196806062005012006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yuzet Triyadi, S.Pd.' AS nama, '198104142007101004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Azizah, S,Ag.' AS nama, '197206202007012012' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Masriati, S.Pd' AS nama, '197909262003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Jalina, S.Pd.I' AS nama, '197701141999032007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Septi Novinta Herawati, S.Pd.' AS nama, '198809192019032015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Dra. Yulismar Ms' AS nama, '196807071997032003' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Surhayati, S.Pd' AS nama, '197408232005012001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nirawati, S.Ag' AS nama, '197209292003122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Siti Asmah' AS nama, '199103132023212043' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Bustanuddin,  M.Ag' AS nama, '196910021997031001' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Aini Hidayati, S.Pd.I' AS nama, '198311142005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Y Erwin Prana Rendra' AS nama, '198706152017081002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Alfian, S.Pd.I' AS nama, '197110152000031003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hj Nurmi, S.Pd.I' AS nama, '196309021989032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yusmarina, S.Ag.' AS nama, '197211102003122004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Dewi Sartika, S.Pdi' AS nama, '198206162014072005' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Endang Widajati, S.Pd' AS nama, '196503162005012001' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dzikriyati Darsyah, S.Pd.I' AS nama, '198601172023212032' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Zubaidah. R , S.Pd.I' AS nama, '196807102000122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Asmanita, S.Ag' AS nama, '197310081998032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rosmala Dewi, A.Ma' AS nama, '197804082005012006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Dra. Wirda Yusnar' AS nama, '196708092007012029' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rio Cahyadi' AS nama, '199107242023211025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Tri Wahyuni, S.Pd.I' AS nama, '197405022005012005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mariani Br. Purba, S.Pd.K' AS nama, '196905042000032012' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Intan Siti Hafifah, S.Pd.' AS nama, '199407102023212045' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Zahrotul Hidayati., Ma' AS nama, '198301232009012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nirwana Putri, S.Pd.I.' AS nama, '198508102009012009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Saiful Amin,S.Pd.I' AS nama, '197609182008011010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Karlina Dewi, S.Pd' AS nama, '196909132005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Jasmidar Ilyas, S.Pd.I' AS nama, '196401071994032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mersi Sri Warni, S.Pd' AS nama, '198103112008012014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Sriwati, S.Pd.I.' AS nama, '197312272000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Sabtiah. S. Pd. I' AS nama, '198309112008012007' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Karsimarni, S.Pd.I' AS nama, '197806142000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yurlina , S.Pd.I' AS nama, '197007092000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Rahmat' AS nama, '196512252000031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Tarsupon, S.Pd.I.' AS nama, '197912192005011002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nofia Sari' AS nama, '199111152023212037' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Suryani, S.Pd' AS nama, '198206222009012012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Wirda, S.Pd.I' AS nama, '197705251999032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Meliani, S.Pd.' AS nama, '197002162005012008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Drs. Bustani.' AS nama, '196802172007011030' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Alpauzir, S.Ag' AS nama, '196607122006041021' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Deni Arnita, S.Pd.' AS nama, '198507082023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Syahrol, S.Pd.I' AS nama, '198301052023211008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Anambas' AS asal_satker
    UNION ALL
    SELECT 'Dra. Alismita' AS nama, '196301311994032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Desrinawati, S.Pd.I' AS nama, '197812312014072009' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Tarmizi Mukhtar, S.Pd' AS nama, '197111162000031001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sri Puji Astuti, S.Pd.I.' AS nama, '198107172005012010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Yusniar, S.Pd' AS nama, '197212162006042016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Samsiah ,  S.Pd' AS nama, '199212122023212058' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nelvi Yenti, S.Pd' AS nama, '197711302003122003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Kalsum, S.Pd.I' AS nama, '196812311992032012' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Khaidir , S.Pd.I' AS nama, '197405212000031002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Benny Sastra Zador, S.Pd.' AS nama, '198510202009011002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Hj. Nailil Wati, S.Sos' AS nama, '196212311987032020' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Elvita Asmana, S.Pd' AS nama, '197809132002122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Mardiana , S.Pd.I' AS nama, '197110201998032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Remon Defrianto, S,Pd' AS nama, '198709262023211012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Fauziah, S.Pd.I' AS nama, '196412311990032013' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Netti Dahlia' AS nama, '196711192000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sutia Nengsih' AS nama, '199307192023212042' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Fahruddin, S.Ag' AS nama, '197509072005011007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Nining Uswatun Khasanah, S.Ag' AS nama, '197704272007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mustofa, S.Ag.' AS nama, '197104152005011010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Junaina, S.Pd.I' AS nama, '197904132005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Herniati, S.Pd' AS nama, '197008232005012007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Nurhayati, S.Pd' AS nama, '197210091999032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Firmayalis , S.Pd' AS nama, '197801102005012007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Suswinda, S.Pd.I.' AS nama, '198305162005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Syarifa Fadhilah, S.Pd' AS nama, '198604032009012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hayati Nurani, S.Pd.I' AS nama, '198507092010012023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Anambas' AS asal_satker
    UNION ALL
    SELECT 'Ismail, S.Pd.I' AS nama, '198412302023211007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Hazlinda, S.Ag' AS nama, '197010192005012001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Wulan Indri Safitri' AS nama, '199308182023212051' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Mursalim, S,Ag.' AS nama, '197109052007011031' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hermalinda, S.Pd' AS nama, '197204132005012005' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Amrullah Rahman, S.Ag' AS nama, '197401022022211007' AS nip, 'Guru Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Asmaniarti, S.Pd.I' AS nama, '198206052007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ermita, S.Ag' AS nama, '196807192005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Kasmerianto, S.Ag.' AS nama, '197301102007011026' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Drs. Mardin' AS nama, '196708051996031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Siti Aminah Rahmadani , S.Pd.I' AS nama, '198007132005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Lisman Nedi, S.Ag.' AS nama, '197505072005011009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Mardalisnar, S.Pd' AS nama, '197509282005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sulasteri' AS nama, '198904122023212058' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ridho' AS nama, '199406102023211011' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Suyahmin, A.Ma' AS nama, '197506252005011011' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Marianis' AS nama, '196809212000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Roslaini, S.Pd' AS nama, '197608082007012021' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Drs.  Muhammad Yunus' AS nama, '196703071997031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Santia Ariska Ayu' AS nama, '199609012023212023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Drs. Nurlubis, M.M.' AS nama, '196804192006041014' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Zaidar, Se' AS nama, '197208012003122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Selly Okta Pini' AS nama, '199410082023212031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Afrida, S.Ag' AS nama, '197204302000032004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Drs. Syafri, M.M.' AS nama, '196805011998031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Drs. Bahtiar H.N.' AS nama, '196410211997031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nurhidayati.J., S.Pd.I' AS nama, '197906032007012017' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sitti Shafiyah,S.Ag' AS nama, '196909092007012050' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Damora Surianna' AS nama, '199504302023212034' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nurhayati, S.Pd' AS nama, '197810072005012006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ussriyati , S.Pd.I' AS nama, '197308112023212005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Misrayanti, S.Pd.I' AS nama, '197709042007102006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Herpan, S.Pd.I' AS nama, '197001092005011002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sulaiman, S,Ag. M.Sy' AS nama, '197507202007011020' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Syaparin, S.Ag.' AS nama, '197709062007101005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Ibrahim, S.Ag' AS nama, '197005212000031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Yufrizal , S.Ag' AS nama, '197211092005011011' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rohana, S.Pd.I' AS nama, '197406122007102007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Suarni' AS nama, '196405102000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'T. Isdarwanto., S.Pd' AS nama, '197111052007011028' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rianita, S.Pd.' AS nama, '198308092011012008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Wardiana, S.Pd.I' AS nama, '196401012000032004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rizal Ahmadi' AS nama, '199505102023211025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Siti Muryani, S.Ag' AS nama, '197510292006042021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Abdul  Kamil, S.Ag' AS nama, '197107252005011002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Siti Murtiningsih , S. Pd.' AS nama, '197502192005012002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sumarni, S.Pd' AS nama, '197901292005012010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yovi Ersariadi, S.S' AS nama, '199311152019032024' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Siti Hajar, S.Pd.I' AS nama, '197212122007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Wisdamurti' AS nama, '197008142002122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Amirzan, S.Pd.I' AS nama, '196704012000031003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Abd. Kahar, S.Ag, M.Sy' AS nama, '197404172005011003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Shaiful Ahmad, S.Pd' AS nama, '198711202011011010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Desmarita, S.Pd.' AS nama, '197302052005012011' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Dra. Ratna Wilis' AS nama, '196712102005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Nila Nurlaili' AS nama, '199506262023212049' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Lidia Mubarrak, S.Pd.' AS nama, '198112042006042001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Rutipah, S.Ag.' AS nama, '196710111995102001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Misratul Aini, S.Ag' AS nama, '197505272005012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Rosmeri, S.Pd.I.' AS nama, '197402012000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Angga Suhardi Putra' AS nama, '199606262023211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Alfajri, S. Pd' AS nama, '199209252019031008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Riza Padli, S.Pd.' AS nama, '198112252009011014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Evi Nurul Oktavia, S.Ag' AS nama, '197810032021212001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Lilis Hervina' AS nama, '198501062023212024' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dewi Gusniwati, S.Pd.' AS nama, '196908012006042004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nurjanah, S.Pd.I' AS nama, '198510102023212077' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Fatchul Malik' AS nama, '199106202023211021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Wiwik Susanti' AS nama, '198009282023212012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rudi Hartono, S.Pd.' AS nama, '197005031997031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Drs. Ridwan' AS nama, '196803051996031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Hadi Gunawan' AS nama, '199607172023211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Desnawati, S.Pd.I.' AS nama, '198309102005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Siti Maimunah, S.Pd.I' AS nama, '198309152023212023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Lenny, S.Pd.' AS nama, '197506152005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Mauliza Elina , S.Ag' AS nama, '197802212005012003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Azizah, , S.Pd' AS nama, '198802142023212026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Suraidah, S.Ag' AS nama, '196908101996032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Lisna Handayani' AS nama, '198502022023212031' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ari Armanda' AS nama, '199710142023211006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Polora Simamora , S.Th.' AS nama, '197111052000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Sesriani, S.Pd.I.' AS nama, '198202022009122004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Mukholid, S.Pd' AS nama, '197610262023211005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Emis Suryani, S.Pd.I.' AS nama, '197507031999032004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Drs. Yusrizal' AS nama, '196407242000031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Nila Adrika, S.Pd' AS nama, '199105252025212013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mardianis , A.Ma.' AS nama, '197005231993032003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Ardhistawa' AS nama, '199810112023212010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Ratna Murni, S.Pd.I' AS nama, '196408121991032015' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Sulasih, S.Ag.' AS nama, '197303132005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Hasni Maryati, S.Si' AS nama, '198305102023212032' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Komariah' AS nama, '199211182023212048' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Nurmala Sitepu, S.Th' AS nama, '197206202003122002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Eva Edriani' AS nama, '197808072008012023' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Devi Afriyani' AS nama, '197501012023212016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Susi Irawati, S.Pd' AS nama, '197206272003122004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Raja Zulfakhri' AS nama, '196806022005011006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Jupri Marsal, S.Pd' AS nama, '199403182023211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Ady Nova Kurnianto, S.Or' AS nama, '199111052019031015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Abdul Salam' AS nama, '197505262023211002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yepi Mariati, S.Pd.' AS nama, '198607022009122007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nurainun, S.Ag' AS nama, '197612102007012035' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Hasnah, S.Pd' AS nama, '197505122022212016' AS nip, 'Guru Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Devi Elbira, S.Pd.' AS nama, '199012012019032028' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Arif' AS nama, '197201212023211003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Kasmadarwita, S.Pd.I.' AS nama, '196508311986032020' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Jamal Nurhayat, S.Pd.I' AS nama, '197602072023211006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Syahidin' AS nama, '197712292006041014' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Isnaniah, S. Pd. I' AS nama, '197803202000032001' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Adhiyani, S.Pd.' AS nama, '197711172003122004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Julian Dona' AS nama, '198907122023212057' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Azmaria' AS nama, '197706112023212014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Syukron Katsir, S.Pd' AS nama, '198903202023211021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Delmahartati, S.Pd.I.' AS nama, '197508132000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Rosneli' AS nama, '197508172014112002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Riza Agustina, S.Pd' AS nama, '197108261997032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Burhan, S.Ag., M.A.' AS nama, '197108282000031005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Novelina Siska' AS nama, '197711152023212014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yuli Nirawati, S,Pi.' AS nama, '197407122007012028' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Risman, S.Ag.' AS nama, '197203062005011005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hj. Enidharwati' AS nama, '196807131998032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Susanti Apriani, S.Pd.' AS nama, '197304292005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nurmala, S.Pd.I., M.Pd' AS nama, '197608112005012002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Dewi Siska Inriani, S.Pd.I.' AS nama, '197902172000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Agus Fatina' AS nama, '197808222023212012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Zainuddin, S.Pd' AS nama, '196803181999031007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Sri Utami , Se.' AS nama, '197111042009012001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Heri Saputra' AS nama, '199312012019031001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Hendra Priono, S.Pd.I' AS nama, '197612012023211003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Yanto, S.Si.' AS nama, '199105152019031017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Rizka Afriani, S.Sn' AS nama, '199304232019032024' AS nip, 'Calon Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Vinalti' AS nama, '197810252023212006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Hermidawati, S.Ag., M.M.' AS nama, '197305252003122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Jonny, S.Kom' AS nama, '197507292023211002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bintan' AS asal_satker
    UNION ALL
    SELECT 'Kamalia, S.Pd.I' AS nama, '198702042023212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Yusriyal, S.Ag.' AS nama, '197509102009011014' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Asninova' AS nama, '197604012006042008' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Hayzar , S.Pd.I' AS nama, '196910031998031004' AS nip, 'Guru Madya Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Juliana, S.Pd.' AS nama, '198007062005012010' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nur Hidayati, S.Pd.I' AS nama, '198212202011012007' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Hizra Fajrin, S.Pd' AS nama, '199301162019031014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Nurhasni, S.Pd.I.' AS nama, '196809041989022002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Lismarni, S.Pd.I' AS nama, '197204142005012004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Marwan, S.Pd.' AS nama, '197405132002121005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Tari Kuswanti, S.Pd.I' AS nama, '197405141999032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Ratnawati, S.Pd.I' AS nama, '197609172005012008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Aprizon' AS nama, '198504052023211029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Wahyu Dimas Syahputra, S.Pd' AS nama, '199611242024211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Rojipah, S.Pd.I.' AS nama, '197806122023212022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Musika Simbolon, S.Pak' AS nama, '197208022000032006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'H. Dedi Erwan, S.Ag.' AS nama, '197406122001121004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Edy Artono, S.Pd.B' AS nama, '123333333333333339' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Melati, S. Pd. I' AS nama, '197803172006042002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Hasnirianti, S.Pd.' AS nama, '197511092003122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Drs.  Nasrun' AS nama, '196901012005011009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Yayuk Sri Lestari, Se' AS nama, '197801012007102008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Siti Maisaroh, S.Pd' AS nama, '199705182023212022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Heldawati, S.Pd.I.' AS nama, '197306041999032013' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Khusni Mubarkah, S.Pd.I' AS nama, '198210052010011030' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Marselinus Aji Hurit, S,Pd' AS nama, '196901012005011010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Desi Watninsi, S.Pd.I.' AS nama, '198612292019032011' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Muslik, S.Ag.' AS nama, '196705152003121002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Alfizuraida, S.Pd' AS nama, '198310112023212026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Jun Kenedi, S.Pd.I.' AS nama, '196810202005011003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Iwil Asri, S.Pd.' AS nama, '196407021994031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Linda Elvia, S.Pd.I' AS nama, '197011012005012005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Rosinah, S.Pd.I' AS nama, '197512312005012016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'H. Darwis, S.Ag.' AS nama, '197110102006041037' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Anita Fitri, S.Pd.I' AS nama, '197710012022212012' AS nip, 'Guru Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Suci Pebrian Sari, S.Pd' AS nama, '199702142023212023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Masruroh Hidayati, S.Pd' AS nama, '198411032009122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Yusnan, S.Ag.' AS nama, '197206042005011006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Budianto, S.Sos' AS nama, '197702052005011008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Taufiqurrahman, S.Pd.I' AS nama, '198201222011021001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Ramlah, S.Pd' AS nama, '197512312007012087' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Amran Hamid, A.Ma.' AS nama, '197307071999031002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Surono, S.Ag' AS nama, '196909111995101001' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Akhmad Algifari, S.Pd' AS nama, '198610162023211019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Riah Br. Karo' AS nama, '196412152000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Hendrita, S,Ag., M.M.' AS nama, '197307092003121004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Doriani, S.Pd.' AS nama, '197803042002122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Seprion, M.Pd.' AS nama, '197611172005011004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Lince Manurung, S.Th' AS nama, '196403042000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Reni Puspitasari, S.Pd' AS nama, '198610282023212039' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Drs. Eri Cendra' AS nama, '196512312003121019' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Mardaleni' AS nama, '198605152023212054' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hj. Fatimatuz Zahro, S.Ag, M.Pd.I' AS nama, '197508122005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Masnur, S.Pd, M.Pd' AS nama, '198011182009121003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Mukhlis, S.Pd.I.' AS nama, '196706241989111001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Syarifah Ratna Oktasari, S.Pd' AS nama, '199310122024212046' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Maizul Hendri, S.Pd.I.' AS nama, '199305152019031018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nopa Harmi' AS nama, '198911232023212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Lutfiyah, S.Pd.I' AS nama, '198508212011022001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Dodi Triswandi, S.Pd.I' AS nama, '198901142023211016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Lingga' AS asal_satker
    UNION ALL
    SELECT 'Barlim, S.Pd.I.' AS nama, '196707101993031006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Dian Savitri, S.Pd' AS nama, '198407282009122004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Yulita, S.Pd.I' AS nama, '198603122023212033' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Putri Perdana Roza , S.Si' AS nama, '198305012009122004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Eldawati, S.Pd.I.' AS nama, '198010022005012007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Isyhadi, S.Pd.I.' AS nama, '198010032009011008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Saiyuti, S.Pd.I' AS nama, '197805092005011004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Evi Yulianti , S.Ag' AS nama, '197806052005012010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Hartini' AS nama, '198108182023212025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Fauziah, S.Pd' AS nama, '197408052005012008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Elpi Susanti, S.Pd.I.' AS nama, '198011122006042022' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Zulhanif, S.Ag.' AS nama, '197512312005011028' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Anshari, S.Ag' AS nama, '197806072007101004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Miftahudin Edy, M.Pd' AS nama, '197902152009041001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Ayu Nanda Mustika, S. Hum.' AS nama, '199612092024212027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Dedi Hidayat, S.Pd' AS nama, '198707022023211020' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Zulfarnedi, S. Pdi' AS nama, '198605052019031005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Nilla Rahmita Sy., S.Pd.' AS nama, '198206282011012010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Devi Noviyanti S.Pd' AS nama, '199206072023212053' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Rudi Kiswanto' AS nama, '198906152023211029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Ernawati' AS nama, '198803282023212025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Termizi, S.H.I.' AS nama, '197906022009121003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Indrawati,S. Pd. I' AS nama, '197506052007012009' AS nip, 'Guru Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Lilik Indarsih, S.Ag.' AS nama, '198202182005012000' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Sri Merdekawati' AS nama, '198208162023212033' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Agung Widodo, S.Ag' AS nama, '198608122019031002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Dian Anita, S.Pd.' AS nama, '198410282005012003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Suryadi, S.Pd.I, M.Pd.I' AS nama, '198207272009121004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Tukijo, S.Pd.' AS nama, '197308172005011007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Eniwaty Br Sembiring, S.Pak' AS nama, '196603062000032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Nurlaili, S.Pd.I' AS nama, '198209032008012011' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Rubaida, S,Ag.' AS nama, '197907012003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Aspani, S.Pd.Sd' AS nama, '198008062014121001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Erni Isnawati Harahap , S.Pd' AS nama, '196710102005012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Syafruddin, A.Md.' AS nama, '196412121992031004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Hadi Waluyo, S.Ag.' AS nama, '196603091987101001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Empi Simanjuntak' AS nama, '196702082000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Fatkur Rokhman, S.Ag.' AS nama, '196412151997031001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Suryasman, S.Pd' AS nama, '196412151997031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Romi Chandra' AS nama, '198603212010011015' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Desi Eliza, S.Pd' AS nama, '199409072023212041' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Lenni Zahara, S.Ag.' AS nama, '197609112005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Ahmad Hilal, S. Pd.I' AS nama, '197603022005011006' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Aliyah, S.Pd' AS nama, '197008042003122003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Drs. R. Syariful Adnan' AS nama, '196709151997031002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Eva Noviyanti, Se' AS nama, '197606262022212018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Endri, S.Pd' AS nama, '197908012007101005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Hasan Basri, S.Pd' AS nama, '199408152023211003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Afiani, S.Pd.I.' AS nama, '196901191994032004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Efriyanti, S.Pd.I' AS nama, '197704032000032005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'M. Saini, S.Ag' AS nama, '197404102003121003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Jariah, , S.Pd.I' AS nama, '197308302007102001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Liza Astuti, S.Pd' AS nama, '199409222023212035' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Wahidatul Kamariah, S.Pd.I' AS nama, '199007062023212042' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Setiyono, S.Ag.' AS nama, '196711171994101001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Nurrahmawati , S.Pd.I' AS nama, '197703012000032006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Anang RifaI, S.Pd.I.' AS nama, '198304192022211006' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Siti Asia, S.H.I., M.Pd' AS nama, '198101052009012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Erra Susanty, S.Ag' AS nama, '196806222005012004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Duski Samad, S.Ag, M.Pd.I' AS nama, '197205042003121002' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nova Linda, S.Pd.I' AS nama, '198505282006042002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Misliana, S.Pd.I' AS nama, '197505052003122005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Riyani Pratiwi, S.Pd.' AS nama, '198801302019032012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Ibnu Hajar, S.Pd.I' AS nama, '196402051992031004' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'H. Rudianto, S.Pd.M.M.Pd' AS nama, '196910121997031004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Rida Fatmawilis, S.Pd' AS nama, '198801012024212072' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Marlianis, S Pd' AS nama, '197705252006042031' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Karolina, S.Pd' AS nama, '197105231996032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Pajriadi' AS nama, '198306172023211012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Dewi Susilawati, S.Pd' AS nama, '198111192005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Erdawati, S.Pd' AS nama, '197108022000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rita, S.Pd' AS nama, '198407272009102002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Khairil Anwar, S.Pd.I' AS nama, '197005202005011008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Jasni, S.Pd.I' AS nama, '197001022000032004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Hj. Maizatul Akmar, S.Pd' AS nama, '197206212005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Zalfiati, S.Si' AS nama, '197109132009012001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Yusmawati, S,Ag.' AS nama, '197511102007012030' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Idrus , S.Ag' AS nama, '197112212000031001' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Suliana, S.Pd.Si' AS nama, '197704182005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Jasmi Roza, M.Pd' AS nama, '198402162009122003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Drs. Khairullah' AS nama, '196610072007011019' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nurµini, S.Hi, Ma' AS nama, '198105052009012010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Fadhil, S.Th.I' AS nama, '197901052007101005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dessyam Chamidarti, Sei' AS nama, '198012112022212015' AS nip, 'Guru Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Maisyarah, S.Pd' AS nama, '199506212023212032' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Nurmahani, S.Pd.' AS nama, '198008172005012011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Syukri Zainuddin, S.Ag' AS nama, '196901022000031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hairul Akmal, S.Pd' AS nama, '198202112007011009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Fitriyani, S.Ag' AS nama, '197509172007102003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Fitria Ningsih, S.Pd' AS nama, '198601142009012004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rosnawati, S. Ag' AS nama, '197505192007012001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Zameira Saputri, S.Sos' AS nama, '198605242019032015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Asripani Syam, S.Ag' AS nama, '197104072007102003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Suwartini Agustina, S.Pd.I' AS nama, '196808242003122001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Agustriyani,S, Pd.I' AS nama, '198908102023212038' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Riza Raudatul Jannah, S.Pd' AS nama, '199410072019032018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nurhasni, S.Pd.I' AS nama, '197706102007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Bayu Setiawan, S.Pd' AS nama, '199410172019031010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'M. Febri Ramadhan' AS nama, '199502072023211014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Hudrizal, S.Ag' AS nama, '197209012000031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hatilah, S.Pd' AS nama, '197504072005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Budi Prasetio, S.Pd' AS nama, '199501072019031009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Umiyati, S.Pd.I' AS nama, '198204122023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Meriyesi Susanti, S.Pd' AS nama, '197509202005012011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Zakiah, S.Pd.I' AS nama, '197604012005012011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Gusri, S.Ag' AS nama, '197408282022211002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Ermiwati, S.Pd.I' AS nama, '197006052000032006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dewi Sami Wardani, S.Pd' AS nama, '197604022003122003' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Musria Riza, S.Pd.I' AS nama, '197412072003122003' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Herni Marlinawati, S.Pd' AS nama, '197508082007102004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Erni Nawana Tanjung, S.Pd' AS nama, '197908172009012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Kholil Fathul Umam, S.H.I' AS nama, '198403072019031010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Nofriadi, S. Pd. I' AS nama, '198511102021211002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Rosmawati, S.Pd' AS nama, '197803152002122003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Salim , S.Ag' AS nama, '197012202005011004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dra. Hamidah' AS nama, '196810291998032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Masriati, A.Ma' AS nama, '196903011999032002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Dedi Herianto, S.Pd.I' AS nama, '198005202006041008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Afrizal, S.Ag.' AS nama, '197304012007101004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Saudah, S.Pd.I' AS nama, '196903022000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Dra. Martini' AS nama, '196710161998042001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nurmupida, S.Pd' AS nama, '198406232006042003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ermidanis, S.Pd' AS nama, '197607102000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hj. Ermaneli, S.Pd' AS nama, '197511132005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Maydolina Sp, S.Pd.' AS nama, '199705152023212027' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Taufikur Rohman, Ma' AS nama, '197303032005011006' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Humam Nur Fahmi, S.Pd.I' AS nama, '197801082003121011' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Erdiati, S.Pd.I' AS nama, '198106062007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Elni Fatmawati, S.Pd' AS nama, '198011092007102005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yulianti, S.Pd' AS nama, '197807172005012014' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Syahferi, S.Pd.I' AS nama, '196912201998031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Abdul Qodir, S.Pd.I.' AS nama, '196809112005011002' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Yenfitrimirni, S.Pd.I.' AS nama, '197807222000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Agus Salim, S.Pd.I' AS nama, '197912122006041026' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yustina Girsang, S.Pd' AS nama, '197306072000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Asep Hidayat., M.Si' AS nama, '197403042009011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Leni Herlianti , S. Ag.' AS nama, '197607212005012001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yurlena Dewi, S.Pd' AS nama, '197910022005012008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Yusnidar, S.Ag., M.Pd' AS nama, '197306042005012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Kesma Sera, S,Pd' AS nama, '197501042007012019' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Faathir Fat-Hel Hamid, S.Ag' AS nama, '199507172019031009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Sri Yuliarni, S,Pd' AS nama, '197805132005012009' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Winarmi, S.Pd.B.' AS nama, '197111251995102002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Firdaus., S.Pd.I' AS nama, '197910092003121005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Arizumiati, S.Pd.I' AS nama, '197111042008012009' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Lutfi, S.E' AS nama, '199509152019031004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Daryono ., S.Ag' AS nama, '197008132005011005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Masro Ito, S.Pd' AS nama, '198910302023212044' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Hasnawati , Se' AS nama, '198108112007102007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Antonius Sugihartono, S.Ag' AS nama, '198503252019021002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Hj.Hariyati.Is, S. Pd' AS nama, '196904031995032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Firza Radiani, Se' AS nama, '197906182007102004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Haris, S.Ag' AS nama, '235467891236547892' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Fatma Santri, S.Pd' AS nama, '199402122019032025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yarni Yunita, S.Pd' AS nama, '198801162023212037' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Anik Lailatul Istikomah, S.Pd.I' AS nama, '198301302005012001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nurhenty Sibarani' AS nama, '196510192000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Azwir, S.Pd.Sd' AS nama, '197603202011011008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Asmarudi, S. Pd' AS nama, '198809042023211020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dahlia, S.Sos' AS nama, '197511102003122006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Syarifah Maisalamah,S.Ag' AS nama, '197608012007012022' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Rafnelli Syuhaimi, S.Pd.,M.Pd' AS nama, '197310102005012006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sari Amalia Rahmah, S.Pd.' AS nama, '198610182020122008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Metti Soviany, S.Ag' AS nama, '197209092003122004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Aryanita, S.Pd' AS nama, '198905282019032017' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Yuli Hastuty Harahap., Se.,M.Si' AS nama, '198107072009012014' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Tawarti , S,Ag' AS nama, '197312042005012007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Abdul Salam,A.Pd.I' AS nama, '197103172006041007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Suparman, S,Ag.' AS nama, '196908212007011022' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Basir, S.Ag' AS nama, '197606202005011003' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Evi  Liza, S.Pd' AS nama, '197601202007102004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nursihan, S.Pd.I' AS nama, '197008161996032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Mahfud, S.Ag' AS nama, '197502122005011001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Yulidar, S.Pd' AS nama, '197903152007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Malinar, S.Pd.I' AS nama, '197502242000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Eka Nopriyandri, S.Pd' AS nama, '198611212011011007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Wardani, S.Pd.I' AS nama, '198104292006042003' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Ihda Wildani, S.Pd., M.Pd' AS nama, '198104012006042002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Leni Marlina, S.Pd' AS nama, '199606122023212043' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Elhafizah, S.Pd.I' AS nama, '198112122006042031' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Afdizon' AS nama, '196801011999031005' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Azimar, S.Pd' AS nama, '197403252006042006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nursilah, S.Pd' AS nama, '199610232019032007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Fajar , S.Pd.I' AS nama, '196602182023211001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Khairoti, S.Pd.I' AS nama, '197103152000032001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ade Rahmat, S.Pd' AS nama, '199205062020121016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Hernayusna , S.Pd.I' AS nama, '197001072000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Jhon Laska, S.Pd' AS nama, '198810202019031011' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Habibullah J, S.Pd.I' AS nama, '197404242007101005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Riza Mawaddah, S.Ag' AS nama, '199604142023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rusni, S.Pd.I' AS nama, '197210272006042001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Sadriadi, S.Pd.I' AS nama, '199208102019031015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Syafri, S.Ag' AS nama, '197102062006041019' AS nip, 'Guru Madya (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hijrah Taufiqi, S.Pd' AS nama, '198405182009011007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Wahidah , S. Pd.I' AS nama, '196904242000032008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Tamsi, S.Ag.' AS nama, '196705021993101002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Martinus, S.Ag, Ma' AS nama, '197001012002121002' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Tumen, S.Pd.I.' AS nama, '197904102023211009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nurmailis.' AS nama, '196412312007012209' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Zuraida, S.Pd.I' AS nama, '196808282000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nurseha, S.Pd.I' AS nama, '197912312009012013' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Elva Yanti, S.Pd' AS nama, '198510242009122005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Jelita, S.Pd.I' AS nama, '197904122006042011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Wagino Ragil Pamuji, S.Pd.B.' AS nama, '197908202008011011' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Erliwati, S.Pd.I' AS nama, '197102252000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Dewi Kasmah, S.Ag.' AS nama, '197703202007012024' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Siwinarti, S. Pd.I' AS nama, '198106022001122003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Drs. Asrul' AS nama, '196409112000031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rismalida, S.Pd' AS nama, '196905232005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Elfizah , S. Ag.' AS nama, '197206012005012004' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Romita, S.Pd' AS nama, '199104282023212045' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Endang Sulastri, S.Ag.' AS nama, '197601022006042026' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Atibri, S.Pd.I' AS nama, '197101012005011015' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Edi Saputra, S.Pd' AS nama, '198404162009011013' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Horan Im Damanik' AS nama, '196211102000032001' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Axis Mountiawan, A.Ma' AS nama, '197504082003121002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nurhidayati , S.Ag' AS nama, '197408122005012004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Muliyadi, S.Pd.I' AS nama, '198804152023211018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nurhasanah, S.Sos.I' AS nama, '198103052007102005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Agus Wahyudin, S.Pd' AS nama, '197205082009121001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Noer Iskandar, S.Pd' AS nama, '199701092023211004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Nani Mudiarti., S.Pd.I' AS nama, '198111262009102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Zulfahmi' AS nama, '196602121997031004' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Feri Fajri, S.Pd.' AS nama, '198802272024211023' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Elfandra, S.Pd.I' AS nama, '198010192009121002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sri Wardaningsih., S.Ag.' AS nama, '197002222008012009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Yedho Syahadha, S.Pd' AS nama, '199505252023211015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Rosmi, S.Pd.I' AS nama, '197911102007102004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Multazum,S.Ag' AS nama, '196611262008011001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Alfianri, S.Pd' AS nama, '198908252023211022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'M. Zainal, S.Pd.I' AS nama, '198908042023211013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Suprizal' AS nama, '198104012023211006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Asmiati, S.Pd' AS nama, '197406062005012007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rika Warda Julianti, S.Pd' AS nama, '199207052019032016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Drs Muslim.S' AS nama, '196607272000121001' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Putri Amelia, S.Pd' AS nama, '199412102019032013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Suci Handayani, S.Sy' AS nama, '199207302019032028' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Jumaan, S.Ag' AS nama, '197012142005011002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Marfidah, S.Pd.I' AS nama, '198505282023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Asmul Hayati, S.Pd' AS nama, '197003051999032003' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nurasnimar, S.Ag' AS nama, '197505072023212007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Ritawati, S.Ag' AS nama, '197704052007102006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nur Asiah, S.Pd.' AS nama, '198509222009122005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Zeni Efrita, S.Pd' AS nama, '197912202005012006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'A. Riaudin, A.Ma' AS nama, '197109252005011005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'M. Sahlan Putra Tama, S.Si, M.Pd' AS nama, '197612062006041024' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yarni, S.Pd.I' AS nama, '197003122002122001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hermita, S.Pd' AS nama, '197104101997032001' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Dra. Nuraidah' AS nama, '196406071997032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Robi Andrika, S. Pd' AS nama, '199007272019031009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Agus Salim , S.Ag' AS nama, '197408122005011005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Meri Nova Erlinda, S.Pd.I' AS nama, '198404022009122004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Herlindawati, S. Pd.I' AS nama, '197111282000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Sakdiyah, S.Pd.I' AS nama, '196406111987032019' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Hj. Roslaini, S.Pd' AS nama, '197104112005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nurman, A.Ma' AS nama, '197112011998031003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Syasri Yenni, S.Pd.I., M.Pd.' AS nama, '197707212007102002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'JaFar Hs, S.Pd.I' AS nama, '197203072007101002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Endrawati, S. Ag' AS nama, '197306082011012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Rusni, S.Pd.I' AS nama, '196204081994032001' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Apri, S.Pd' AS nama, '198109122009121002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hafizhah, S.Pd.' AS nama, '198911232019032015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hayati, S.Pd.I' AS nama, '198201192023212018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Sri Risma Yani, S.Pd.I' AS nama, '198908142019032015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Yasni Wati, S.Pd.Sd' AS nama, '197210142007102003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Subhan Zainuri Ehsan , S.Or' AS nama, '199411082019031009' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Khusenul Kumaidah, S.Ag' AS nama, '197105052007102004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Endang Yordani, A.Ma' AS nama, '197708182000032003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Helli Yarti , S.Ag' AS nama, '197711172005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Maidawati, S.Pd' AS nama, '197105051997032014' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Efni Sasmita, S.Pd' AS nama, '198403262009012007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hj. Fatmawati, S.Pd.I' AS nama, '196502051990032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Erdiana, S.Ag' AS nama, '197511252007102005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mardanis, M.Pd' AS nama, '197306272005011003' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Malian, S.Pd.I' AS nama, '197610052005011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Beni Yanti, M.Pd' AS nama, '196912261998032001' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. H. Darmin Mk' AS nama, '196607081998031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Maidarlis, S.Ag' AS nama, '197305122007102003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Drs. M. Syarif' AS nama, '196312311999031009' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mashal, S.Pd.I' AS nama, '196502082005011006' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nor Afdalis, S.Ag' AS nama, '197209252007101002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yusraini, S.Ag' AS nama, '197211062007102002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Jurahmin, M.Pd' AS nama, '196705121996031001' AS nip, 'Guru Madya Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Addarwadi Omar, S.Pd' AS nama, '199001192019031005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nurmisuari, S. Pd' AS nama, '199510172019031005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Zaitun, S.Pd.I' AS nama, '197610102007102004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Sukmawati, S.Ag' AS nama, '197304052007102002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nelli Afrida, S.Pd' AS nama, '198110162007102003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Ripin' AS nama, '198109102022211003' AS nip, 'Calon Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Lendriyati, Se' AS nama, '197811032007102003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Kiki Rizki Amelya Zubir, S.Pd' AS nama, '198405152011012015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Maswir, S.Pd' AS nama, '197401122003121002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nurainah, S.Pd.I' AS nama, '196101281986032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Roni Suryadi' AS nama, '199708252023211007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Bengkalis' AS asal_satker
    UNION ALL
    SELECT 'Yasri, S.Psi' AS nama, '198311272019031004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mardiah Hasibuan, S.Pd' AS nama, '196907072005012009' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Mandharamayu, S.E' AS nama, '198610172019031007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Masni, A.Ma' AS nama, '198101312007102002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Uliyana Rm, S.Pd' AS nama, '198808212023212029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Putri Andayani, S.Pd.I' AS nama, '199003192019032019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hendra Putra, S.Pd.I' AS nama, '197906032008011014' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Salmidar, S.Pd' AS nama, '197505202005012004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nur Apipah, S.Pd.I' AS nama, '197908152005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Yeyen Lestari, S.Pd' AS nama, '198109092009012006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Intan Terpilih, S.Pd' AS nama, '199312102023212044' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Muliana, S.Si' AS nama, '199010222019032022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Dewi Karmila, S.Pd.I' AS nama, '197909012005012005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Wiwik Indawati, S.Pd' AS nama, '198003262011012007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Sugeng Triyono , S. Pd.' AS nama, '197007222005011007' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Murni, S.Pd.I' AS nama, '197706082000032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Erni Tuti, A.Ma' AS nama, '198201012005012008' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Amir Husin., S.Ag.' AS nama, '197302122007011003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Syahriani, S.Ag' AS nama, '197209072007102002' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'AsAdi, S.Ag' AS nama, '197302182002121001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Lasa Simanjuntak, S.Pd.K' AS nama, '196911112000032002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Tyan Afruliyanto, S. Pd' AS nama, '199104262019031006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'H. Tarmizi, S.Ag' AS nama, '196104121982031006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Siska Saputra, S. Pd.' AS nama, '199212052020122012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hizrayati, S.Ag' AS nama, '197812292007102001' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Supyani, S.Ag' AS nama, '197001112014111001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Pitri Nelli, S.Pd' AS nama, '198407032009122005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Nadira, S.Pd' AS nama, '198901302019032010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Alfian, Ma' AS nama, '196802012005011008' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Endra Juni Harja, S. Si' AS nama, '199606012019031005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Bastian, S.Pd' AS nama, '198309282023211011' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dra. Maimunah' AS nama, '196705281997032001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Romaita., S.Ag.' AS nama, '197303052008012014' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Mulhaidar, S.Pd.I, M.Pd' AS nama, '196808172007012047' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rina Hayati , S.Ag, M.Pd' AS nama, '197404072005012002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Povi Erianti, S. Pd. I' AS nama, '197107062002122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'H. Fakhrul Rozi., Lc,M.Ag' AS nama, '197005242008011006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Rosni, S.Pd' AS nama, '197311072005012010' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Khairil Ashri, S.Psi' AS nama, '198105042005011004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Yuli Koryanti, S.Pdi' AS nama, '198407232009122003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Fitriani, S.Ag' AS nama, '197311072007012015' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Sulasih, S.Pd.I' AS nama, '197807202005012003' AS nip, 'Guru Muda Tk.I (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Akhirman, S.Pt' AS nama, '197403132007011025' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Siti Fatimah,S.Pd.I' AS nama, '198312222007012001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Tanjung Pinang' AS asal_satker
    UNION ALL
    SELECT 'Nurbaiti , S.Ag.' AS nama, '196912312007012301' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Mulyana ., S.Pd.Sd.' AS nama, '197009182005011002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Sutia Marja Ayus' AS nama, '199012042023212034' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Dumai' AS asal_satker
    UNION ALL
    SELECT 'Ruhaimi,S.Pd.I' AS nama, '199202092002011013' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Anambas' AS asal_satker
    UNION ALL
    SELECT 'Naila Fitria Walidi, S.Pd' AS nama, '199502252024212045' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Mhd. Yuras, S.Sos.I' AS nama, '197604072007101004' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Taufik, , A.Ma' AS nama, '197101012014111004' AS nip, 'Guru Pratama (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rifal Putra Jaya, S.Pd' AS nama, '198705102019031010' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Elpizarwati, S.Ag' AS nama, '197303172006042022' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Supriadi, S.Pd' AS nama, '199004122023211021' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nur Ainon, S.Pd.I' AS nama, '197412312000032005' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Umi HaniAh, S.Pd' AS nama, '197201182005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Rulia Asti, S.Pd.I' AS nama, '198609012009122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Irmayanti, S.Pd.I' AS nama, '197905192003122001' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Jafri, S.Pd' AS nama, '196806071997031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Rahmi Nispariah., S.Ag' AS nama, '197309232007012019' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Azhari, Lc, Ma.' AS nama, '197406012007011043' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Hasmi, Se' AS nama, '197901012009122002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Desi Irawati, S.Pd.' AS nama, '199510142024212043' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hulu' AS asal_satker
    UNION ALL
    SELECT 'Muh. Faodjan Makruf , S.Pd.' AS nama, '197905212005011007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Zandri Alpeni , S.Pd' AS nama, '199501242019031006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Maria Ermita, S.Ag' AS nama, '197507122005012003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Lesmanti, S.Pd' AS nama, '198811052019032016' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'H. Sasra Putra, Ma' AS nama, '196910151998031004' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Al Hafizh Maulana, S.Ud' AS nama, '199010122019031007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Muslehan, S.Pd.I' AS nama, '198101262005011006' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Auliya Nasir, S.Pd' AS nama, '199611032023212022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Junaidi, S.Pd.I' AS nama, '196806062007011064' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Anambas' AS asal_satker
    UNION ALL
    SELECT 'M. Winas Durasando S.Pd' AS nama, '199511012023211012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Henni Sabrina Ayunani, S.Pd' AS nama, '199007112019032020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Ramli' AS nama, '196605051997031003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dra. Kasih Ida Nursanti' AS nama, '197110032014112003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Akhwardi, S.Ag' AS nama, '197304092006041020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hevi Azwar, S.Pd.I, M.Pd' AS nama, '197810192005011004' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sandra Puspita Dewi, S.Pd.I' AS nama, '198606252019032012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'HalimatussaDiah, S.Pd.I' AS nama, '197909082007102004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Indra Munir, S.Si' AS nama, '198102122007101003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Pratiwi Istiwigati, S.Pd' AS nama, '198904192019032007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Rizal Antoni, S.Pd' AS nama, '197909132009121005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Miftahudin, S.Hi' AS nama, '198204232009121002' AS nip, 'Guru Ahli Muda/Kepala MIN/MIS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Fitria Ariyanti, S.Pd' AS nama, '199409252020122020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Sumadi, A.Md' AS nama, '196412301994031002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Patimah' AS nama, '196812092005022001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Yusmanidar, S.Pd.I' AS nama, '197105251998032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Eka Darmawati, S.Pd' AS nama, '197909172005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Suradi, A.Ma' AS nama, '196806281994031001' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Litti Suryani, S.Pd.I' AS nama, '198407072009122001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Marzuki, S.Pd.I.' AS nama, '196412311990031046' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Wahyu Nur Hidayat, S. Pd' AS nama, '198405232019031002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Drs. Syahminan Rais' AS nama, '196807041998031002' AS nip, 'Guru Pembina (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Drs. Zulkifli, M.Pd.' AS nama, '196412311994031036' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Putri Maululia' AS nama, '199408212023212029' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nurlinda, S.Pd' AS nama, '199212292020122028' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Parno' AS nama, '196909012000031003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Dra. Aziza' AS nama, '196504032005012003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dra Sunniati' AS nama, '196808012014122004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Masrul, S.Pd.I' AS nama, '196909081997031001' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Riswarni, S.Ag' AS nama, '197712172014112002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Kamil, S.Ag.' AS nama, '197011222005011005' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Marbawi, S.Pd.I, M.Ag' AS nama, '197610282005011004' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nursihan, S.Ag' AS nama, '197711222009122003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Husnul Chatimah, S.Sn' AS nama, '199301152020122022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Rusmiati' AS nama, '199510152023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Sakinatul Fadlilah, S.Pd.I' AS nama, '198205192009122002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Wiwin Winarti,S.Pd.I.' AS nama, '198903232023212048' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Azhar, S.Ag' AS nama, '197311122007011031' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Elfiar Joni, A.Ma' AS nama, '197202282007011038' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Rayen Ariantoni, S.Pd.' AS nama, '197208132005011008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Nona Oktaviani, S.Pd' AS nama, '199610032023212036' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rosmalinda, S.Ag' AS nama, '197311152005012004' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Drs. Asmar' AS nama, '196603111999031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Atria' AS nama, '198609242023212024' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Armanila Febri., S.H' AS nama, '199102142019032024' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Neswi Herdinata, S.Pd.Sd.' AS nama, '198503152019031005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Saruji, S. Pd' AS nama, '197311252007101004' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Latifah' AS nama, '197411072023212003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Ima Suzana Hasibuan, S.Pd.I' AS nama, '199104112019032022' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Eddy Setiawan, S.Ag' AS nama, '197909262005011006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Suspendriadi, S.Ag.' AS nama, '197309242005011001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Asmarani, S.Pd.I' AS nama, '196706242003122001' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Hayyunna Effa S.Pd.I' AS nama, '198309202023212019' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Satria Jusar, S.Psi' AS nama, '199509032019031012' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Reni Hartati, S.Pd.I' AS nama, '198609062009012006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Yasrifa Fitri Aufia, S.T' AS nama, '199509122019032024' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Rini Susanti, S.Pd., M.M' AS nama, '197411102005012005' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Siti Patimah, S.Pd.I' AS nama, '198302052005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Hafsi Asmeriantika, S.Pd.' AS nama, '198801142019032008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Ngatirul Asran, S.Pd' AS nama, '197903232005011006' AS nip, 'Guru Ahli Muda/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Vitri Juliani, S.Pd' AS nama, '199107312023212042' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Iskandar, S.Pd.I' AS nama, '196904042005011005' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Siswoyo, S.Pd.I' AS nama, '197605272007101002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Yedrita' AS nama, '196703112000032003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Siti Norbayati, S.Pd.I' AS nama, '198302232005012002' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Via Yantimala, A.Ma.,S.Pd.I' AS nama, '197109122000032006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hadrafi Magfirah, S.Sos' AS nama, '198402272019032008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Mohammad Syamsul Aripin, S.Pd' AS nama, '198009262009121005' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Hj. Risa Malahayati Muhammad Daud, , Lc' AS nama, '198103242014112002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nikmah, S.Pd' AS nama, '198610132011012011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Wahyu Marzika, S.Pd.I' AS nama, '199103182023212034' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Kurdi, S.Pd.I' AS nama, '198103252005011003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Hidayat, S.Si' AS nama, '197903232023211008' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nurhayati' AS nama, '197412152023212006' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Zulkifli S, S.A.Ma' AS nama, '197008172000031007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Hj. Amnah , S.Pd.I' AS nama, '197101082007012015' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nuraya M, S.Pdi' AS nama, '198008102005012005' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Fitri Fenny, S.Pd.' AS nama, '196912241995032001' AS nip, 'Guru Madya' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Endang Murti Mulyasri , S.Pd' AS nama, '197101092003122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Mascahaya' AS nama, '196911072000032003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Basyuni, S.Ag' AS nama, '197306212005011012' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Dra. Syariatun H.' AS nama, '196605131994032003' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Wenny Oktaviani, S.Pd' AS nama, '199210262019032015' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Mhd. Rio Sempana, S.Pd' AS nama, '199211132019031007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Risnawati, S.Pd.I' AS nama, '197409302022212006' AS nip, 'Guru Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Sry Asvahera, S.Pd' AS nama, '197802052003122002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Amri Effendi' AS nama, '199104012023211026' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Pekanbaru' AS asal_satker
    UNION ALL
    SELECT 'Nawawi, S.Pd' AS nama, '197502052005011013' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Amelia, S.Ag' AS nama, '197009122014112003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nelson Chandra, S.Pd' AS nama, '198806012019031013' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Mardiah, S.Pd.I' AS nama, '197905132003122001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Nengki Afrida, S.Pd' AS nama, '199103142023212033' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Rafika Syah' AS nama, '197803292005022002' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Natuna' AS asal_satker
    UNION ALL
    SELECT 'Fadhil Tasyin, S. Pd' AS nama, '199603252019031003' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Surakim Hadirahman, S.Ag.' AS nama, '196811192000031002' AS nip, 'Guru Ahli Madya/Kepala MTsN/MTsS' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Veggy Oktaviani, S.Pd' AS nama, '197710252023212018' AS nip, 'Guru Ahli Pertama' AS jabatan, 'MAN 1 Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Magdalena, S.Pd' AS nama, '197807292005012007' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Nursyam, S.Ag' AS nama, '197708022002122011' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Karimun' AS asal_satker
    UNION ALL
    SELECT 'Ruziah, , S.Pd.I' AS nama, '197706062005012012' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Erliati, S. Pd.I' AS nama, '198009272005012011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Dra. Khairina' AS nama, '196707221993032004' AS nip, 'Guru Ahli Madya/Kepala MAN/MAS' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Umi Kalsum , S.Pd' AS nama, '197312022007102002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Hidayati, S.Kom, M. Pd. I' AS nama, '197803232001122003' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Asmarida, S.Pd.I' AS nama, '197312022007102003' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'N. Sulsiati' AS nama, '196707152005012007' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Sukmawati, S.Pd.I.' AS nama, '196904201994032002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Sartika Ardina, S.Pd' AS nama, '199501232023212041' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Siak' AS asal_satker
    UNION ALL
    SELECT 'Syamsudin' AS nama, '198010062014111001' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Drs. Hasan' AS nama, '196203121992031002' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Drs. Husni Thamrin' AS nama, '196601012005011006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Yulianto Dwi Saputro, Se' AS nama, '197407272011011001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Abdul Hakim, S.Pdi' AS nama, '198010032005011007' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Yusuf, S.Pd.I' AS nama, '197606192007101006' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Dra Paisah' AS nama, '196712312005012041' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Setia Budi' AS nama, '197501212023211004' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kampar' AS asal_satker
    UNION ALL
    SELECT 'Aika Sutana, S.Pd.I' AS nama, '198807062023212030' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kepulauan Meranti' AS asal_satker
    UNION ALL
    SELECT 'Lindawati M , A.Ma' AS nama, '197608062003122002' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Helmi, S.Pdi' AS nama, '196912311997031032' AS nip, 'Guru Ahli Madya' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Muhammad Ali Napiah' AS nama, '196912312000031025' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Syuriati, S.Pd.I' AS nama, '197804102005012003' AS nip, 'Guru Muda (Jabatan Lama, hanya dipakai untuk riwayat)' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Ashofiantika Rabbani, S.Pd' AS nama, '199510282023212037' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
    UNION ALL
    SELECT 'Sri Hartini, S.Pd.I' AS nama, '196912312000032011' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Syafrijon, S.Pd.I' AS nama, '197701012002121001' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Zulfandri, S.Pd.I' AS nama, '197609132007011004' AS nip, 'Guru' AS jabatan, 'Kantor Kementerian Agama Kabupaten Kuantan Singingi' AS asal_satker
    UNION ALL
    SELECT 'Luth, S.Pd.I' AS nama, '196912312005011073' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Indragiri Hilir' AS asal_satker
    UNION ALL
    SELECT 'Meriati, S.Pd' AS nama, '197701012005012008' AS nip, 'Guru Ahli Muda' AS jabatan, 'Kantor Kementerian Agama Kabupaten Rokan Hulu' AS asal_satker
    UNION ALL
    SELECT 'Gita Arisandy Natasya, S.Sn.' AS nama, '199309202020122020' AS nip, 'Guru Ahli Pertama' AS jabatan, 'Kantor Kementerian Agama Kota Batam' AS asal_satker
) AS p
JOIN tbl_role r ON LOWER(r.nama_role) = LOWER(p.jabatan);