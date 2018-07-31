<div class="large-12 columns footer-misc antialiased">
	<div class="row">
		<ul class="links">
			<li>
				<h6>About Us</h6>
				<?php
					foreach($about_us as $link):
						echo '<a href="'.$this->Html->url(DS.'pages'.DS.'about-us#'.$link['PageContent']['slug'], true).'">'.$link['PageContent']['title'].'</a>';
					endforeach; 
				?>
			</li>
			<li>
				<h6>Projects</h6>
				<?php
					foreach($projects as $link):
						echo '<a href="'.$this->Html->url(DS.'pages'.DS.'projects#'.$link['PageContent']['slug'], true).'">'.$link['PageContent']['title'].'</a>';
					endforeach; 
				?>
			</li>
			<li>
				<h6>News</h6>
				<a href="<?php echo $this->Html->url(DS.'pages'.DS.'news#newsletter', true); ?>">Newsletter</a>
				<a href="<?php echo $this->Html->url(DS.'pages'.DS.'news#published-articles', true); ?>">Published articles </a>
				<a href="<?php echo $this->Html->url(DS.'pages'.DS.'news#books', true); ?>">Link to books</a>
			</li>
			<li>
				<h6>Sponsorship</h6>
				<?php
					foreach($sponsorships as $link):
						echo '<a href="'.$this->Html->url(DS.'pages'.DS.'sponsorship#'.$link['PageContent']['slug'], true).'">'.$link['PageContent']['title'].'</a>';
					endforeach; 
				?>
				<a href="<?php echo $this->Html->url(DS.'pages'.DS.'get-involved', true); ?>">Get involved</a>
			</li>
			<li>
				<h6>Contact</h6>
				<p>Contact information<br />
				Social media links</p>
			</li>
		</ul>
		<div class="large-12 copyright text-center">
			<p>&copy; 2015 Gye Nyame Mobile Clinic is an Israeli registered charity No. 580472017. All rights reserved. Website by <a href="http://www.fifthlightmedia.com" target="_blank">fifthlightmedia</a></p>
		</div>
	</div>
</div>