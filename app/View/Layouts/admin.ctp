<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang="en" > <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en" > <!--<![endif]-->

<head>
	<meta charset="utf-8" />

	<?php 
		$isiPad = (bool) strpos($_SERVER['HTTP_USER_AGENT'],'iPad');
		
		if($isiPad){ ?>
			<!-- Set the viewport width to device width for mobile -->
			<meta name="viewport" content="width=950, initial-scale=0.8, minimum-scale=0.8, maximum-scale=0.8, user-scalable=no" />
		<?php }else { ?>
			<!-- Set the viewport width to device width for mobile -->
			<meta name="viewport" content="width=device-width" />
	<?php } ?>
	
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $title_for_layout; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');

		echo $this->Html->css('admin'.DS.'foundation.css');
		echo $this->Html->css('admin'.DS.'normalize.css');
		echo $this->Html->css('font-awesome.min.css');
		echo $this->Html->css('admin'.DS.'admin.css');
		echo $this->Html->css('admin'.DS.'jquery-ui.css');
		echo $this->Html->css('admin'.DS.'jquery-ui-timepicker-addon.css');
		echo $this->Html->script('admin'.DS.'vendor'.DS.'custom.modernizr');
		echo $this->Html->script('admin'.DS.'vendor'.DS.'jquery');

		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
	<!--[if lt IE 9]>
		<?php echo $this->Html->css('ie.css'); ?>
	<![endif]-->
	
	<!-- IE Fix for HTML5 Tags -->
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
		<?php //echo $this->element('header'); ?>
		<div class="row">
			<div class="large-12 columns">
				<?php echo $this->fetch('content'); ?>
			</div>
		</div>
		<?php echo $this->element('admin'.DS.'footer'); ?>
		<?php //echo $this->element('sql_dump'); ?>
</body>
<!-- Included JS Files -->
<?php
	echo $this->Html->script('admin'.DS.'foundation.min');
	echo $this->Html->css('admin'.DS.'jquery.datepick.css');
	echo $this->Html->script('admin'.DS.'vendor'.DS.'jquery.datepick');
	echo $this->Html->script('admin'.DS.'jquery-ui');
	echo $this->Html->script('admin'.DS.'jquery-ui-timepicker-addon');
	echo $this->Html->script('admin'.DS.'jquery-ui-sliderAccess');
	echo $this->Html->script('admin'.DS.'admin');
?>
<!-- scripts_for_layout -->
<?php echo $scripts_for_layout; ?>
<!-- Js writeBuffer -->
<?php
	if(class_exists('JsHelper') && method_exists($this->Js, 'writeBuffer')) echo $this->Js->writeBuffer();
	// Writes cached scripts
?>
<script type="text/javascript" src="<?php echo $this->Html->url('/ckeditor/ckeditor.js', true); ?>"></script>
<script type="text/javascript">
$(document).ready(function() {
	CKEDITOR.replace('editor',
	{
		filebrowserBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor', true); ?>",
		filebrowserImageBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor&filter=image', true); ?>",
		filebrowserFlashBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor&filter=flash', true); ?>"
	});
	
	CKEDITOR.replace('editor-1',
	{
		filebrowserBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor', true); ?>",
		filebrowserImageBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor&filter=image', true); ?>",
		filebrowserFlashBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor&filter=flash', true); ?>"
	});
	
	CKEDITOR.replace('editor-2',
	{
		filebrowserBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor', true); ?>",
		filebrowserImageBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor&filter=image', true); ?>",
		filebrowserFlashBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor&filter=flash', true); ?>"
	});
	
	CKEDITOR.replace('editor-3',
	{
		filebrowserBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor', true); ?>",
		filebrowserImageBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor&filter=image', true); ?>",
		filebrowserFlashBrowseUrl : "<?php echo $this->Html->url('/pdw_file_browser/index.php?editor=ckeditor&filter=flash', true); ?>"
	});
});
</script>
</html>
