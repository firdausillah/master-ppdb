        <nav id="sidebar" class="sidebar">
            <div class="sidebar-content js-simplebar">
                <a class="sidebar-brand" href="<?= base_url() ?>assets/index.html">
                    <span class="align-middle">AdminKit</span>
                </a>

                <ul class="sidebar-nav">
                    <li class="sidebar-header">
                        Pages
                    </li>

                    <li class="sidebar-item <?= $this->uri->segment(2) == 'dashboard' ? 'active' : '' ?>">
                        <a class="sidebar-link" href="<?= base_url() ?>admin/dashboard">
                            <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
                        </a>
                    </li>

                </ul>

            </div>
        </nav>