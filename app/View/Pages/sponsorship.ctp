<?php echo $this->element('head'); ?>
	<div class="large-12 columns content antialiased">
		<div class="large-12 columns text-center sub-menu">
			<div class="row">
				<ul class="tabs">
				  <li class="tab-title" onclick="location.href='<?php echo $this->Html->url(DS, true); ?>'"><a href="#"><span  class="fa fa-home"></span></a></li>
				  <?php
				  	$i=1;
					foreach($content as $data):
						if($i == 1){
							echo '<li class="s-title active"><a href="#'.$data['PageContent']['slug'].'">'.$data['PageContent']['title'].'</a></li>';
						}else{
							echo '<li class="s-title"><a href="#'.$data['PageContent']['slug'].'">'.$data['PageContent']['title'].'</a></li>';
						}
						$i++;
					endforeach;
				  ?>
				  <li class="tab-title"><a class="sp" href="<?php echo $this->Html->url(DS.'pages'.DS.'get-involved', true); ?>">Get involved</a></li>
				</ul>
			</div>
		</div>
		<div class="tabs-content">
		  <div class="content text-left active" id="organization">
			<div class="large-12 columns banner">
				<?php echo $this->Html->image('banners'.DS.'thumb'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'gye nyame mobile clinic')); ?>
			</div>
			<div class="large-12 columns main-content">
				<div class="large-12 text-center title-wrap">
					<h2><span class="icon"><?php echo $this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$sponsorship['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic')); ?></span><span class="text"><?php echo $sponsorship['PageContent']['title']; ?></span></h2><br />
					<h3><?php echo $sponsorship['PageContent']['summary']; ?></h3><br />
					<span class="crooked-line"></span>
				</div>
				<div class="row content-org">
					<?php
						foreach($content as $data):
							echo '<div id="'.$data['PageContent']['slug'].'" class="large-12 content-1">';
							echo '<div class="large-12 text-center plain">';
							echo '<h2>'.$this->Html->image('pages'.DS.'thumb'.DS.'logo'.DS.$data['PageContent']['logo'], array('alt' => 'gye nyame mobile clinic')).'</h2>';
							echo '</div>';
							echo $data['PageContent']['content'];
							echo '<div class="large-12 text-center">';
							echo '<a hrer="'.$data['PageContent']['url'].'" target="_blank">'.$data['PageContent']['url'].'</a><br /><br /><br /><br />';
							echo '</div></div>';
						endforeach;
					?>
				</div>
			</div>
		</div>
	</div>
<?php echo $this->element('footer'); ?>