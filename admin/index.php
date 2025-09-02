<?php
session_start();
include '../assets/conn.php';

if (!isset($_SESSION['username'])) {
  header('Location: logad.php');
}
?>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <?php include '../assets/header.php'; ?>
  </head>

  <body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.php">E-Vote Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
          aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ms-auto">
            <li class="nav-tem">
              <a class="nav-link" href="index.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="results.php">Vote Results</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../logout.php">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <br><br><br>
    <center>
      <h1>Welcome Admin</h1>
    </center>
    <center>
      <h3>Anggota</h3>
    </center>

      <center>
        <table border="5" style="width: 70%; height: 10px">
          <tr>
            <th>No</th>
            <th>Nama</th>
            <th>Kelas</th>
            <th>Username</th>
          </tr>
          <?php
          include "koneksi.php";
          $no = 1;
          $ambildata = mysqli_query($koneksi, "select * from voters");
          while ($tampil = mysqli_fetch_array($ambildata)) {
            echo "
                <tr>
                  <td>$no</td>
                  <td>$tampil[name]</td>
                  <td>$tampil[class]</td>
                  <td>$tampil[Username]</td>
                </tr>";

            $no++;
          }
          ?>
        </table>

        <h3> Tambah Anggota </h3>

        <form action="" method="post">
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
              <td wight="130">Username</td>
              <td><input type="text" name="username"></td>
            </tr>
            <tr>
              <td></td>
              <td><input type="submit" value="Simpan" name="proses"></td>
            </tr>
          </table>
        </form>

        <?php
        include "koneksi.php";

        if (isset($_POST['proses'])) {
          $name = $_POST['name'];
          $class = $_POST['class'];
          $username = $_POST['username'];
          $queryTambah = mysqli_query($koneksi,"INSERT INTO `voters`(`name`, `class`, `Username`, `Password`, `ready`) VALUES ('$name','$class','$username','-','0')");

          if ($queryTambah) {
              echo "Data Tersimpan";
              ?>
              <meta http-equiv="refresh" content="0.2">
              <?php
          }
        }
        ?>

      </center>


      <!-- Bootstrap JS -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.0/js/bootstrap.bundle.min.js"></script>
      </div>
      <?php include '../assets/footer.php'; ?>
  </body>

</html>
