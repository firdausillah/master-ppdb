  <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <?php $this->load->view('layout_front/_breadcrumbs'); ?>
      <!-- End Breadcrumbs -->

      <section id="team" class="team">
          <div class="container" data-aos="fade-up">

              <div class="section-title">
                  <!-- <h2>Team</h2> -->
                  <!-- <p>GURU DAN TENAGA KEPENDIDIKAN SMK PGRI PESANGGARAN.</p> -->
              </div>

              <div class="row">

                  <?php for ($i = 0; $i < 5; $i++) { ?>
                      <?php foreach ($osis as $dat) : ?>
                          <div class="col-md-4 mt-4 d-flex justify-content-center justify-content-md-between" data-aos="zoom-in" data-aos-delay="100">
                              <div class="card" style="width: 18rem;">
                                  <img src="<?= base_url('uploads/img/osis/' . $dat->foto); ?>" class="card-img-top" alt="<?= base_url('uploads/img/osis/' . $dat->foto); ?>">
                                  <div class="card-body">
                                      <h4 class="card-title text-uppercase"><?= $dat->nama ?></h4>
                                      <p class="card-text text-lowercase"><?= $dat->jurusan ?></p>
                                      <p class="card-text"><?= $dat->tahun_aktif ?></p>
                                  </div>
                              </div>
                          </div>
                  <?php endforeach;
                    } ?>

              </div>

          </div>
      </section>

  </main><!-- End #main -->