  <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <?php $this->load->view('layout_front/_breadcrumbs'); ?>
      <!-- End Breadcrumbs -->

      <section id="skills" class="skills">
          <div class="container" data-aos="fade-up">

              <div class="row">
                  <div class="col-lg-12 pt-4 pt-lg-0 content" data-aos="fade-left" data-aos-delay="100">
                      <table>
                          <th>
                          <td>nama</td>
                          <td>telfon</td>
                          <td>password</td>
                          </th>
                          <?php foreach ($siswa as $key => $value) : ?>
                              <tr>
                                  <td><?= $value->nama ?></td>
                                  <td><?= $value->nohp ?></td>
                                  <td><?= $value->password ?></td>
                              </tr>
                          <?php endforeach ?>
                      </table>
                  </div>
              </div>
              <div class="container">
                  <div class="row">
                      <div class="d-flex justify-content-center">
                          <?php echo $this->pagination->create_links(); ?>
                      </div>
                  </div>
              </div>

          </div>
      </section>

  </main><!-- End #main -->