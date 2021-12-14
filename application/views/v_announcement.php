<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

	<title>Pengumuman Penerimaan Santri Baru - PP Walisongo Ngabar</title>
	<meta content="" name="description">
	<meta content="" name="keywords">

	<!-- Favicons -->
	<link href="/pengumuman/assets/images/icon-ppws.png" rel="icon">
	<link href="/pengumuman/assets/images/icon-ppws.png" rel="apple-touch-icon">

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

	<!-- Vendor CSS Files -->
	<link href="/pengumuman/assets/vendor/aos/aos.css" rel="stylesheet">
	<link href="/pengumuman/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="/pengumuman/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	<link href="/pengumuman/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
	<link href="/pengumuman/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	<link href="/pengumuman/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
	<link href="/pengumuman/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

	<!-- Template Main CSS File -->
	<link href="/pengumuman/assets/css/style.css" rel="stylesheet">
	<style>
		.button-block {
			display: block;
			width: 100%;
		}
		.error-active {
			border-color: #dc3545;
		}
		.error-message {
			display: block;
		}
	</style>

</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
	<div class="container d-flex align-items-center justify-content-between">
<!--		<h1 class="logo">-->
<!--			<a href="/">-->
<!--				<img src="/pengumuman/assets/images/logoppwalisongo.png" style="height: 50px;width: auto">-->
<!--			</a>-->
<!--		</h1>-->
		<!-- Uncomment below if you prefer to use an image logo -->
		 <a href="/" class="logo"><img src="/pengumuman/assets/images/logoppwalisongo.png" alt="" class="img-fluid"></a>

		<nav id="navbar" class="navbar">
			<ul>
				<li><a class="nav-link scrollto" href="/informasi">Informasi</a></li>
				<li><a class="nav-link scrollto" href="/prosedur">Alur Pendaftaran</a></li>
				<li><a class="nav-link scrollto" href="/contact">Contact</a></li>
				<li><a class="nav-link scrollto active" href="/pengumuman">Pengumuman</a></li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav><!-- .navbar -->

	</div>
</header><!-- End Header -->

<main id="main">

	<!-- ======= About Section ======= -->
	<section id="about" class="about">
		<div class="container" data-aos="fade-up">

			<div class="section-title mt-5">
				<h2>Pengumuman PSB</h2>
			</div>

			<div class="row content">
				<div class="col-xs-1 col-md-2 col-lg-3">&nbsp;</div>
				<div class="col-xs-10 col-md-8 col-lg-6 text-center">
					<?php
					$now=date('Y-m-d');
					$startDate = date('Y-m-d', strtotime($setting[0]->start_date));
					$endDate = date('Y-m-d', strtotime($setting[0]->end_date));
					?>
					<?php if($startDate <= $now && $now <= $endDate) { ?>
						<?php if(!$data) { ?>
							<p>
								Silahkan masukkan NIK atau nomor stambuk peserta untuk mencari hasil pengumuman
							</p>
							<form method="GET">
								<div class="form-group mb-3">
									<input type="number" class="form-control" name="keyword" <?php if (isset($_GET['keyword']) && !$data) echo "style='border-color: #dc3545;'"; ?> value="<?php if (isset($_GET['keyword'])) echo $_GET['keyword'];?>" required>
									<?php if (isset($_GET['keyword']) && !$data) {?>
									<div class="invalid-feedback error-message">
										NIK atau nomor stambuk tidak ditemukan, Silahkan masukan kembali dengan benar
									</div>
									<?php }?>
								</div>
								<div class="row">
									<div class="col-3">&nbsp;</div>
									<div class="col-6">
										<button type="submit" class="btn btn-primary button-block" style="background-color: #2487ce">
											<i class="bx bx-search"></i>&nbsp;Cari
										</button>
									</div>
									<div class="col-3">&nbsp;</div>
								</div>
							</form>
						<?php } else { ?>
							<?php foreach ($data as $d) { ?>
								<?php if($d->status_selection == 'pass') { ?>
									<div class="card">
										<div class="card-header alert-success"></div>
										<div class="card-body">
											<?php echo $setting[0]->pass_opening;?>
											<div class="alert-success" style="padding: 15px; margin-bottom: 25px;">
												<table>
													<tr class="pass-data">
														<td class="text-start">Nama</td>
														<td class="text-start">: <?php echo $d->name;?></td>
													</tr>
													<tr>
														<td class="text-start">Nomor Stambuk (NIS)</td>
														<td class="text-start">: <?php echo $d->number;?></td>
													</tr>
													<tr>
														<td class="text-start">Virtual Account (Bank Muamalat)</td>
														<td class="text-start">: <?php echo $d->virtual_account;?></td>
													</tr>
													<tr>
														<td class="text-start">Link SIAP</td>
														<td class="text-start" style="overflow-wrap: anywhere;">: <a href="http://www.siap.ppwalisongo.id/user">http://www.siap.ppwalisongo.id/user</a></td>
													</tr>
												</table>
											</div>
											<?php echo $setting[0]->pass_closing;?>
										</div>
										<div class="card-footer">
											<a href="/pengumuman" class="btn btn-primary" style="background-color: #2487ce">Kembali ke pencarian</a>
										</div>
									</div>
								<?php } elseif ($d->status_selection == 'fail') { ?>
									<div class="card">
										<div class="card-header alert-danger"></div>
										<div class="card-body">
											<?php echo $setting[0]->failed_opening;?>
											<p class="alert-danger" style="padding: 15px;">Nama: <?php echo $d->name;?></p>
											<?php echo $setting[0]->failed_closing;?>
										</div>
										<div class="card-footer">
											<a href="/pengumuman" class="btn btn-primary" style="background-color: #2487ce">Kembali ke pencarian</a>
										</div>
									</div>
								<?php } elseif ($d->status_selection == 'notyet') { ?>
									<div class="card">
										<div class="card-header alert-warning"></div>
										<div class="card-body">
											<?php echo $setting[0]->notyet;?>
										</div>
										<div class="card-footer">
											<a href="/pengumuman" class="btn btn-primary" style="background-color: #2487ce">Kembali ke pencarian</a>
										</div>
									</div>
								<?php } else { ?>
									<div class="card">
										<div class="card-header alert-info"></div>
										<div class="card-body">
											<p class="alert-info" style="padding: 15px;">Data tidak diketemukan silahkam ulangi pencarian dengan nik atau nomor stambuk yang sesuai</p>
										</div>
										<div class="card-footer">
											<a href="/pengumuman" class="btn btn-primary" style="background-color: #2487ce">Kembali ke pencarian</a>
										</div>
									</div>
								<?php } ?>
							<?php } ?>
						<?php } ?>
					<?php } else { ?>
						<div class="card">
							<div class="card-header alert-info"></div>
							<div class="card-body">
								<?php echo $setting[0]->out_session;?>
							</div>
						</div>
					<?php } ?>
				</div>
				<div class="col-xs-1 col-md-2 col-lg-3">&nbsp;</div>
			</div>
		</div>
	</section><!-- End About Section -->
</main><!-- End #main -->
<!-- ======= Footer ======= -->
<footer id="footer">

	<div class="footer-top" style="background-color: #f2f2f7">
		<div class="container">
			<div class="row">
				<div class="col-md-6 footer-contact">
					<h3>Sekretariat</h3>
					<p>Pondok Pesantren Wali Songo Ngabar<br>Jl. Sunan Kalijaga, Ngabar, Siman, Ponorogo, Jawa Timur, Indonesia 63471<br>Telp, (0352) 311 206 WA Center: 0822-3486-5561<br>Email: sekretariat@ppwalisongo.id<br></p>
				</div>

				<div class="col-md-6 footer-contact text-md-end">
					<h3>Ngabar Digital App</h3>
					<div>
						<a href="https://play.google.com/store/apps/details?id=com.ict.ponorogo_ngabar&amp;hl=in&amp;gl=US">
							<img loading="lazy" width="250" height="74" src="http://ppwalisongo.id/home/wp-content/uploads/2021/08/googleplay-250.png" alt="" class="wp-image-1994">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container py-4 text-center">
		<div class="copyright">
			Copyright © 2021 PPWS Ngabar | Modified by PPWS Ngabar.
		</div>

<!--		<div class="text-center">-->
<!--			<div class="copyright">-->
<!--				Copyright © 2021 PPWS Ngabar | Modified by PPWS Ngabar.-->
<!--			</div>-->
<!--			<div class="credits">-->
<!--				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>-->
<!--			</div>-->
<!--		</div>-->
<!--		<div class="social-links text-center text-md-right pt-3 pt-md-0">-->
<!--			<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>-->
<!--			<a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>-->
<!--			<a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>-->
<!--			<a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>-->
<!--			<a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>-->
<!--		</div>-->
	</div>
</footer><!-- End Footer -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="/pengumuman/assets/vendor/purecounter/purecounter.js"></script>
<script src="/pengumuman/assets/vendor/aos/aos.js"></script>
<script src="/pengumuman/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/pengumuman/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="/pengumuman/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="/pengumuman/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="/pengumuman/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/pengumuman/assets/js/main.js"></script>

</body>

</html>
