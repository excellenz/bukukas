<?php
//panggil file koneksi.php yang sudah anda buat
include "../koneksi.php";

$id=$_GET['id'];   //ambil parameter GET id  dan buat variabel
//gunakan parameter get untuk menghapus data berdasarkan id produk
$hapus = mysqli_query($koneksi, "DELETE FROM klien where kode='$id'");
if($hapus){ //jika berhasil
    echo "<script>alert('Data Berhasil Di Hapus');document.location='klien_keluar.php'</script>";
}else{  //jika gagal
    echo "<script>alert('Data Gagal Di Hapus, Coba ulangi lagi');document.location='klien_keluar.php'</script>";
}
?>