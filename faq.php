<!-- terms-conditions.php -->
<?php include 'dbCon.php'; ?>
<?php include 'template/header.php'; ?>

<body>

	<?php include 'template/nav-bar.php'; ?>
	<?php include 'template/search-header.php'; ?>

	<section class="faq-section">
		<div class="container">
			<div class="row">
				<!-- ***** FAQ Start ***** -->
				<div class="col-md-6 offset-md-3">

					<div class="faq-title text-center pb-3">
						<h2>FAQ </h2>
					</div>
				</div>
				<div class="col-md-6 offset-md-3">
					<div class="faq" id="accordion">
						<div class="card">
							<div class="card-header" id="faqHeading-1">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-1" data-aria-expanded="true" data-aria-controls="faqCollapse-1">
										<span class="badge">1</span>What is Dinesync ?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-1" class="collapse" aria-labelledby="faqHeading-1" data-parent="#accordion">
								<div class="card-body">
									<p>Dinesync is an online table reservation service, which brings together hundreds of restaurants.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-2">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-2" data-aria-expanded="false" data-aria-controls="faqCollapse-2">
										<span class="badge">2</span> Throughout Bangladesh?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-2" class="collapse" aria-labelledby="faqHeading-2" data-parent="#accordion">
								<div class="card-body">
									<p>At the moment, our partners are only located in Dhaka City, but don't worry, soon you'll find us near you!</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-3">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-3" data-aria-expanded="false" data-aria-controls="faqCollapse-3">
										<span class="badge">3</span>How to use the website?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-3" class="collapse" aria-labelledby="faqHeading-3" data-parent="#accordion">
								<div class="card-body">
									<p>It's simple! Just search for a neighborhood or district in the search bar, and a list of partner restaurants will appear. Choose and book!</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-4">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-4" data-aria-expanded="false" data-aria-controls="faqCollapse-4">
										<span class="badge">4</span> And what about the promotions in all of this?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-4" class="collapse" aria-labelledby="faqHeading-4" data-parent="#accordion">
								<div class="card-body">
									<p>We haven't forgotten about you! Our partners often offer promotions when booking a table. Enjoy yourself #128523; !</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-5">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-5" data-aria-expanded="false" data-aria-controls="faqCollapse-5">
										<span class="badge">5</span> I am a restaurant owner and I want to become a partner, how do I proceed?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-5" class="collapse" aria-labelledby="faqHeading-5" data-parent="#accordion">
								<div class="card-body">
									<p> First of all, welcome to you, future partner! If you want to showcase your restaurant and benefit from a booking service with a personal admin panel, it's very easy to join our list of partners. Just go to the registration page, then under 'Sign Up,' click on the 'As a restaurant' tab and follow the steps.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-6">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-6" data-aria-expanded="false" data-aria-controls="faqCollapse-6">
										<span class="badge">6</span> What do you offer for your partners?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-6" class="collapse" aria-labelledby="faqHeading-6" data-parent="#accordion">
								<div class="card-body">
									<p>We have a fast, simple, and comprehensive reservation system. An admin panel with the ability to manage/modify or delete the number of tables offered, handle restaurant menus, accept or reject reservations with automatic confirmation emails, manage the restaurant profile, and much more! So, don't hesitate any longer and join us.</p>
								</div>
							</div>
						</div>
						<div class="card">
							<div class="card-header" id="faqHeading-7">
								<div class="mb-0">
									<h5 class="faq-title" data-toggle="collapse" data-target="#faqCollapse-7" data-aria-expanded="false" data-aria-controls="faqCollapse-7">
										<span class="badge">7</span> I have more questions?
									</h5>
								</div>
							</div>
							<div id="faqCollapse-7" class="collapse" aria-labelledby="faqHeading-7" data-parent="#accordion">
								<div class="card-body">
									<p>Contact us <span><a href="mailto:nada.localhost@gmail.com"> Here </a></span>We typically respond within 48 hours.</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<?php include 'template/instagram.php'; ?>

	<?php include 'template/footer.php'; ?>

	<?php include 'template/script.php'; ?>
</body>