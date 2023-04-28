  <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <?php $this->load->view('layout_front/_breadcrumbs'); ?>
      <!-- End Breadcrumbs -->

      <section id="" class="">
          <div class="container" data-aos="fade-up">

              <div class="row">
                  <?php foreach ($berita as $i => $val) : ?>
                      <div class="col-lg-4 col-md-6 col-12">
                          <div class="card mb-4 imghvr-fade shadow p-3 mb-5 bg-body rounded">
                              <img src="<?= base_url('uploads/img/sarpras/' . $val->foto); ?>" class="card-img-top" alt="...">
                              <div class="card-body text-dark">
                                  <h4 class="card-title"><?= substr($val->nama, 0, 20); ?></h4>
                                  <small><?= timespan(strtotime($val->created_on), strtotime(date("Y-m-d H:i:s")), 2); ?> Ago</small>
                              </div>
                              <a href="<?= site_url('berita/show/'.$val->slug); ?>">
                                  <figcaption>
                                      <h3 class="text-dark"><?= $val->nama ?></h3>
                                      <p class="text-dark"><?= substr($val->keterangan, 0, 100); ?></p>
                                  </figcaption>
                              </a>
                          </div>
                      </div>
                  <?php endforeach ?>
              </div>

          </div>
      </section>
      <div class="container">
          <div class="row">
              <div class="d-flex justify-content-center">
                  <?php echo $this->pagination->create_links(); ?>
              </div>
          </div>
      </div>

  </main><!-- End #main -->