<?php

//membuat koneksi database
$connect = mysqli_connect("localhost", "root", "mysql", "db_json") or die("Error " . mysqli_error($connect));

//file json yang akan dimasukkan ke database
$filejson = "data_json.json";

//function ini akan membaca file ke dalam bentuk string, kemudian simpan dalam variabel baru
$data = file_get_contents($filejson);

//convert data menjadi array asosiatif
$array = json_decode($data, true);

//membuat looping agar dapat mengakses seluruh data array dan dengan bantuan foreach akan dimasukkan satu satu
foreach ($array as $row)
{
    //insert query sebagai perintah memasukkan data ke tabel importdata yang telah dibuat
    $sql = "INSERT INTO importdata(Nama_Grup, Agensi, Tahun_Debut, Jml_Anggota) VALUES ('".$row["Nama_Grup"]."', '".$row["Agensi"]."', '".$row["Tahun_Debut"]."', '".$row["Jml_Anggota"]."')";

    //execute query untuk insert data ke dalam tabel importdata dengan 2 parameter
    mysqli_query($connect, $sql);

}
    //parameter apakah data berhasil dimasukkan atau tidak
    echo "Data json berhasil dimasukkan ke tabel importdata di database";