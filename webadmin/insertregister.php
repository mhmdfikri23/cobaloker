<?php 
include '../config/koneksi.php';
include '../config/config.php'; ?>
<?php 
if(isset($_POST['daftar'])){
    $id_admin = $_POST['id_admin'];
    $username = $_POST['username'];

    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

    $nama_lengkap = $_POST['nama_lengkap'];
    $deskripsi = $_POST['deskripsi'];
    $level = $_POST['level'];
    
    $insertdata = "INSERT INTO admin (id_admin, username, password, nama_lengkap, deskripsi, level) 
            VALUES ('$id_admin','$username','$password','$nama_lengkap','$deskripsi','$level')";
    $sql23 = mysqli_query($mysqli, $insertdata);
    if($sql23){
        echo '<script>alert("Pendaftaran Berhasil!"); window.location="index.php"</script>';
    } else {
        echo '<script>alert("Pendaftaran Gagal!"); window.location="index.php"</script>';
    }
}

?>