  <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <?php $this->load->view('layout_front/_breadcrumbs'); ?>
      <!-- End Breadcrumbs -->

      <section id="team" class="team">
          <div class="container" data-aos="fade-up">

              <div class="section-title">
                  <!-- <h2>Team</h2> -->
                  <p>Keluarga besar Guru dan Tenaga Kependidikan SMK PGRI PESANGGARAN.</p>
              </div>

              <div class="row">

                <?php foreach($tendiks as $tendik):?>
                  <div class="col-lg-4 mt-4" data-aos="zoom-in" data-aos-delay="100">
                      <div class="member d-flex align-items-start">
                          <div class="pic"><img src="<?= base_url() ?>assets/front/img/team/team-1.jpg" class="img-fluid" alt=""></div>
                          <div class="member-info">
                              <h4><?= $tendik->nama_tendik ?></h4>
                              <span>Chief Executive Officer</span>
                              <p>Explicabo voluptatem mollitia et repellat qui dolorum quasi</p>
                          </div>
                      </div>
                  </div>
                <?php endforeach?>

              </div>

          </div>
      </section>

  </main><!-- End #main -->