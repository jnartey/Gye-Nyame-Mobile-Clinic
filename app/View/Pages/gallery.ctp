<?php echo $this->element('head'); ?>
<div class="large-12 columns content antialiased">
	<div class="large-12 columns main-content">
		<div class="row">
			<div class="large-12 text-center">
				<h2 class="edge-x"><span class="icon"><?php echo $this->Html->image('gallery-icon.png', array('alt' => 'gye nyame mobile clinic')); ?></span><span class="text">gallery</span></h2>
			</div>
			<div class="large-12 content-text">
				<?php
					if(!$gallery){ 
				?>
				<div class="content">
					<ul class="small-block-grid-2 medium-block-grid-4 large-block-grid-4 gallery">
						<?php
							if($galleries){
								foreach($galleries as $gallery):
									$default = AppController::getFirstChildImage('Image', 'gallery_id', $gallery['Gallery']['id']);
									if($default){
										echo '<li><a href="'.$this->Html->url(DS.'pages'.DS.'gallery'.DS.$gallery['Gallery']['slug'], true).'">';
										echo $this->html->image('photogallery'.DS.'thumb'.DS.'small'.DS.$default['Image']['img_file'], array('alt' => 'mida', 'class'=>'left'));
										if($gallery['Gallery']['name']){
											echo '<span class="gallery-title">';
											echo $gallery['Gallery']['name'];
											echo '</span>';
										}	
									}
									echo '</a></li>';
								endforeach;
							}
						?>
					</ul>
					<div class="large-12 columns">
						<div class="pagination right">
						<?php
						 	echo '<span class="unavailable"></span>'.$this->Paginator->prev(__('prev', true), array('class'=>'d-menu'), null, array('class'=>'unavailable'));
							echo $this->Paginator->numbers(array('class'=>'d-menu'));
							echo $this->Paginator->next(__('next', true), array('class'=>'d-menu'), null, array('class'=>'unavailable')).'<span class="unavailable"></span>';
						?>
						</div>
					</div>
				</div>
				<?php
					}else{
				?>
					<div class="content">
						<div class="row">
							<div class="large-12 columns title-bar">
								<ul class="breadcrumbs">
								  <li><?php echo $this->Html->link(__(('Gallery'), true), array('controller'=> 'pages', 'action'=>'gallery'), array('escape' => false, 'class'=>'d-menu')); ?></li>
								  <li class="current"><?php echo $gallery['Gallery']['name']; ?></li>
								</ul>
							</div>
							<div class="large-12 columns">
								<?php echo $gallery['Gallery']['description']; ?>
								<div class="large-12 columns gallery-content text-left">
								<?php
									if($gallery){
										echo '<ul class="small-block-grid-2 medium-block-grid-4 large-block-grid-4 gallery">';
										foreach($images as $image):
											echo '<li><a href='.$this->Html->url(DS.'img'.DS.'photogallery'.DS.'thumb'.DS.'large'.DS.$image['Image']['img_file'], true).' class="photo-gallery" rel="'.$gallery['Gallery']['slug'].'">';
											echo $this->html->image('photogallery'.DS.'thumb'.DS.'small'.DS.$image['Image']['img_file'], array('alt' => 'mida', 'class'=>'left'));
											if($image['Image']['name']){
												echo '<span class="gallery-title">';
												echo strlen($image['Image']['name']) >= 23 ? substr($image['Image']['name'], 0, 23) . '...' : $image['Image']['name'];
												echo '</span>';
											}
											echo '</a></li>';
										endforeach;
										echo '</ul>';
									}else{
										echo '<p>No images available</p>';
									}
								?>
								</div>
								<div class="large-12 columns">
									<div class="pagination right">
									<?php
									 	echo '<span class="unavailable"></span>'.$this->Paginator->prev(__('prev', true), array('class'=>''), null, array('class'=>'unavailable'));
										echo $this->Paginator->numbers(array('class'=>''));
										echo $this->Paginator->next(__('next', true), array('class'=>''), null, array('class'=>'unavailable')).'<span class="unavailable"></span>';
									?>
									</div>
								</div>
							</div>
						</div>
					</div>
				<?php
					}
				?>
			</div>
		</div>
	</div>
</div>
<?php echo $this->element('footer'); ?>