<?php echo $this->element('head'); ?>
<div class="large-12 columns content antialiased">
	<div class="large-12 columns text-center sub-menu">
		<div class="row">
			<ul class="tabs" data-options="scroll_to_content: false; deep_linking:true;" data-tab>
			  <li class="tab-title" onclick="location.href='<?php echo $this->Html->url(DS, true); ?>'"><a href="#"><span  class="fa fa-home"></span></a></li>
			  <li class="tab-title active"><a href="#newsletter">newsletter</a></li>
			  <li class="tab-title"><a href="#published-articles">published articles</a></li>
			  <li class="tab-title"><a href="#books">link to books</a></li>
			</ul>
		</div>
	</div>
	<div class="tabs-content">
	  	<div class="content active" id="newsletter">
		    <div class="large-12 columns banner">
				<?php echo $this->Html->image('banners'.DS.'thumb'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'gye nyame mobile clinic')); ?>
			</div>
			<div class="large-12 columns main-content">
				<div class="row">
					<div class="large-12 text-center">
						<h2 class="edge-x"><span class="icon"><?php echo $this->Html->image('news-icon.png', array('alt' => 'gye nyame mobile clinic')); ?></span><span class="text">newsletter</span></h2>
					</div>
					<div class="large-12 content-text">
						<ul class="accordion" data-accordion>
							<?php
								echo '<li class="accordion-navigation active">';
								echo '<a href="#newsletter"><span class="text left">Newsletter</span><span class="fa fa-angle-down right"></span></a>';
								echo '<div id="#newsletter" class="content active">';
								// if($list['PageContent']['content']){
// 											echo $list['PageContent']['content'];
// 										}
								
								foreach($newsletter as $list):
									echo '<a class="medium-3 columns newsletter-img" href="'.$this->Html->url(DS.'pages'.DS.'download'.DS.$list['PageContent']['file'], true).'" class="blank" target="_blank">';
									if($list['PageContent']['page_image']){
										echo $this->Html->image('pages'.DS.'thumb'.DS.'newsletter'.DS.$list['PageContent']['page_image'], array('alt' => 'saf')).'<br />';
									}
									echo '<span class="fa fa-download"></span> '.$list['PageContent']['title'].'</a>';
								endforeach;
								echo '</div>';
								echo '</li>';
							?>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="content" id="published-articles">
		    <div class="large-12 columns banner">
				<?php echo $this->Html->image('news-banner.jpg', array('alt' => 'gye nyame mobile clinic')); ?>
			</div>
			<div class="large-12 columns main-content">
				<div class="row">
					<div class="large-12 text-center">
						<h2><span class="icon"><?php echo $this->Html->image('news-icon.png', array('alt' => 'gye nyame mobile clinic')); ?></span><span class="text shift-lft">published articles</span></h2>
					</div>
					<div class="large-12 content-text">
						
					</div>
				</div>
			</div>
		</div>
		<div class="content" id="books">
		    <div class="large-12 columns banner">
				<?php echo $this->Html->image('news-banner.jpg', array('alt' => 'gye nyame mobile clinic')); ?>
			</div>
			<div class="large-12 columns main-content">
				<div class="row">
					<div class="large-12 text-center">
						<h2><span class="icon"><?php echo $this->Html->image('news-icon.png', array('alt' => 'gye nyame mobile clinic')); ?></span><span class="text shift-lft">link to books</span></h2>
					</div>
					<div class="large-12 content-text">
						<ol class="book-list">
							<?php
								foreach($books as $list):
									echo '<li><a href="'.$list['PageContent']['url'].'" target="_blank">'.$list['PageContent']['url_title'].'</a> '.$list['PageContent']['title'].'</li>';
								endforeach;
							?>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php echo $this->element('footer'); ?>