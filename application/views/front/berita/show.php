  <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <?php $this->load->view('layout_front/_breadcrumbs'); ?>
      <!-- End Breadcrumbs -->

      <section id="" class="">
          <div class="container" data-aos="fade-up">

              <div class="row text-center">
                  <div class="portfolio-details-slider swiper">
                      <div class="swiper-wrapper align-items-center">
                          <div class="swiper-slide">
                              <img src="<?= base_url('uploads/img/sarpras/' . @$berita_r->foto); ?>" alt="">
                          </div>
                      </div>
                  </div>
              </div>
              <div class="row d-flex justify-content-center mt-5">
                  <div class="col-lg-10">
                      <div class="portfolio-description">
                          <h2><?= @$berita_r->nama ?></h2>
                          <p>
                              <?= @$berita_r->keterangan ?>
                          </p>
                      </div>
                  </div>
              </div>

          </div>
      </section>
      <section class="section-bg">
          <div class="container text-center">
              <h2>Baca Berita Lainya</h2>
              <div class="row">
                  <div class="owl-carousel owl-5 owl-theme">
                      <?php foreach ($berita as $i => $val) : ?>
                          <div class="item imghvr-fade">
                              <img src="<?= base_url('uploads/img/sarpras/' . $val->foto); ?>" alt="Gambar" class="card-img-top">
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

  </main><!-- End #main -->