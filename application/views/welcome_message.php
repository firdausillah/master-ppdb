<!doctype html>
<html lang="en">

<head>
	<title>Dashboard | Klorofil - Free Bootstrap Dashboard Template</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="<?= base_url() ?>assets/vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="<?= base_url() ?>assets/css/style.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="<?= base_url() ?>assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="<?= base_url() ?>assets/img/favicon.png">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-dark navbar-fixed-top">
			<div class="container">
				<div class="brand">
					<a href="index.html"><img src="<?= base_url() ?>assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
				</div>
				<div class="container-fluid">
					<div id="navbar-menu">
						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>Help</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#">Basic Use</a></li>
									<li><a href="#">Working With Data</a></li>
									<li><a href="#">Security</a></li>
									<li><a href="#">Troubleshooting</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="<?= base_url() ?>assets/img/user.png" class="img-circle" alt="Avatar"> <span>Samuel</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
									<li><a href="#"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>
									<li><a href="#"><i class="lnr lnr-cog"></i> <span>Settings</span></a></li>
									<li><a href="#"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- MAIN -->
		<div class="main main-front">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container">
					<div class="row">
						<div class="col-md-8">
							<!-- RECENT PURCHASES -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Recent Purchases</h3>
									<!-- <div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div> -->
								</div>
								<div class="panel-body no-padding">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Order No.</th>
												<th>Name</th>
												<th>Amount</th>
												<th>Date &amp; Time</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="#">763648</a></td>
												<td>Steve</td>
												<td>$122</td>
												<td>Oct 21, 2016</td>
												<td><span class="label label-success">COMPLETED</span></td>
											</tr>
											<tr>
												<td><a href="#">763649</a></td>
												<td>Amber</td>
												<td>$62</td>
												<td>Oct 21, 2016</td>
												<td><span class="label label-warning">PENDING</span></td>
											</tr>
											<tr>
												<td><a href="#">763650</a></td>
												<td>Michael</td>
												<td>$34</td>
												<td>Oct 18, 2016</td>
												<td><span class="label label-danger">FAILED</span></td>
											</tr>
											<tr>
												<td><a href="#">763651</a></td>
												<td>Roger</td>
												<td>$186</td>
												<td>Oct 17, 2016</td>
												<td><span class="label label-success">SUCCESS</span></td>
											</tr>
											<tr>
												<td><a href="#">763652</a></td>
												<td>Smith</td>
												<td>$362</td>
												<td>Oct 16, 2016</td>
												<td><span class="label label-success">SUCCESS</span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<!-- END RECENT PURCHASES -->
						</div>
						<div class="col-md-4">
							<!-- MULTI CHARTS -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Login</h3>
									<!-- <div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div> -->
								</div>
								<div class="panel-body">
									<div class="content">
										<div class="header">
											<!-- <div class="logo text-center"><img src="assets/img/logo-dark.png" alt="Klorofil Logo"></div>
											<p class="lead">Login to your account</p> -->
										</div>
										<form class="form-auth-small" action="index.php">
											<div class="form-group m-30">
												<label for="signin-email" class="control-label sr-only">Email</label>
												<input type="email" class="form-control" id="signin-email" value="samuel.gold@domain.com" placeholder="Email">
											</div>
											<div class="form-group m-30">
												<label for="signin-password" class="control-label sr-only">Password</label>
												<input type="password" class="form-control" id="signin-password" value="thisisthepassword" placeholder="Password">
											</div>
											<div class="form-group m-30 clearfix">
												<label class="fancy-checkbox element-left">
													<input type="checkbox">
													<span>Remember me</span>
												</label>
											</div>
											<button type="submit" class="btn btn-primary btn-lg btn-block">LOGIN</button>
										</form>
									</div>
								</div>
							</div>
							<!-- END MULTI CHARTS -->
						</div>
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="info">
			<div class="container p-80">
				<div class="row">
					<div class="col-sm-4 justify-content-center">
						<img src="<?= base_url() ?>assets/img/5100169.jpg" class="img-rounded" height="300px" alt="">
					</div>
					<div class="col-sm-8">
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores ipsa vel, deserunt maxime tempore ipsum sapiente, odio harum error aperiam architecto cumque iusto minus obcaecati sit officia recusandae explicabo hic eius excepturi incidunt. Totam tempore quia suscipit sint corrupti animi eveniet ut placeat maxime beatae voluptate dolorum consectetur in eos repellat aut vero enim saepe culpa obcaecati dolores laboriosam voluptas, exercitationem ab. Explicabo modi fugit dolore perferendis deserunt voluptates, repellendus praesentium officiis in reiciendis cupiditate fuga eos laudantium earum, minus magnam a distinctio nobis tenetur accusantium rerum. Alias excepturi accusantium velit iure, magni optio consectetur sit doloremque, laborum ipsum perspiciatis.</p>
					</div>
				</div>
			</div>
		</div>
		<div class="alur">
			<div class="container p-80">
				<div class="row d-flex justify-content-center">
					<div class="col-sm-8">
						<div class="panel">
							<div class="panel-body">
								<p>
									Lorem ipsum dolor sit amet consectetur, adipisicing elit. Veritatis sint, culpa doloribus distinctio in eaque, sit iure debitis velit obcaecati officiis? Quis, error alias? Maiores earum doloremque dolores accusantium provident necessitatibus praesentium optio, laborum veniam pariatur officia ducimus dignissimos libero, quam porro commodi ipsam qui sit minus vero corrupti. Illo cupiditate odio saepe, officia est perferendis sed repellendus dolores earum, culpa vel quo blanditiis. Odit, cum. Veritatis dolor quae quaerat ipsa consequuntur dignissimos fugiat placeat quasi, cum, sit ducimus quam. Impedit vitae dolor reiciendis adipisci similique facere doloremque praesentium neque sapiente totam consequuntur, omnis odit dignissimos. Eos obcaecati temporibus libero.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>
				</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="<?= base_url() ?>assets/vendor/jquery/jquery.min.js"></script>
	<script src="<?= base_url() ?>assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="<?= base_url() ?>assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<?= base_url() ?>assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="<?= base_url() ?>assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="<?= base_url() ?>assets/scripts/klorofil-common.js"></script>
</body>

</html>