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
			$l=1;
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
					
					$children =  AppController::getChildren('PageContent', 'category', $data['PageContent']['id']);
					
					if($data['PageContent']['page_style'] == 5){
						if($children){
							echo '<div id="top" class="large-12 content-text"><ul class="accordion" data-accordion>';
							foreach($children as $child):
								if($l==1){
									echo '<li class="accordion-navigation active">';
									echo '<a class="s-title" href="#'.$child['PageContent']['slug'].'"><span class="text left">'.$child['PageContent']['title'].'</span><span class="fa fa-angle-down right"></span></a>';
									echo '<div id="'.$child['PageContent']['slug'].'" class="content active">';
									echo '<div class="large-5 columns">';
									echo $this->Html->image('pages'.DS.'thumb'.DS.'medium'.DS.$child['PageContent']['page_image'], array('alt' => 'gye nyame mobile clinic'));
									echo '</div>';
									echo '<div class="large-7 columns">';
									echo $child['PageContent']['content'];
									echo '</div></div>';
									echo '</li>';
								}else{
									echo '<li class="accordion-navigation">';
									echo '<a class="s-title" href="#'.$child['PageContent']['slug'].'"><span class="text left">'.$child['PageContent']['title'].'</span><span class="fa fa-angle-down right"></span></a>';
									echo '<div id="'.$child['PageContent']['slug'].'" class="content">';
									echo '<div class="large-5 columns">';
									echo $this->Html->image('pages'.DS.'thumb'.DS.'medium'.DS.$child['PageContent']['page_image'], array('alt' => 'gye nyame mobile clinic'));
									echo '</div>';
									echo '<div class="large-7 columns">';
									echo $child['PageContent']['content'];
									echo '</div></div>';
									echo '</li>';
								}
								$l++;
							endforeach;
							echo '</ul></div>';
						}
					}else{
						if($data['PageContent']['content']){
							echo '<div class="large-12 content-text two-column-text">';
							echo $data['PageContent']['content'];
							echo '</div>';
						}
					}
					
					if($children){
						foreach($children as $child):
							if($child['PageContent']['page_style'] == 2){
								echo '<div class="large-12 columns team text-center">';
								echo '<div class="large-12 team-icon">'.$this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$child['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic')).'</div>';
								echo '<h2>'.$child['PageContent']['title'].'</h2><br />';
								$grand_children =  AppController::getChildren('PageContent', 'category', $child['PageContent']['id']);
								echo '<div class="large-12 team-members">';
								if($grand_children){
									foreach($grand_children as $grand_child):
										echo '<div class="large-3 columns team-member">';
										if($grand_child['PageContent']['page_image']){
											echo $this->Html->image('pages'.DS.'thumb'.DS.'profile'.DS.$grand_child['PageContent']['page_image'], array('alt' => 'gye nyame mobile clinic'));
										}else{
											echo '<span class="blank-img"></span>';
										}
										echo '<span>'.$grand_child['PageContent']['title'].'</span>';
										echo '</div>';
									endforeach;
								}
								echo '</div></div>';
							}
						endforeach;
					}
					echo '</div></div>';
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
					$children =  AppController::getChildren('PageContent', 'category', $data['PageContent']['id']);
					
					if($data['PageContent']['page_style'] == 5){
						if($children){
							echo '<div id="top" class="large-12 content-text"><ul class="accordion" data-accordion>';
							foreach($children as $child):
								if($l==1){
									echo '<li class="accordion-navigation active">';
									echo '<a class="s-title" href="#'.$child['PageContent']['slug'].'"><span class="text left">'.$child['PageContent']['title'].'</span><span class="fa fa-angle-down right"></span></a>';
									echo '<div id="'.$child['PageContent']['slug'].'" class="content active">';
									echo '<div class="large-5 columns">';
									echo $this->Html->image('pages'.DS.'thumb'.DS.'medium'.DS.$child['PageContent']['page_image'], array('alt' => 'gye nyame mobile clinic'));
									echo '</div>';
									echo '<div class="large-7 columns">';
									echo $child['PageContent']['content'];
									echo '</div></div>';
									echo '</li>';
								}else{
									echo '<li class="accordion-navigation">';
									echo '<a class="s-title" href="#'.$child['PageContent']['slug'].'"><span class="text left">'.$child['PageContent']['title'].'</span><span class="fa fa-angle-down right"></span></a>';
									echo '<div id="'.$child['PageContent']['slug'].'" class="content">';
									echo '<div class="large-5 columns">';
									echo $this->Html->image('pages'.DS.'thumb'.DS.'medium'.DS.$child['PageContent']['page_image'], array('alt' => 'gye nyame mobile clinic'));
									echo '</div>';
									echo '<div class="large-7 columns">';
									echo $child['PageContent']['content'];
									echo '</div></div>';
									echo '</li>';
								}
								$l++;
							endforeach;
							echo '</ul></div>';
						}
					}else{
						if($data['PageContent']['content']){
							echo '<div class="large-12 content-text two-column-text">';
							echo $data['PageContent']['content'];
							echo '</div>';
						}
					}
					
					if($children){
						foreach($children as $child):
							if($child['PageContent']['page_style'] == 2){
								echo '<div class="large-12 columns team text-center">';
								echo '<div class="large-12 team-icon">'.$this->Html->image('pages'.DS.'thumb'.DS.'icon'.DS.$child['PageContent']['icon'], array('alt' => 'gye nyame mobile clinic')).'</div>';
								echo '<h2>'.$child['PageContent']['title'].'</h2><br />';
								$grand_children =  AppController::getChildren('PageContent', 'category', $child['PageContent']['id']);
								echo '<div class="large-12 team-members">';
								if($grand_children){
									foreach($grand_children as $grand_child):
										echo '<div class="large-3 columns team-member">';
										if($grand_child['PageContent']['page_image']){
											echo $this->Html->image('pages'.DS.'thumb'.DS.'profile'.DS.$grand_child['PageContent']['page_image'], array('alt' => 'gye nyame mobile clinic'));
										}else{
											echo '<span class="blank-img"></span>';
										}
										echo '<span>'.$grand_child['PageContent']['title'].'</span>';
										echo '</div>';
									endforeach;
								}
								echo '</div></div>';
							}
						endforeach;
					}
					echo '</div></div>';
					echo '</div>';
				}
				$j++;
			endforeach;
		?>
	</div>
</div>
<?php echo $this->element('footer'); ?>