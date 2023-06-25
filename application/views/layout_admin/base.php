<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
    <meta name="author" content="AdminKit">
    <meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

    <link rel="shortcut icon" href="<?= base_url() ?>assets/img/icons/icon-48x48.png" />

    <title>Admin | <?= @$title ? $title : "Judul Page" ?></title>

    <!-- <link href="<?= base_url() ?>assets/css/app.css" rel="stylesheet"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="<?= base_url() ?>assets/css/app2.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/css/dataTables.min.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/css/cropper.css" rel="stylesheet">
    <link href="<?= base_url() ?>assets/css/mystyle.css" rel="stylesheet">
</head>

<body class="canvas-menu">
    <div class="wrapper">
        <?php $this->load->view('layout_admin/sidebar') ?>

        <div class="main">
            <?php $this->load->view('layout_admin/navbar') ?>

            <main class="content">
                <!-- sweetalert -->
                <div class="flash-data" data-flashdata="<?= $this->session->flashdata('flash') ?>"></div>
                <?php $this->load->view($content) ?>
            </main>

            <footer class="footer">
                <div class="container-fluid">
                    <div class="row text-muted">
                        <div class="col-6 text-left">
                            <p class="mb-0">
                                <a href="<?= base_url() ?>assets/index.html" class="text-muted"><strong>AdminKit Demo</strong></a> &copy;
                            </p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>

    <script src="<?= base_url() ?>assets/js/jquery.js"></script>
    <script src="<?= base_url() ?>assets/js/dataTables.min.js"></script>
    <!-- <script src="<?= base_url() ?>assets/js/app.js"></script> -->
    <script src="<?= base_url() ?>assets/js/app2.js"></script>
    <script src="<?= base_url() ?>assets/js/sweetalert2.all.min.js"></script>
    <script src="<?= base_url() ?>assets/js/myScript.js"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/38.0.1/classic/ckeditor.js"></script>
    <?php @$cropper ? $this->load->view($cropper) : "" ?>
    <script>
        ClassicEditor
            .create(document.querySelector('#editor'))
            .then(editor => {
                console.log(editor);
            })
            .catch(error => {
                console.error(error);
            });
    </script>
</body>

</html>