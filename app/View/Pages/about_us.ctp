<?php echo $this->element('head'); ?>
<div class="large-12 columns content antialiased">
	<div class="large-12 columns sub-menu text-center">
		<div class="row">
			<ul class="tabs" data-options="scroll_to_content: false; deep_linking:true;" data-tab>
				<li class="tab-title" onclick="location.href='<?php echo $this->Html->url(DS, true); ?>'"><a href="#"><span  class="fa fa-home"></span></a></li>
				<?php
					$i=1;
					foreach($content as $data):
						if($i == 1){
							echo '<li class="tab-title active"><a href="#'.$data['PageContent']['slug'].'">'.$data['PageContent']['title'].'</a></li>';
						}else{
							echo '<li class="tab-title"><a href="#'.$data['PageContent']['slug'].'">'.$data['PageContent']['title'].'</a></li>';
						}
						$i++;
					endforeach;
				?>
			</ul>
		</div>
	</div>
	<div id="top" class="tabs-content">
		<?php
			$j=1;
			foreach($content as $data):
				if($j == 1){
					echo '<div class="content active" id="'.$data['PageContent']['slug'].'">';
					echo '<div class="large-12 columns banner">';
					echo $this->Html->image('banners'.DS.'thumb'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'gye nyame mobile clinic'));
					echo '</div>';
					echo '<div class="large-12 columns main-content"><div class="row">';
					echo '<div class="large-12 text-center title-wrap">';
					echo '<h2><span class="icon">'.$this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$data['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic')).'</span><span class="text shift-lft">'.$data['PageContent']['title'].'</span></h2>';
					echo '<h3>'.$data['PageContent']['summary'].'</h3>';
					echo '<span class="crooked-line"></span>';
					echo '</div>';
					if($data['PageContent']['content']){
						echo '<div class="large-12 content-text two-column-text">';
						echo $data['PageContent']['content'];
						echo '</div>';
					}
					
					$children =  AppController::getChildren('PageContent', 'category', $data['PageContent']['id']);
					if($children){
						echo '<div class="large-12 content-text plain">';
						foreach($children as $child):
							if($child['PageContent']['page_style'] != 4){
								echo '<div class="large-6 columns vision-mission">';
								echo '<h2>'.$this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$child['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic')).' '.$child['PageContent']['title'].'</h2>';
								if($child['PageContent']['summary']){
									echo '<h3>'.$child['PageContent']['summary'].'</h3>';
								}
								echo $child['PageContent']['content'];
								echo '</div>';
							}
						endforeach;
						echo '</div>';
					}
					echo '</div></div>';
					if($children){
						foreach($children as $child):
							if($child['PageContent']['page_style'] == 4){
								echo '<div class="large-12 columns extra-content"><div class="row">';
								echo '<div class="large-3 columns">';
								echo $this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$child['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic'));
								echo '</div>';
								echo '<div class="large-9 columns">';
								echo $child['PageContent']['content'];
								echo '</div></div></div>';
							}
						endforeach;
					}
					echo '</div>';
				}else{
					echo '<div class="content" id="'.$data['PageContent']['slug'].'">';
					echo '<div class="large-12 columns banner">';
					echo $this->Html->image('banners'.DS.'thumb'.DS.'mini'.DS.$banner['Banner']['banner_image'], array('alt' => 'gye nyame mobile clinic'));
					echo '</div>';
					echo '<div class="large-12 columns main-content"><div class="row">';
					echo '<div class="large-12 text-center title-wrap">';
					echo '<h2><span class="icon">'.$this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$data['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic')).'</span><span class="text shift-lft">'.$data['PageContent']['title'].'</span></h2>';
					echo '<h3>'.$data['PageContent']['summary'].'</h3>';
					echo '<span class="crooked-line"></span>';
					echo '</div>';
					if($data['PageContent']['content']){
						echo '<div class="large-12 content-text two-column-text">';
						echo $data['PageContent']['content'];
						echo '</div>';
					}
					$children =  AppController::getChildren('PageContent', 'category', $data['PageContent']['id']);
					if($children){
						echo '<div class="large-12 content-text plain">';
						foreach($children as $child):
							if($child['PageContent']['page_style'] != 4){
								echo '<div class="large-6 columns vision-mission">';
								echo '<h2>'.$this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$child['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic')).' '.$child['PageContent']['title'].'</h2>';
								if($child['PageContent']['summary']){
									echo '<h3>'.$child['PageContent']['summary'].'</h3>';
								}
								echo $child['PageContent']['content'];
								echo '</div>';
							}
						endforeach;
						echo '</div>';
					}
					echo '</div></div>';
					if($children){
						foreach($children as $child):
							if($child['PageContent']['page_style'] == 4){
								echo '<div class="large-12 columns extra-content"><div class="row">';
								echo '<div class="large-3 columns">';
								echo $this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$child['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic'));
								echo '</div>';
								echo '<div class="large-9 columns">';
								echo $child['PageContent']['content'];
								echo '</div></div></div>';
							}
						endforeach;
					}
					echo '</div>';
				}
				$j++;
			endforeach;
		?>
	</div>
</div>
<?php echo $this->element('footer'); ?>