<?php if($berita): ?>
    <section class="section-bg">
        <div class="container text-center">
            <h2>Baca Berita Lainya</h2>
            <div class="row">
                <div class="owl-carousel owl-5 owl-theme">
                    <?php foreach ($berita as $i => $val) : ?>
                        <div class="item imghvr-fade">
                            <img src="<?= base_url('uploads/img/berita/' . $val->foto); ?>" alt="Gambar" class="card-img-top">
                            <a href="<?= site_url('berita/show/' . $val->slug); ?>">
                                <figcaption>
                                    <h4 class="text-dark"><?= $val->nama ?></h4>
                                </figcaption>
                            </a>
                        </div>
                    <?php endforeach ?>
                </div>
            </div>
        </div>
    </section>
<?php endif ?>