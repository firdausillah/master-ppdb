<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>SMK GRISA | <?= $title ? $title : 'Judul Page' ?></title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?= base_url() ?>assets/front/img/favicon.png" rel="icon">
  <link href="<?= base_url() ?>assets/front/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?= base_url() ?>assets/front/vendor/aos/aos.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?= base_url() ?>assets/front/css/imagehover.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/css/style.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/css/mystyle.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/css/owl.carousel.min.css" rel="stylesheet">
  <link href="<?= base_url() ?>assets/front/css/owl.theme.default.min.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Arsha
  * Updated: Mar 10 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body class="canvas-menu">

  <?php $this->load->view('layout_front/_header') ?>

  <!-- sweetalert -->
  <div class="flash-data" data-flashdata="<?= $this->session->flashdata('flash') ?>"></div>
  <?php $this->load->view($content) ?>


  <?php $this->load->view('layout_front/_footer') ?>
  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="<?= base_url() ?>assets/js/jquery.min.js"></script>
  <script src="<?= base_url() ?>assets/front/vendor/aos/aos.js"></script>
  <script src="<?= base_url() ?>assets/front/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="<?= base_url() ?>assets/front/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="<?= base_url() ?>assets/front/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="<?= base_url() ?>assets/front/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="<?= base_url() ?>assets/front/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="<?= base_url() ?>assets/front/js/owl.carousel.min.js"></script>
  <!-- <script src="<?= base_url() ?>assets/front/vendor/php-email-form/validate.js"></script> -->

  <!-- Template Main JS File -->
  <script src="<?= base_url() ?>assets/front/js/main.js"></script>
  <script>
    $(document).ready(function() {
      $('#myModal').modal('show');
    });
  </script>
  <script>
    $(document).ready(function() {
      $('.owl-1').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        responsive: {
          0: {
            items: 1
          },
          600: {
            items: 1
          },
          1000: {
            items: 1
          }
        }
      })
      $('.owl-5').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        responsive: {
          0: {
            items: 1
          },
          600: {
            items: 3
          },
          1000: {
            items: 5
          }
        }
      })
    });
  </script>

</body>

</html>