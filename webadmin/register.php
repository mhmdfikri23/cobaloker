<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>LOGIN | BERITA KITA</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="../dist/css/style.css">
</head>

<body>

  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

  <div id="login-page" style="padding-top:3pc;">
    <div class="container">

      <form class="form-login" method="POST" action="insertregister.php" ENCTYPE="multipart/form-data">
        <h2 class="form-login-heading"><center>DAFTAR ADMINISTRATOR BARU</center></h2>
        <div class="login-wrap">
          <a href="index.php">kembali</a>
          <br>
          <input type="number" class="form-control" name="id_admin" placeholder="ID Admin">
          <br>
          <input type="text" class="form-control" name="username" placeholder="Username">
          <br>
          <input type="password" class="form-control" name="password" placeholder="Password">
          <br>
          <input type="text" class="form-control" name="nama_lengkap" placeholder="Nama Lengkap">
          <!-- <br>
          <input type="file" class="form-control" name="foto" > -->
          <br>
          <input type="text" class="form-control" name="deskripsi" placeholder="Deskripsi Diri Anda">
          <br>
          <select name="level" class="form-control" >                     
                                <option value="admin">Admin</option>
                                <option value="user">Author</option>
          </select>
          <hr>
          <button class="btn btn-primary btn-block" name="daftar" type="submit"> SIGN UP</button>
          <br>
        </div>
      </form>

    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="assets/js/jquery.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>