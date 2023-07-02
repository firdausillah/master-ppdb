    <!-- ======= banner Section ======= -->
    <div id="banner" class="d-flex align-items-center">

        <div class="container-fluid">
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <?php foreach ($banner as $key => $value) : ?>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="<?= $key ?>" <?= ($key == 0 ? "class='active' aria-current='true'" : '') ?> aria-label="Slide <?= $key ?>"></button>
                    <?php endforeach ?>
                </div>
                <div class="carousel-inner">
                    <?php foreach ($banner as $key => $value) : ?>
                        <div class="carousel-item<?= ($key == 0 ? " active" : '') ?>">
                            <img src="<?= base_url('uploads/img/banner/'.$value->foto) ?>" class="d-block w-100" alt="<?= $value->nama ?>">
                        </div>
                    <?php endforeach ?>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

    </div><!-- End banner -->