  <main id="main">

      <!-- ======= Breadcrumbs ======= -->
      <?php $this->load->view('layout_front/_breadcrumbs'); ?>
      <!-- End Breadcrumbs -->

      <section id="daftar" class="daftar">
          <div class="container" data-aos="fade-up">
              <div class="content">
                  <h3>Gelombang Pendaftaran</h3>
                  <p>
                      Silahkan Mendaftar Pada Gelombang yang <strong>Tersedia</strong>
                  </p>
              </div>
              <div class="row">
                  <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch  order-1 order-lg-1">
                      <div class="accordion-list">
                          <ul>
                              <?php foreach ($gelombangs as $key => $gelombang) : ?>
                                  <li class="shadow p-3 mb-5 bg-body rounded">
                                      <a data-bs-toggle="collapse" class="<?= $gelombang->status == 1 ? ' collapse' : ' collapsed' ?>" data-bs-target="#accordion-list-<?= $gelombang->gelombang ?>">Gelombang <?= $gelombang->gelombang ?><i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                                      <div id="accordion-list-<?= $gelombang->gelombang ?>" class="collapse<?= $gelombang->status == 1 ? ' show' : '' ?>" data-bs-parent=".accordion-list">
                                          <p>
                                              Gelombang <?= $gelombang->gelombang ?> dibuka tanggal <strong><?= $gelombang->tgl_buka ?></strong> dan berakhir pada tanggal <strong><?= $gelombang->tgl_tutup ?></strong>. Keuntungan mendaftar pada periode ini <?= $gelombang->benefit ?>
                                          </p>
                                          <?php if ($gelombang->status == 1) : ?>
                                              <a href="#" class="badge rounded-pill bg-blue-primary tombol-daftar" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-idgel="<?= $gelombang->id ?>">Daftar</a>
                                          <?php else : ?>
                                              <a href="#" aria-disabled="true" class="badge rounded-pill bg-blue-secondary disabled">Daftar</a>
                                          <?php endif ?>
                                          <!-- <a href="#" class="buy-btn">Get Started</a> -->
                                      </div>
                                  </li>
                              <?php endforeach ?>
                          </ul>
                      </div>
                  </div>
                  <div class="col-lg-5 order-1 order-lg-2 img d-flex align-items-start order-1 order-lg-1" data-aos="zoom-in" data-aos-delay="150">
                      <form action="<?= base_url('auth/login_siswa'); ?>" class="php-email-form" method="POST">
                          <h3>Login Siswa</h3>
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
      </section>

      <!-- <section class="daftar">
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
      </section> -->

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

  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
          <div class="modal-content">
              <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Form Pendaftaran Siswa Baru</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <?= form_open_multipart('home/save'); ?>
              <div class="modal-body">
                  <div class="mb-3">
                      <label class="form-label">Nama Lengkap</label>
                      <input type="text" name="nama" class="form-control" placeholder="Nama Lengkap" required>
                      <input type="hidden" id="id_gel" name="id_gel" required>
                  </div>
                  <div class="mb-3">
                      <label class="form-label">Nomor Telepon</label>
                      <input type="number" name="nohp" class="form-control" placeholder="Nomor Telepon" required>
                  </div>
                  <div class="mb-3">
                      <label class="form-label">Sekolah Asal</label>
                      <!-- <input type="text" name="sekolah_asal" class="form-control" placeholder="Asal Sekolah" required> -->
                      <select class="form-control" name="sekolah_asal" id="" required>
                          <option value="">Pilih Sekolah Asal</option>
                          <?php foreach ($asalsekolahs as $key => $asalsekolah) : ?>
                              <option value="<?= $asalsekolah->id ?>"><?= $asalsekolah->nama_asal_sekolah ?></option>
                          <?php endforeach ?>
                      </select>
                  </div>
                  <div class="mb-3">
                      <label class="form-label">Jurusan</label>
                      <select name="jurusan" id="jurusan" class="form-control" required>
                          <option value="">Pilih Jurusan</option>
                          <?php foreach ($jurusans as $key => $jurusan) : ?>
                              <option value="<?= $jurusan->id ?>"><?= $jurusan->jurusan ?></option>
                          <?php endforeach ?>
                      </select>
                  </div>
                  <div class="mb-3">
                      <label class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" placeholder="Password" required>
                  </div>
              </div>
              <div class="modal-footer">
                  <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-primary btn-sm">Daftar</button>
              </div>
              </form>
          </div>
      </div>
  </div>

  <?php if ($this->session->flashdata()) : ?>
      <div id="myModal" class="modal fade" role="dialog">
          <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content">
                  <div class="modal-body">
                      <?php if ($this->session->flashdata('success')) : ?>
                          <div class="text-center">
                              <img src="https://cdn.dribbble.com/users/251873/screenshots/9289747/media/6ddd0b400fbab6d5fa72d73df503f330.gif" height="250px" alt="">
                              <h3>Hai!, <?= $this->session->flashdata('success')['nama']; ?> </h3>
                              <h3>"AKUN ANDA BERHASIL DIBUAT"</h3>
                              <h5>silahkan login dengan menggunakan</h5>
                              <p>USERNAME : <b><?= $this->session->flashdata('success')['nohp']; ?></b></p>
                              <p>PASSWORD : <b><?= $this->session->flashdata('success')['password']; ?></b></p>
                              <h5>*MOHON DIINGAT JIKA PERLU SCREENSHOT</h5>
                          </div>
                      <?php elseif ($this->session->flashdata('error')) : ?>
                          <div class="text-center">
                              <img src="https://cdn.dribbble.com/users/251873/screenshots/9288094/media/a1c2f89065f68e1b2b5dcb66bdb9beb1.gif" height="250px" alt="">
                              <h3><?= $this->session->flashdata('error'); ?> </h3>
                          </div>
                      <?php endif ?>
                  </div>
              </div>
          </div>
      </div>
  <?php endif ?>