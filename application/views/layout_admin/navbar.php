            <nav class="navbar navbar-expand navbar-light navbar-bg">
                <a class="sidebar-toggle js-sidebar-toggle">
                    <i class="hamburger align-self-center"></i>
                </a>

                <div class="navbar-collapse collapse">
                    <ul class="navbar-nav navbar-align">
                        <li class="nav-item dropdown">
                            <a class="nav-icon pe-md-0 dropdown-toggle" href="#" data-bs-toggle="dropdown">
                                <i class="fa fa-gear"></i>

                            </a>
                            <div class="dropdown-menu dropdown-menu-end">
                                <a class="dropdown-item" href="<?= base_url('cetak/exportexcel') ?>">Export Excel</a>
                                <a class="dropdown-item" href="<?= base_url('admin/log_user') ?>">Log Aktifitas User</a>
                                <a class="dropdown-item" href="<?= base_url('auth/logout') ?>">Log out</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>