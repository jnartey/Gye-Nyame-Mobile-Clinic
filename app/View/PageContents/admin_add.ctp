<div class="row">
	<div class="large-12 columns">
		<div class="module yellow">
			<h2>
				<?php echo $current_page; ?> <a href="#"><?php echo strip_tags($header); ?></a>
			</h2>
		</div>
	</div>
</div>
<div class="row">
	<div class="large-2 columns">
		<?php echo $this->element('admin'.DS.'page_menu'); ?>
	</div>
	<div class="large-10 columns content">
		<?php 
			echo $this->Session->flash(); 
			echo '<div class="large-12 columns">';
				if($parent['PageContent']['id']):
					echo $this->Html->link(__(("cancel"), true), array('controller'=> 'pageContents', 'action'=>'view', $parent['PageContent']['id'], 'admin' => true), array('escape' => false, 'class'=>'button small primary right')); 
				else:
					echo $this->Html->link(__(("cancel"), true), array('controller'=> 'pageContents', 'action'=>'index', 'admin' => true), array('escape' => false, 'class'=>'button small primary right'));
				endif;
			echo '</div>';
			echo '<div class="large-12 columns">';
				echo $this->Form->create('PageContent', array('type' => 'file'));
				if(!$rev){
					echo $this->Form->hidden('add_content', array('value' => 1));
					$options = array(
			        	'1' => 'About Us',
			        	'2' => 'Projects',
						'3' => 'Sponsorship',
						'4' => 'Contact',
						'5' => 'Get Involved',
						'6' => 'Newsletter',
						'7' => 'Books'
			        );
		
			        echo $this->Form->input('page_type', array(
			        	'type'    => 'select',
			        	'options' => $options,
			        	'empty'   => false
			        ));
					echo '<br />';
					echo $this->Form->input('title', array('placeholder'=>'Title'));
					echo $this->Form->input('summary', array('placeholder'=>'Summary'));
					echo '<br />';
					echo $this->Form->input('icon', array('type'=>'file', 'label'=>'Icon'));
					echo $this->Form->hidden('add_content', array('value' => 1));
				}else{
					if($parent['PageContent']['page_type'] == 1 || $parent['PageContent']['page_type'] == 2 || $parent['PageContent']['page_type'] == 5){
						
						if($parent['PageContent']['page_style'] == 2){
							echo $this->Form->input('title', array('placeholder'=>'Title'));
							echo $this->Form->input('page_image', array('type'=>'file', 'label'=>'Image'));
						}elseif($parent['PageContent']['page_style'] == 5){
							echo $this->Form->input('title', array('placeholder'=>'Title'));
							echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
							echo '<br />';
							echo $this->Form->input('page_image', array('type'=>'file', 'label'=>'Image'));
							echo $this->Form->hidden('page_style', array('value' => $parent['PageContent']['page_style']));
						}else{
							$options_c = array(
					        	'1' => 'Normal',
					        	'2' => 'Picture profile',
								'3' => 'Message style',
								'4' => 'Icon text style',
								'5' => 'thread style'
					        );
						
					        echo $this->Form->input('page_style', array(
					        	'type'    => 'select',
					        	'options' => $options_c,
					        	'empty'   => false
					        ));
							echo '<br />';
						
							echo $this->Form->input('title', array('placeholder'=>'Title'));
							echo '<div id="summary-serve">';
							echo $this->Form->input('summary', array('placeholder'=>'Summary'));
							echo '<br />';
							echo '</div>';
						
							echo '<div id="content-serve">';
							echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
							echo '<br />';
							echo '</div>';
						
							echo '<div id="icon-serve">';
							echo $this->Form->input('icon', array('type'=>'file', 'label'=>'Icon'));
							echo '</div>';
						}
						
						echo $this->Form->hidden('category', array('value' => $parent['PageContent']['id']));
						echo $this->Form->hidden('page_type', array('value' => $parent['PageContent']['page_type']));
					}
					
					if($parent['PageContent']['page_type'] == 4){
						echo $this->Form->input('title', array('placeholder'=>'Title'));
						echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
						echo '<br />';
						echo $this->Form->hidden('category', array('value' => $parent['PageContent']['id']));
						echo $this->Form->hidden('page_type', array('value' => $parent['PageContent']['page_type']));
					}
					
					if($parent['PageContent']['page_type'] == 3){
						echo $this->Form->input('title', array('placeholder'=>'Title'));
						echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
						echo '<br />';
						echo $this->Form->input('logo', array('type'=>'file', 'label'=>'Logo'));
						echo $this->Form->input('url', array('placeholder'=>'Url'));
						echo $this->Form->hidden('category', array('value' => $parent['PageContent']['id']));
						echo $this->Form->hidden('page_type', array('value' => $parent['PageContent']['page_type']));
					}
					
					if($parent['PageContent']['page_type'] == 6){
						echo $this->Form->input('title', array('placeholder'=>'Title'));
						// echo $this->Form->textarea('content', array('id'=>'editor', 'label'=>false, 'placeholder'=>'Add content'));
// 						echo '<br />';
						echo $this->Form->input('page_image', array('type'=>'file', 'label'=>'Thumbnail Image'));
						echo $this->Form->input('file', array('type'=>'file', 'label'=>'Newsletter File'));
						echo $this->Form->hidden('category', array('value' => $parent['PageContent']['id']));
						echo $this->Form->hidden('page_type', array('value' => $parent['PageContent']['page_type']));
					}
					
					if($parent['PageContent']['page_type'] == 7){
						echo $this->Form->input('title', array('placeholder'=>'Title'));
						echo $this->Form->input('url_title', array('placeholder'=>'Url Title'));
						echo $this->Form->input('url', array('placeholder'=>'Url'));
						echo $this->Form->hidden('category', array('value' => $parent['PageContent']['id']));
						echo $this->Form->hidden('page_type', array('value' => $parent['PageContent']['page_type']));
					}
				}
				
				echo $this->Form->hidden('cid', array('value'=>$rev));
				echo $this->Form->end('Add'); 
			?>
		</div>
	</div>
</div>
<script>
$(function() {
	
	$('#PageContentPageStyle').on('change', function (e) {
	    var optionSelected = $("option:selected", this);
	    var valueSelected = this.value;
	
		if(valueSelected == '1') {
			$('#icon-serve').show();
			$('#summary-serve').show();
			$('#content-serve').show();
		}
		
		if(valueSelected == '2') {
			$('#icon-serve').show();
			$('#summary-serve').hide();
			$('#content-serve').hide();
		}
		
		if(valueSelected == '3') {
			$('#icon-serve').show();
			$('#content-serve').show();
			$('#summary-serve').hide();
		}
		
		if(valueSelected == '4') {
			$('#icon-serve').show();
			$('#content-serve').show();
			$('#summary-serve').hide();
		} 
	});
});
</script>