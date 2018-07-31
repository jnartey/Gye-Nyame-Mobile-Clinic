<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8" />
<?php 
	$isiPad = (bool) strpos($_SERVER['HTTP_USER_AGENT'],'iPad');
	$isiPhone = (bool) strpos($_SERVER['HTTP_USER_AGENT'],'iPhone');

if($isiPad){ ?>
	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width, initial-scale=0.8, minimum-scale=0.8, maximum-scale=0.8, user-scalable=no" />
<?php }else { ?>
	<!-- Set the viewport width to device width for mobile -->
	<meta name="viewport" content="width=device-width, initial-scale=0.8, minimum-scale=0.8, maximum-scale=0.8, user-scalable=no" />
	<meta name="HandheldFriendly" content="True" />
<?php } ?>
	<meta name="description" content="<?php //echo $page_meta_description; ?>"/>
	<meta name="author" content="Fifthlight Media"/>
	<meta name="keywords" content="<?php //echo $page_meta_keywords; ?>"/>
	
	
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo 'Gye Nyame Mobile Clinic'; ?>
	</title>
	<?php
		echo $this->Html->meta('icon');
		echo $this->Html->css('foundation.css');
		echo $this->Html->css('normalize.css');
		echo $this->Html->css('font-awesome.min.css');
		echo $this->Html->css('admin'.DS.'style.css');
		echo $this->Html->css('style.css');
	?>
	<!-- Add fancyBox main JS and CSS files -->
	<link rel="stylesheet" type="text/css" href="<?php echo $this->Html->url(DS.'fancyBox'.DS.'source'.DS.'jquery.fancybox.css?v=2.1.5', true); ?>" media="screen" />
	<?php
		echo $this->Html->script('vendor'.DS.'modernizr');
		echo $this->Html->script('vendor'.DS.'jquery');
		
		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
</head>
<body>
	<?php 
		echo $this->fetch('content'); 
		echo $this->element('admin'.DS.'menu'); 
		
		echo $this->Html->script('vendor'.DS.'fastclick');
		echo $this->Html->script('vendor'.DS.'jquery.form');
		echo $this->Html->script('vendor'.DS.'jquery.validate');
		echo $this->Html->script('vendor'.DS.'readmore.min');
		echo $this->Html->script('foundation.min');
	?>
	<script src="<?php echo $this->Html->url(DS.'fancyBox'.DS.'source'.DS.'jquery.fancybox.js?v=2.1.5', true); ?>"></script>
	<script src="<?php echo $this->Html->url(DS.'fancyBox'.DS.'source'.DS.'helpers'.DS.'jquery.fancybox-buttons.js?v=1.0.5', true); ?>"></script>
	<script src="<?php echo $this->Html->url(DS.'fancyBox'.DS.'source'.DS.'helpers'.DS.'jquery.fancybox-media.js?v=1.0.6', true); ?>"></script>
	<?php
		echo $this->Html->script('admin'.DS.'fancybox');
	?>
	<script>
	$('document').ready(function() {
		$(".tab-title a").click(function() {
		    $('html, body').animate({
		        scrollTop: $('#top').offset().top - 100
		    }, 800);
		});
	});
	
	$('document').ready(function() {
		$(".s-title a").click(function() {
			var target = $(this).attr('href');
			$(".s-title").removeClass('active');
			$(this).parent().addClass('active');
		    $('html, body').animate({
		        scrollTop: $(target).offset().top - 100
		    }, 800);
		});
		
		$(".image-thumbs").fancybox({
			fitToView: false,
			autoSize: true,
			closeClick: false,
			openEffect: 'elastic',
			closeEffect: 'none',
			nextEffect: 'elastic',
			prevEffect: 'elastic',
			openSpeed: 'slow',
			nextSpeed: 'slow',
			prevSpeed: 'slow',
			scrollOutside: false,
			padding: 0
		});
		
		$('.photo-gallery').fancybox({
			padding : 0,
			helpers : {
				thumbs : {
					width  : 50,
					height : 50
				}
			}
		});
	});
			
	$(window).scroll(function() {
		if($(this).scrollTop() > 132){  
	   		$('.sub-menu').addClass("fixed");
	 	}else{
	   		$('.sub-menu').removeClass("fixed");
	 	}
	});
			
	$(window).scroll(function() {
	    var windscroll = $(window).scrollTop();
	    if (windscroll >= 200) {
	        $('.content-org .content-1').each(function(i) {
	            if ($(this).position().top <= windscroll - 200) {
	                $('.sub-menu ul li.s-title.active').removeClass('active');
	                $('.sub-menu ul li.s-title').eq(i).addClass('active');
	            }
	        });

	    } else {

	        $('.sub-menu ul li.s-title.active').removeClass('active');
	        //$('.sub-menu ul li:first').addClass('active');
	    }

	}).scroll();
	
		$('.more').readmore({speed: 500});
		
		$(document).foundation();
    </script>
</body>
</html>
