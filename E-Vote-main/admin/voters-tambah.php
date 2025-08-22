<h3> Tambah Anggota </h3>

<form action="" method="POST">
<table>
    <tr>
        <td wight="130">Nama</td>
        <td><input type="text" name="name"></td>
    </tr>
    <tr>
        <td wight="130">Kelas dan jurusan</td>
        <td><input type="text" name="class"></td>
    </tr>
    <tr>
        <td>Username</td>
        <td><input type="text" name="Username"></td>
    </tr>
    <tr>
      <td></td>
      <td><input type="submit" value="Simpan" name="proses"></td>
    </tr>
</table>
</form>

<?php
include "koneksi.php";

if(isset($_POST['proses'])){
    $name = $_POST['name'];
    $class = $_POST['class'];
    $username = $_POST['username'];
    $queryTambah = mysqli_query($koneksi,"INSERT INTO `voters`(`name`, `class`, `Username`, `Password`, `ready`) VALUES ('$name','$class','$username','-','1')");

    if ($queryTambah) {

        echo "Data Tersimpan";
    }
}

?>