<?php
// =============================================================
// Generate Query INSERT (otomatis pecah per 50.000 baris)
// Penulis: Abdan Syakuro 💻
// =============================================================

// Konfigurasi
$inputFileName = __DIR__ . '/Data_Pegawai.csv';
$delimiter = ';'; // ganti ke ',' jika file CSV kamu pakai koma
$rowsPerFile = 1000; // jumlah baris per file SQL

ini_set('max_execution_time', '0'); // tanpa batas waktu
ini_set('memory_limit', '2048M');   // naikkan sedikit, tetap aman

// Cek file
if (!file_exists($inputFileName)) {
    die("❌ File tidak ditemukan di lokasi: $inputFileName");
}

// Buka CSV
$handle = fopen($inputFileName, "r");
if ($handle === false) {
    die("❌ Gagal membuka file CSV!");
}

// Lewati header (baris pertama)
$header = fgetcsv($handle, 10000, $delimiter);
if ($header === false) {
    die("⚠️ File kosong atau format tidak valid!");
}

$fileCount = 1;
$rowCount = 0;
$totalCount = 0;
$rows = [];

echo "🚀 Proses dimulai...<br>";

// Fungsi simpan ke file SQL
function saveToFile($rows, $fileCount) {
    if (empty($rows)) return;

    $unionAll = implode("\n    UNION ALL\n    ", $rows);
    $sql = "INSERT INTO tbl_pegawai (nama, nip, jabatan, asal_satker)
SELECT 
    p.nama,
    p.nip,
    r.id_role AS jabatan,
    p.asal_satker
FROM (
    $unionAll
) AS p
JOIN tbl_role r ON LOWER(r.nama_role) = LOWER(p.jabatan);";

    $outputFile = __DIR__ . "/query_pegawai_part{$fileCount}.sql";
    file_put_contents($outputFile, $sql);
    echo "✅ File query_pegawai_part{$fileCount}.sql selesai disimpan (" . count($rows) . " baris)<br>";
}

// Baca baris per baris CSV
while (($data = fgetcsv($handle, 10000, $delimiter)) !== FALSE) {
    if (count($data) < 4) continue;

    $nama = trim($data[0]);
    $nip = trim($data[1]);
    $jabatan = trim($data[2]);
    $asal_satker = trim($data[3]);

    if ($nama == '' || $nip == '' || $jabatan == '' || $asal_satker == '') continue;

    // Escape karakter kutip
    foreach ([$nama, $nip, $jabatan, $asal_satker] as &$v) {
        $v = str_replace("'", "''", $v);
    }

    $rows[] = "SELECT '$nama' AS nama, '$nip' AS nip, '$jabatan' AS jabatan, '$asal_satker' AS asal_satker";
    $rowCount++;
    $totalCount++;

    // Jika sudah mencapai 50.000, simpan dan reset buffer
    if ($rowCount >= $rowsPerFile) {
        saveToFile($rows, $fileCount);
        $fileCount++;
        $rowCount = 0;
        $rows = [];
        flush();
        ob_flush();
    }
}

// Simpan sisa data terakhir
if (!empty($rows)) {
    saveToFile($rows, $fileCount);
}

fclose($handle);

echo "<hr>🎉 Selesai! Total baris diproses: <b>$totalCount</b><br>";
echo "📁 File hasil: query_pegawai_part1.sql, query_pegawai_part2.sql, dst.<br>";
echo "💡 Jalankan file .sql tersebut satu per satu di phpMyAdmin atau MySQL CLI.";
?>
