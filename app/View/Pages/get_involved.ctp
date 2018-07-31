<?php echo $this->element('head'); ?>
	<div class="large-12 columns content antialiased">
		<div class="large-12 columns text-center sub-menu">
			<div class="row">
				<ul class="tabs">
				  <li class="tab-title" onclick="location.href='<?php echo $this->Html->url(DS, true); ?>'"><a href="#"><span  class="fa fa-home"></span></a></li>
				  <?php
				  	$i=1;
					foreach($sponsorship as $data):
						if($i == 1){
							echo '<li class="s-title active"><a href="'.$this->Html->url(DS.'pages'.DS.'sponsorship', true).'#'.$data['PageContent']['slug'].'">'.$data['PageContent']['title'].'</a></li>';
						}else{
							echo '<li class="s-title"><a href="'.$this->Html->url(DS.'pages'.DS.'sponsorship', true).'#'.$data['PageContent']['slug'].'">'.$data['PageContent']['title'].'</a></li>';
						}
						$i++;
					endforeach;
				  ?>
				  <li class="tab-title"><a class="sp" href="<?php echo $this->Html->url(DS.'pages'.DS.'get-involved', true); ?>">Get involved</a></li>
				</ul>
			</div>
		</div>
			<div class="content" id="">
				<div class="large-12 columns banner">
					<?php echo $this->Html->image('banners'.DS.'thumb'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'gye nyame mobile clinic')); ?>
				</div>
				<div class="large-12 columns main-content">
					<div class="row">
						<div class="large-12 text-center">
							<h2><span class="icon"><?php echo $this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$get_involved['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic')); ?></span><span class="text"><?php echo $get_involved['PageContent']['title']; ?></span></h2><br />
							<span class="crooked-line"></span>
						</div>
						<?php
							foreach($content as $data):
								if($data['PageContent']['page_style'] != 4){
									echo '<div class="large-12 content-text plain">';
									echo '<h2>'.$data['PageContent']['title'].'</h2>';
									echo '<div class="large-12 two-column-text">';
									echo $data['PageContent']['content'];
									echo '</div></div>';
								}
							endforeach;
						?>
					</div>
				</div>
				<?php
					foreach($content as $data):
						if($data['PageContent']['page_style'] == 4){
							echo '<div class="large-12 columns content-blue text-center">';
							echo '<div class="large-12 columns make-donation-icon">'.$this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$data['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic')).'</div>';
							echo '<div class="row">';
							echo $data['PageContent']['content'];
							echo '</div></div>';
						}
					endforeach;
				?>
			  </div>
		</div>
	</div>
<?php echo $this->element('footer'); ?>