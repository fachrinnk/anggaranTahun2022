<?php
include('db.php');
session_start();
if (!isset($_SESSION['id_admin'])) {
    header("location: login-form.php");
}
$db = new Show();

$datas = $db->getTable("SELECT * FROM v_proker");

if (isset($_GET['agree'])) {
    $id = $_GET['agree'];
    $db->updateData("UPDATE proker SET isAcc = 1 WHERE kode_proker = '$id'");
    back();
}
if (isset($_GET['unagree'])) {
    $id = $_GET['unagree'];
    $db->updateData("UPDATE proker SET isAcc = 0 WHERE kode_proker = '$id'");
    back();
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" integrity="sha512-wR4oNhLBHf7smjy0K4oqzdWumd+r5/+6QO/vDda76MW5iug4PT7v86FoEkySIJft3XA0Ae6axhIvHrqwm793Nw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/vertical-layout-light/stylea124.css">
    <!-- endinject -->
    <!-- <link rel="shortcut icon" href="assets/img/logo/logo.png" /> -->

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
                        <img src="assets/img/logo/logo.png" alt="logo" class="text-success" width="600" />
                        <h2 class="text-success ms-2 my-auto">BORA</h2>
                        <h2 class="my-auto">Hae</h2>
                    </div>

                </a>
                <a class="navbar-brand brand-logo-mini" href="#">
                    <img src="assets/img/logo/logo.png" alt="logo" class="ps-1 pe-2" />
                </a>
            </div>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-top">
            <ul class="navbar-nav">
                <li class="nav-item font-weight-semibold d-block ms-0 mt-3">
                    <h1 class="welcome-text text-success">Selamat Datang, <span class="text-black fw-bold">admin</span></h1>

                </li>
            </ul>
            <ul class="navbar-nav ms-auto">

                <li class="nav-item dropdown d-none d-lg-block user-dropdown">
                    <a class="nav-link" id="UserDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                        <img class="img-xs rounded-circle" src="file/def.jpg" alt="Profile image"> </a>
                    <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                        <div class="dropdown-header text-center">
                            <img class="img-xs rounded-circle" src="file/def.jpg" alt="Profile image">
                            <p class="mb-1 mt-3 font-weight-semibold">admin</p>
                            <p class="fw-light text-muted mb-0">admin@gmail.com</p>
                        </div>

                        <a href="logout.php" class="dropdown-item"><i class="dropdown-item-icon mdi mdi-power text-success me-2"></i>Sign
                            Out</a>
                    </div>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-bs-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial -->
        <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Form Pengajuan Kegiatan</h4>
                    <p class="card-description">
                        <!-- <code>Rencana Kerja Dan Anggaran Tahunan</code> -->
                    </p>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>
                                        Nama
                                    </th>
                                    <th>
                                        NIM
                                    </th>
                                    <th>
                                        Nama Proker
                                    </th>
                                    <th>
                                        Tanggal Proker
                                    </th>
                                    <th>
                                        Anggaran
                                    </th>
                                    <th>
                                        Kode Kegiatan
                                    </th>
                                    <th>
                                        Nama Kegiatan
                                    </th>
                                    <th>
                                        File SPJ
                                    </th>
                                    <thead>
                                        ACC
                                        </th>
                                    </thead>
                            <tbody>
                                <form action="" method="get">
                                    <?php
                                    foreach ($datas as $data) :
                                    ?>
                                        <tr>
                                            <td>
                                                <?= $data['nama_pengaju_proker'] ?>
                                            </td>
                                            <td>
                                                <?= $data['nama_pengaju_proker'] ?>
                                            </td>
                                            <td>
                                                <?= $data['nama_proker'] ?>
                                            </td>
                                            <td>
                                                <?= $data['tgl_proker'] ?>
                                            </td>
                                            <td>
                                                <?= $data['anggaran_proker'] ?>
                                            </td>
                                            <td>
                                                <?= $data['kode_kegiatan'] ?>
                                            </td>
                                            <td>
                                                <?= $data['nama_kegiatan'] ?>
                                            </td>
                                            <td>
                                                <?= $data['file_spj'] ?>
                                            </td>
                                            <td>
                                                <?php
                                                $kode = $data['kode_proker'];
                                                echo ($data['isAcc'] == 1) ?
                                                    "<a href='?unagree=$kode' class='btn btn-light'
                      name='unagree'>unagree</a>"
                                                    :

                                                    "<a href='?agree=$kode' type='submit' class='btn btn-primary me-2' name='agree'>agree</a>"
                                                ?>
                                            </td>
                                        </tr>
                                    <?php
                                    endforeach;
                                    ?>
                                </form>
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer d-flex">
            <div class="d-flex">

                <span class="mt-auto mb-3">Copyright © 2022. All
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        $(function() {
            $('.sliderjq').slick({
                autoplay: true,
                rows: 3,
                slidesPerRow: 1,
                autoplaySpeed: 5000,
                slidesToScroll: 1,
                arrows: false
            });
        });
    </script>


    <script>
        var swiper = new Swiper(".mySwiper", {
            slidesPerView: 3,
            spaceBetween: 15,
            grabCursor: true,
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
                pauseOnMouseEnter: true,
            },
            slidesPerGroup: 1,
            loop: false,
            loopFillGroupWithBlank: true,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
            navigation: {
                nextE1: ".swiper-button-next",
                prevE1: ".swiper-button-prev",
            },
        });

        var swiper2 = new Swiper(".mySwiper2", {

            slidesPerView: 1,
            grid: {
                rows: 1
            },
            spaceBetween: 10,
            pagination: {
                el: ".swiper-pagination",
                clickable: true,
            },
        });


        // var swiper = new Swiper(".mySwiper2", {
        //     slidesPerView: 1,
        //     spaceBetween: 15,
        //     grabCursor: true,
        //     autoplay: {
        //         delay: 5000,
        //         disableOnInteraction: false,
        //         pauseOnMouseEnter: true,
        //     },
        //     slidesPerGroup: 1,
        //     loop: true,
        //     loopFillGroupWithBlank: true,
        //     pagination: {
        //         el: ".swiper-pagination",
        //         clickable: true,
        //     },
        //     navigation: {
        //         nextE1: ".swiper-button-next",
        //         prevE1: ".swiper-button-prev",
        //     },
        // });

        // var swiper2 = new Swiper(".mySwiper2", {
        //     direction: "vertical",
        //     slidesPerView: 3,
        //     pagination: {
        //         el: ".swiper-pagination",
        //         clickable: true,
        //     },
        // });
    </script>
    <!-- End custom js for this page-->
</body>

</html>