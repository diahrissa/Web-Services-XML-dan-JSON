<?php

Header('Content-type: text/xml');
//koneksi ke database
$connection = mysqli_connect("localhost", "root", "mysql", "db_xml") or die("Error " . mysqli_error($connection));
$xml = new SimpleXMLElement('<xml/>');
//menampilkan data dari database, table tb_anggota
$sql = "select * from xml_matkul";
$result = mysqli_query($connection, $sql) or die("Error " . mysqli_error($connection));

// membuat array
while ($row = mysqli_fetch_assoc($result)) {

    $track = $xml->addChild('matkul');
    $track->addChild('id', $row['id']);
    $track->addChild('hari', $row['hari']);
    $track->addChild('mata_kuliah', $row['mata_kuliah']);
    $track->addChild('dosen_pengampu', $row['dosen_pengampu']);
    $track->addChild('jadwal', $row['jadwal']);
    $track->addChild('sks', $row['sks']);
    $track->addChild('kelas', $row['kelas']);
}

print($xml->asXML());
//tutup koneksi ke database
mysqli_close($connection);
?>