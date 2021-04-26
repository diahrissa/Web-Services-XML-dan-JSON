<?php
$con = mysqli_connect("localhost", "root", "mysql"); 
$db_select = mysqli_select_db($con, "db_xml"); 

$xml = simplexml_load_file('file_xml.xml');

foreach ($xml -> matkul as $row){
        $id = $row -> id;
        $hari = $row -> hari;
        $mata_kuliah = $row -> mata_kuliah;
        $dosen_pengampu = $row -> dosen_pengampu;
        $jadwal = $row -> jadwal;
        $sks = $row -> sks;
        $kelas = $row -> kelas;

        $sql = "INSERT INTO xml_matkul VALUES ('$id', '$hari', '$mata_kuliah', '$dosen_pengampu', '$jadwal', '$sks', '$kelas') ";

mysqli_query($con, $sql); 
}
    echo "Data XML berhasil dimasukkan ke database";
?>