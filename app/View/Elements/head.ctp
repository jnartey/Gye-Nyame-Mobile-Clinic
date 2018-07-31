<div class="large-12 columns head-misc antialiased">
	<div class="large-2 columns logo">
		<h1><a href="<?php echo $this->Html->url(DS, true); ?>"><?php echo $this->Html->image('logo.png', array('alt' => 'gye nyame mobile clinic')); ?></a></h1>
	</div>
	<div class="large-10 columns text-right">
		<div class="large-10 columns menu">
			<nav class="top-bar" data-topbar role="navigation">
			  <ul class="title-area">
			    <li class="name">
			    </li>
			     <!-- Remove the class "menu-icon" to get rid of menu icon. Take out "Menu" to just have icon alone -->
			    <li class="toggle-topbar menu-icon"><a href="#"><span>Menu</span></a></li>
			  </ul>

			  <section class="top-bar-section">
			    <ul>
					<li <?php if($title_for_layout === "about us"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(($this->Html->image('about-us.png', array('alt' => 'gye nyame mobile clinic')).' About Us'), true), array('controller'=> 'pages', 'action'=>'about-us'), array('escape' => false)); ?>
					</li>
					<li <?php if($title_for_layout === "projects"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(($this->Html->image('projects.png', array('alt' => 'gye nyame mobile clinic')).' Projects'), true), array('controller'=> 'pages', 'action'=>'projects'), array('escape' => false)); ?>
					</li>
					<li <?php if($title_for_layout === "sponsorship"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(($this->Html->image('sponsorship.png', array('alt' => 'gye nyame mobile clinic')).' Sponsorship'), true), array('controller'=> 'pages', 'action'=>'sponsorship'), array('escape' => false)); ?>
					</li>
					<li <?php if($title_for_layout === "gallery"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(($this->Html->image('gallery.png', array('alt' => 'gye nyame mobile clinic')).' Gallery'), true), array('controller'=> 'pages', 'action'=>'gallery'), array('escape' => false)); ?>
					</li>
					<li <?php if($title_for_layout === "news"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(($this->Html->image('news.png', array('alt' => 'gye nyame mobile clinic')).' News'), true), array('controller'=> 'pages', 'action'=>'news'), array('escape' => false)); ?>
					</li>
					<li <?php if($title_for_layout === "contact"){ echo "class='active'"; } ?>>
						<?php echo $this->Html->link(__(($this->Html->image('contact.png', array('alt' => 'gye nyame mobile clinic')).' Contact'), true), array('controller'=> 'pages', 'action'=>'contact'), array('escape' => false)); ?>
					</li>
			    </ul>
			  </section>
			</nav>
		</div>
		<div class="large-2 columns r-pad">
			<div class="country-wrap">
				<!-- <a class="uk" href="#"></a> -->
				<a class="germany" href="#"></a>
			</div>
			<a class="donate" href="<?php echo $this->Html->url(DS.'pages'.DS.'get-involved', true); ?>">donate</a>
		</div>
	</div>
</div>