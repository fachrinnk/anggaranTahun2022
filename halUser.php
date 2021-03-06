<?php
include('db.php');
session_start();
if (!isset($_SESSION['id_user'])) {
  header("location: login-form.php");
}
$db = new Show();
$name = $db->getName($_SESSION['id_user']);
$datasspj = $db->getTable("SELECT * FROM spj");
if (isset($_POST['submit'])) {
  $nama = $_POST['nama'];
  $nim = $_POST['nim'];
  $proker = $_POST['proker'];
  $tanggal = $_POST['tanggal'];
  $anggaran = $_POST['anggaran'];
  $kegiatan = $_POST['kegiatan'];
  $spj = $_POST['spj']; //[array]
  $namaFile = $db->upload();
  if ($namaFile != false) {
    $db->saveManyData("INSERT INTO proker VALUES('', '$proker','$nim','$nama','$tanggal','$anggaran','$namaFile','$kegiatan', '0')");
    $data = $db->getTable("SELECT max(kode_proker) from proker");
    $data = $data[0]['max(kode_proker)'];
    foreach ($spj as $item) {
      $db->saveManyData("INSERT INTO proker_spj VALUES('', '$data','$item')");
    }
    echo "<script>alert('data berhasil ditambahkan')</script>";
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>BORAHae</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/feather/feather.css">
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="vendors/typicons/typicons.css">
  <link rel="stylesheet" href="vendors/simple-line-icons/css/simple-line-icons.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css"
    integrity="sha512-wR4oNhLBHf7smjy0K4oqzdWumd+r5/+6QO/vDda76MW5iug4PT7v86FoEkySIJft3XA0Ae6axhIvHrqwm793Nw=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="js/select.dataTables.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/vertical-layout-light/stylea124.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="assets/img/favicon.png" />

</head>

<body>

  <!-- partial:partials/_navbar.html -->
  <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex align-items-top flex-row">
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
      <div class="me-3">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-bs-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
      </div>
      <div>
        <a class="navbar-brand brand-logo" href="#">
          <div class="d-flex">
            <!-- <img src="assets/img/logo/logo.png" alt="logo" class="text-success" width="600" /> -->
            <!-- <h2 class="text-success ms-2 my-auto"></h2> -->
            <h2 class="my-auto">BORAHae</h2>
          </div>

        </a>
        <!-- <a class="navbar-brand brand-logo-mini" href="#">
                    <img src="assets/img/logo/logo.png" alt="logo" class="ps-1 pe-2" />
                </a> -->
      </div>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-top">
      <ul class="navbar-nav">
        <li class="nav-item font-weight-semibold d-block ms-0 mt-3">
          <h1 class="welcome-text text-success">Selamat Datang, <span
              class="text-black fw-bold"><?= $name[0]['username'] ?></span></h1>

        </li>
      </ul>
      <ul class="navbar-nav ms-auto">
        <li class="nav-item d-none d-lg-block">
          <div id="datepicker-popup" class="input-group date datepicker navbar-date-picker">
            <span class="input-group-addon input-group-prepend border-right">
              <span class="icon-calendar input-group-text calendar-icon"></span>
            </span>
            <input type="text" class="form-control">
          </div>
        </li>
        <!-- <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown button
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </div> -->


        <li class="nav-item dropdown d-none d-lg-block user-dropdown">
          <a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
            <img class="img-xs rounded-circle" src="file/def.jpg" alt="Profile image"> </a>
          <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
            <div class="dropdown-header text-center">
              <img class="img-xs rounded-circle" src="file/def.jpg" alt="Profile image">
              <p class="mb-1 mt-3 font-weight-semibold"><?= $_SESSION['username'] ?></p>
              <p class="fw-light text-muted mb-0"><?= $_SESSION['email'] ?></p>
            </div>

            <a href="logout.php" class="dropdown-item"><i
                class="dropdown-item-icon mdi mdi-power text-success me-2"></i>Sign
              Out</a>
          </div>
        </li>
      </ul>
      <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
        data-bs-toggle="offcanvas">
        <span class="mdi mdi-menu"></span>
      </button>
    </div>
  </nav>
  <!-- partial -->
  <div class="container-fluid page-body-wrapper">


    <!-- partial -->
    <!-- partial:partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
      <ul class="nav">
        <li class="nav-item">
          <a class="nav-link" href="halUser.php">
            <i class="mdi mdi-grid-large menu-icon text-success"></i>
            <span class="menu-title">Dashboard</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="rkat.php">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">RKAT</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="sbu.php">
            <i class="mdi mdi-grid-large menu-icon text-success"></i>
            <span class="menu-title">SBU</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="iku.php">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">IKU</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="ikt.php">
            <i class="mdi mdi-grid-large menu-icon text-success"></i>
            <span class="menu-title">IKT</span>
          </a>
        </li>

        <li class="nav-item">
          <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
            <i class="menu-icon mdi mdi-floor-plan"></i>
            <span class="menu-title">Kegiatan</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="ui-basic">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="kegiatan.php">Kegiatan</a></li>
              <li class="nav-item"> <a class="nav-link" href="kegiatan_mak.php">Mata Anggaran Kegiatan</a></li>
              <li class="nav-item"> <a class="nav-link" href="kegiatan_ik.php">Indikator Kinerja</a></li>
            </ul>
          </div>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="dayaserap.php">
            <i class="mdi mdi-grid-large menu-icon text-success"></i>
            <span class="menu-title">Daya Serap</span>
          </a>
        </li>

      </ul>
    </nav>
    <!-- partial -->
    <div class="main-panel">
      <div class="content-wrapper" width="1000px">
        <div class="row" width="900px">
          <div class="col-md-6 grid-margin stretch-card" width="1000px" <center>>
            <div class="card" width="900px">
              <div class="card-body" width="900px">
                <h4 class="card-title">Form Pengajuan Kegiatan</h4>
                <!-- <p class="card-description">
                                    Basic form layout
                                </p> -->
                <form class="forms-sample" method="post" action="" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="nama" class="form-control" id="nama" name="nama">
                  </div>
                  <div class="form-group">
                    <label for="nim">NIM</label>
                    <input type="nim" class="form-control" id="nim" name="nim">
                  </div>
                  <div class="form-group">
                    <label for="proker">Nama Proker</label>
                    <input type="proker" class="form-control" id="proker" name="proker">
                  </div>
                  <div class="form-group">
                    <label for="tanggal">Tanggal Proker</label>
                    <input type="date" class="form-control" id="tanggal" name="tanggal">
                  </div>
                  <div class="form-group">
                    <label for="anggaran">Anggaran</label>
                    <input type="anggaran" class="form-control" id="anggaran" name="anggaran">
                  </div>
                  <div class="form-group">
                    <label for="kegiatan">Kegiatan</label>
                    <select name="kegiatan" id="kegiatan" class="form-control">
                      <?php
                      $datas = $db->getTable("SELECT * FROM kegiatan");
                      foreach ($datas as $data) : ?>

                      <option class="option" value="<?= $data['kode_kegiatan'] ?>"><?= $data['nama_kegiatan'] ?>
                      </option>

                      <?php endforeach ?>
                    </select>
                  </div>
                  <div class="form-group">
                    <p>File SPJ Yang ingin diupload</p>
                    <?php
                    $datas = $db->getTable("SELECT * FROM spj");
                    foreach ($datas as $index => $data) : ?>
                    <input type="checkbox" class="btn-check" id="btncheck<?= $index + 1 ?>" autocomplete="off"
                      value="<?= $data['kode_spj'] ?>" name="spj[]">
                    <label class="btn btn-outline-primary"
                      for="btncheck<?= $index + 1 ?>"><?= $data['nama_spj'] ?></label>
                    <?php endforeach ?>
                  </div>
                  <div class="form-group">
                    <label for="file">File SPJ</label>
                    <input type="file" class="form-control" id="file" name="spj-file">
                  </div>
                  <button type="submit" class="btn btn-primary me-2" name="submit">Submit</button>
                  <button class="btn btn-light">Cancel</button>
                </form>
              </div>
            </div>
            </center>
          </div>

          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer d-flex">
            <div class="d-flex">

              <span class="mt-auto mb-3">Copyright ?? 2022. All
                rights
                reserved.</span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js">
    < /> <
    script src = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity = "sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin = "anonymous" >
    </script>
    <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <!-- plugins:js -->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="vendors/chart.js/Chart.min.js"></script>
    <script src="vendors/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <script src="vendors/progressbar.js/progressbar.min.js"></script>

    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/hoverable-collapse.js"></script>
    <script src="js/template.js"></script>
    <script src="js/settings.js"></script>
    <script src="js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <!-- -->
    <script src="js/dashboard.js"></script>
    <script src="js/Chart.roundedBarCharts.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"
      integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg=="
      crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
    $(function() {
      $('.sliderjq').slick({
        autoplay: false,
        rows: 3,
        infinite: false,
        slidesPerRow: 1,
        autoplaySpeed: 5000,
        slidesToScroll: 1,
        arrows: false
      });
    });
    </script>
</body>

</html>