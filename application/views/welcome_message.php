<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

	<link rel="shortcut icon" href="<?= base_url() ?>assets/img/icons/icon-48x48.png" />

	<title>Profile | AdminKit Demo</title>

	<link href="<?= base_url() ?>assets/css/app.css" rel="stylesheet">
	<link href="<?= base_url() ?>assets/css/style.css" rel="stylesheet">
	<link href="<?= base_url() ?>assets/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">

		<div class="main">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<div class="container">
					<a class="navbar-brand" href="#">Navbar</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item active">
								<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="#">Link</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
									Dropdown
								</a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">Action</a>
									<a class="dropdown-item" href="#">Another action</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Something else here</a>
								</div>
							</li>
							<li class="nav-item">
								<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
							</li>
						</ul>
					</div>
				</div>
			</nav>

			<section class="content">
				<div class="container pb-5">

					<div class="row">
						<div class="col-sm-8">
							<div class="card flex-fill">
								<div class="card-header">

									<h5 class="card-title mb-0">Latest Projects</h5>
								</div>
								<table class="table table-hover my-0">
									<thead>
										<tr>
											<th>Name</th>
											<th class="d-none d-xl-table-cell">Start Date</th>
											<th class="d-none d-xl-table-cell">End Date</th>
											<th>Status</th>
											<th class="d-none d-md-table-cell">Assignee</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Project Apollo</td>
											<td class="d-none d-xl-table-cell">01/01/2020</td>
											<td class="d-none d-xl-table-cell">31/06/2020</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">Vanessa Tucker</td>
										</tr>
										<tr>
											<td>Project Fireball</td>
											<td class="d-none d-xl-table-cell">01/01/2020</td>
											<td class="d-none d-xl-table-cell">31/06/2020</td>
											<td><span class="badge bg-danger">Cancelled</span></td>
											<td class="d-none d-md-table-cell">William Harris</td>
										</tr>
										<tr>
											<td>Project Hades</td>
											<td class="d-none d-xl-table-cell">01/01/2020</td>
											<td class="d-none d-xl-table-cell">31/06/2020</td>
											<td><span class="badge bg-success">Done</span></td>
											<td class="d-none d-md-table-cell">Sharon Lessman</td>
										</tr>
										<tr>
											<td>Project Nitro</td>
											<td class="d-none d-xl-table-cell">01/01/2020</td>
											<td class="d-none d-xl-table-cell">31/06/2020</td>
											<td><span class="badge bg-warning">In progress</span></td>
											<td class="d-none d-md-table-cell">Vanessa Tucker</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="card">
								<div class="card-body">
									<h5 class="card-title mb-0">Login - Siswa</h5>
									<div class="m-sm-4">
										<form>
											<div class="mb-3">
												<label class="form-label">Email</label>
												<input class="form-control form-control-lg" type="email" name="email" placeholder="Enter your email">
											</div>
											<div class="mb-3">
												<label class="form-label">Password</label>
												<input class="form-control form-control-lg" type="password" name="password" placeholder="Enter your password">
												<small>
													<a href="pages-reset-password.html">Forgot password?</a>
												</small>
											</div>
											<div>
												<label class="form-check">
													<input class="form-check-input" type="checkbox" value="remember-me" name="remember-me" checked="">
													<span class="form-check-label">
														Remember me next time
													</span>
												</label>
											</div>
											<div class="text-center mt-3">
												<a href="index.html" class="btn btn-lg btn-primary">Sign in</a>
												<!-- <button type="submit" class="btn btn-lg btn-primary">Sign in</button> -->
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</section>

			<section class="info">
				<div class="container py-5">
					<div class="row">
						<div class="col-sm-5 text-center">
							<img src="<?= base_url() ?>/assets/img/ilustration/5100169.jpg" height="300px" alt="">
						</div>
						<div class="col-sm-7">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque, nobis animi? Ab, veritatis culpa ad odit explicabo iste repudiandae. Nesciunt repudiandae necessitatibus, autem architecto reiciendis nihil maiores. Qui, eum harum! Vel praesentium temporibus vitae quas beatae tenetur recusandae! Culpa architecto quaerat facere minus. Vel optio odio magnam repudiandae, perferendis quod nobis quae inventore itaque molestiae minima sunt deleniti animi aliquid ullam. Error molestiae, delectus, accusamus totam hic id tempora quis libero, ipsa reprehenderit veritatis porro ducimus! Explicabo vero maiores iure error nam hic fugit, aliquid eum optio fugiat deserunt eveniet expedita quos praesentium ut dolorum qui soluta voluptatem laboriosam quibusdam.</p>
						</div>
					</div>
				</div>
			</section>

			<section class="alur">
				<div class="container py-5">
					<div class="row justify-content-center">
						<div class="col-sm-8">
							<div class="card">
								<div class="card-body">
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque cupiditate et dolore sapiente dolores nulla fugiat corporis molestias pariatur maiores quae blanditiis, quaerat deserunt obcaecati provident commodi libero. Nesciunt deserunt impedit obcaecati nemo exercitationem, ratione cum. Velit voluptatem assumenda amet fuga, molestias temporibus aliquid porro dignissimos quod impedit. Culpa totam vel veritatis ratione blanditiis, fugit dolor nesciunt ut aspernatur quia temporibus inventore rem saepe mollitia aliquam laborum omnis velit debitis laboriosam cumque soluta autem. Natus nisi dolorum vitae soluta expedita earum doloribus id perferendis sit deserunt quasi, consectetur numquam doloremque nostrum ex fugit! Veniam, labore? Ducimus doloremque iure porro vel?</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-left">
							<p class="mb-0">
								<a href="<?= base_url() ?>assets/index.html" class="text-muted"><strong>AdminKit Demo</strong></a> &copy;
							</p>
						</div>
						<div class="col-6 text-right">
							<ul class="list-inline">
								<li class="list-inline-item">
									<a class="text-muted" href="<?= base_url() ?>assets/#">Support</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="<?= base_url() ?>assets/#">Help Center</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="<?= base_url() ?>assets/#">Privacy</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="<?= base_url() ?>assets/#">Terms</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="<?= base_url() ?>assets/js/app.js"></script>
	<script src="<?= base_url() ?>assets/js/bootstrap.min.js"></script>

</body>

</html>