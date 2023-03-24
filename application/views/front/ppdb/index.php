  <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <?php $this->load->view('layout_front/_breadcrumbs'); ?>
      <!-- End Breadcrumbs -->

      <section class="daftar">
          <div class="container">

              <div class="row">
                  <div class="col-sm-8">
                      <div class="card flex-fill">
                          <div class="card-header">

                              <h5 class="card-title mb-0">Gelombang Tersedia</h5>
                          </div>
                          <table class="table table-striped my-0" height="305px">
                              <thead>
                                  <tr>
                                      <th class="text-dark-blue">Gelombang</th>
                                      <th class="d-none d-xl-table-cell text-dark-blue">Tanggal Dibuka</th>
                                      <th class="d-none d-xl-table-cell text-dark-blue">Tanggal Ditutup</th>
                                      <th class="d-none d-xl-table-cell text-dark-blue">Status</th>
                                      <th class="text-dark-blue">Aksi</th>
                                  </tr>
                              </thead>
                              <tbody>
                                  <?php foreach ($gelombangs as $key => $gelombang) : ?>
                                      <tr>
                                          <td>Gelombang <?= $gelombang->gelombang ?></td>
                                          <td class="d-none d-xl-table-cell"><?= $gelombang->tgl_buka ?></td>
                                          <td class="d-none d-xl-table-cell"><?= $gelombang->tgl_tutup ?></td>
                                          <td class="d-none d-xl-table-cell"><?= $gelombang->status == 1 ? '<span class="badge bg-success"> Dibuka </span>' : '<span class="badge bg-danger"> Ditutup </span>' ?></td>
                                          <td>
                                              <?php if ($gelombang->status == 1) : ?>
                                                  <a href="" class="btn btn-primary btn-sm tombol-daftar" data-toggle="modal" data-target="#exampleModal" data-idgel="<?= $gelombang->id ?>">Daftar</a>
                                              <?php else : ?>
                                                  <a href="" aria-disabled="true" class="btn btn-secondary btn-sm disabled">Daftar</a>
                                              <?php endif ?>
                                          </td>
                                      </tr>
                                  <?php endforeach ?>
                              </tbody>
                          </table>
                      </div>
                  </div>
                  <div class="col-sm-4">
                      <div class="card">
                          <div class="card-header">
                              <h5 class="card-title mb-0">Login - Siswa</h5>
                          </div>
                          <div class="card-body">
                              <div class="m-sm-4">
                                  <form action="<?= base_url('auth/login_siswa'); ?>" method="POST">
                                      <div class="mb-4">
                                          <label class="form-label">Nomor Telepon</label>
                                          <input class="form-control" type="number" name="nohp" placeholder="contoh. 086786576568">
                                      </div>
                                      <div class="mb-4">
                                          <label class="form-label">Password</label>
                                          <input class="form-control" type="password" name="password" placeholder="Masukan password">
                                      </div>
                                      <div class="text-center mt-4">
                                          <button type="submit" class="btn btn-md btn-primary">Login</button>
                                      </div>
                                  </form>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>

          </div>
      </section>

      <svg xmlns="http://www.w3.org/2000/svg" class="d-none d-lg-block d-md-none" style="margin-top: -250px; margin-bottom: -100px;" viewBox="0 0 1440 320">
          <path fill="#f3f5fa" fill-opacity="1" d="M0,96L80,112C160,128,320,160,480,154.7C640,149,800,107,960,101.3C1120,96,1280,128,1360,144L1440,160L1440,320L1360,320C1280,320,1120,320,960,320C800,320,640,320,480,320C320,320,160,320,80,320L0,320Z"></path>
      </svg>
      <section id="info" class="info">
          <div class="container py-5">
              <div class="row">
                  <div class="col-md-5 text-center mb-4">
                      <img src="<?= base_url() ?>/assets/img/ilustration/5100169.jpg" height="300px" alt="" class="shadow-md rounded img-fluid">
                  </div>
                  <div class="col-md-7">
                      <h3 class="text-dark-blue text-center pb-3">Pesyaratan Pendaftaran</h3>
                      <div class="row mt-3">
                          <?php foreach ($persyaratans as $key => $value) : ?>
                              <div class="col-md-6">
                                  <div class="card mb-5">
                                      <div class="card-body text-center">
                                          <h5 class="text-blue"><?= $value->persyaratan ?></h5>
                                      </div>
                                  </div>
                              </div>
                          <?php endforeach ?>
                      </div>
                  </div>
              </div>
          </div>
      </section>
      <svg xmlns="http://www.w3.org/2000/svg" class="d-none d-lg-block d-md-none" style="margin-top: -50px; margin-bottom: -150px;" viewBox="0 0 1440 320">
          <path fill="#f3f5fa" fill-opacity="1" d="M0,96L80,112C160,128,320,160,480,154.7C640,149,800,107,960,101.3C1120,96,1280,128,1360,144L1440,160L1440,0L1360,0C1280,0,1120,0,960,0C800,0,640,0,480,0C320,0,160,0,80,0L0,0Z"></path>
      </svg>

      <section id="alur" class="alur">
          <div class="container py-5">
              <div class="row justify-content-center">
                  <div class="col-sm-8">
                      <div class="card">
                          <div class="card-body">
                              <img src="<?= base_url('assets/img/alur.jpg') ?>" class="img-fluid" alt="">
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </section>

  </main><!-- End #main -->