<!doctype html>
<html lang="en">

<head>
<center><img src="assets\img\logosis.png" width="25%" height="35%"></center>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <?php include 'assets/header.php' ?>

  <title>Login Form</title>
  <style>
    body {
      font-family: 'Helvetica', sans-serif;
      background: linear-gradient(to bottom, #5a72ff, #b54cff);
      width: 98%;
      height: 110vh;
    }
  </style>
</head>
<body>
  

  <div class="container">
    <div class="row justify-content-center"> 
      <div class="col-md-6 col-lg-5">
        <div class="card mt-6">
          <div class="card-body">
            <h3 class="card-title text-center mb-4">Login Form</h3> 
            
            <form method="POST">
              <div class="form-group">
                <label for="nisn">USERNAME</label>
                <input type="text" class="form-control" name="nisn" id="nisn" placeholder="Enter Username">
              </div>
              <br>
              <!-- <div class="form-group">
                <label for="password">PASSWORD</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Enter password">
              </div> -->
              <br>
              <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" name="remember-me" id="remember-me">
                <label class="form-check-label" for="remember-me">Remember me</label>
              </div>
              <button type="submit" class="btn btn-primary btn-block mt-4" name="submit">Login</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php
session_start();
include 'koneksi.php';

if (isset($_POST['submit'])) {
    $nisn = $_POST['nisn'];

    $result = mysqli_query($conn, "SELECT * FROM voters WHERE Username = '$nisn'");
    if (mysqli_num_rows($result) === 1) {
        // Redirect sebelum ada output
        $_SESSION['authenticated'] = true;
        $_SESSION['nisn'] = $nisn;
        header('Location: index.php');
        exit;
    } else {
        echo "<script>
            swal('Wrong Nisn / Password!!', 'Masukan Username dan Password dengan benar!!', 'error');
            </script>";
    }
}

include 'assets/footer.php';
?>
</body>

</html>
