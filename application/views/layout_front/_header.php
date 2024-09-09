    <!-- ======= Header ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center ">

            <img src="<?= base_url() ?>assets/front/img/logo.png" alt="" style="height: 70px;margin-right: 10px;" class="img-fluid">
            <h1 class="logo me-auto">
                <a href="index.html">
                    SMK PGRI </br> PESANGGARAN
                </a>
            </h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto"><img src="<?= base_url() ?>assets/front/img/logo.png" alt="" class="img-fluid"></a> -->

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link" href="<?= site_url('home'); ?>" name="home">Home</a></li>
                    <li class="dropdown"><a href="#" name="profile"><span>Profile</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="<?= site_url('profile/visi_misi'); ?>">Visi Misi</a></li>
                            <li><a href="<?= site_url('profile/organisasi'); ?>">Struktur Organisasi</a></li>
                            <li><a href="<?= site_url('profile/guru_tendik'); ?>">Guru dan Tenaga Kependidikan</a></li>
                            <li><a href="<?= site_url('profile/sarpras'); ?>">Sarana dan Prasarana</a></li>
                        </ul>
                    </li>

                    <li class="dropdown"><a href="#"><span>Kesiswaan</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li class="dropdown"><a href="" name="jurusan"><span>Jurusan</span> <i class="bi bi-chevron-down"></i></a>
                                <ul>
                                    <li><a href="<?= site_url('jurusan/teknik_sepeda_motor'); ?>">Teknik Sepeda Motor</a></li>
                                    <li><a href="<?= site_url('jurusan/teknik_alat_berat'); ?>">Teknik Alat Berat</a></li>
                                    <li><a href="<?= site_url('jurusan/agribisnis_pengolahan_hasil_pertanian'); ?>">Agribisnis Pengolahan Hasil Pertanian</a></li>
                                    <li><a href="<?= site_url('jurusan/manajemen_perkantoran_lembaga_bisnis'); ?>">Manajemen Perkantoran Lembaga Bisnis</a></li>
                                    <li><a href="<?= site_url('jurusan/akuntansi_dan_keuangan_lembaga'); ?>">Akuntansi dan Keuangan Lembaga</a></li>
                                    <li><a href="<?= site_url('jurusan/perhotelan'); ?>">Perhotelan</a></li>
                                </ul>
                            </li>
                            <li><a href="<?= site_url('profile/osis'); ?>">Osis</a></li>
                        </ul>
                    </li>
                    <li><a class="nav-link" href="<?= site_url('berita'); ?>" name="berita">Berita</a></li>
                    <!-- <li><a class="nav-link" href="https://www.instagram.com/smkgrisa/" target="_blank" name="galery">Galeri</a></li> -->
                    <li><a class="getstarted" href="<?= site_url('ppdb') ?>">PPDB</a></li>
                    <!-- <li><a class="getstarted" href="http://www.ppdb.smkpgripesanggaran.sch.id" target="_blank">PPDB</a></li> -->
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->