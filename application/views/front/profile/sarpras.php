  <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <?php $this->load->view('layout_front/_breadcrumbs'); ?>
      <!-- End Breadcrumbs -->

      <section id="services" class="services">
          <div class="container" data-aos="fade-up">


              <div class="row">

                  <?php foreach ($sarpras as $i => $val) : ?>
                      <div class="col-xl-3 col-md-6 d-flex align-items-start mb-3" data-aos="zoom-in" data-aos-delay="100">
                          <div class="icon-box">
                              <div class="icon"><img src="<?= base_url('uploads/img/sarpras/' . $val->foto); ?>" class="img-fluid" alt=""></div>
                              <h5><?= $val->nama ?></h5>
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