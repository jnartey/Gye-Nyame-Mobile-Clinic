<div class="large-12 columns home-wrapper" style="background-image: url(<?php echo $this->Html->url(DS.'img'.DS.'banners'.DS.'thumb'.DS.'large'.DS.$banner['Banner']['banner_image'], true) ?>);">
	<div class="overlay"></div>
	<div class="large-12 columns wrapper">
		<div class="large-12 columns head antialiased">
			<div class="row">
				<div class="large-3 columns logo">
					<h1><a href="<?php $this->Html->url(DS.'pages'.DS, true) ?>"><?php echo $this->Html->image('logo.png', array('alt' => 'gye nyame mobile clinic')); ?></a></h1>
				</div>
				<div class="large-9 columns text-right">
					<a class="donate" href="<?php echo $this->Html->url(DS.'pages'.DS.'get-involved'.DS, true) ?>">donate</a>
					<a class="volunteer" href="<?php echo $this->Html->url(DS.'pages'.DS.'contact'.DS, true) ?>">volunteer</a>
					<div class="country-wrap">
						<!-- <a class="uk" href="#"></a> -->
						<a class="germany" href="#"></a>
					</div>
				</div>
			</div>
		</div>
		<div class="large-12 columns content antialiased">
			<div class="row">
				<div class="large-6 columns">
					<?php
						echo '<h2>'.$banner['Banner']['title'].'</h2>';
						echo '<p>'.$banner['Banner']['description'].'</p>';
						if(substr($banner['Banner']['url'], 0, 7 ) === "http://" || substr($banner['Banner']['url'], 0, 8 ) === "https://"){
							echo '<a class="read-more" href="'.$banner['Banner']['url'].'">'.$banner['Banner']['url_title'].'</a>';
						}else{
							echo '<a class="read-more" href="'.$this->Html->url(DS.'pages'.DS.$banner['Banner']['url'], true).'">'.$banner['Banner']['url_title'].'</a>';
						}
						
						echo '<br />';
					?>
					<div id="output-message"></div>
						<?php echo $this->Form->create('Newsletter', array('url' => array('controller' => 'pages', 'action' => 'newsletter'), 'id' => 'newsletter', 'type' => 'file')); 
							echo '<div class="row collapse">';
							echo '<div class="small-9 columns">';
							echo $this->Form->input('email', array('label'=>false, 'placeholder'=>'NEWSLETTER SIGN-UP', 'div'=>false, 'class'=>'required email'));
							echo '</div>';
						?>
							<div class="small-3 columns">
								<input type="submit" class="newsletter-button" value="go" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="large-12 columns footer text-center antialiased">
			<div class="row">
				<ul class="footer-links">
					<li><a href="<?php echo $this->Html->url(DS.'pages'.DS.'about-us', true); ?>"><?php echo $this->Html->image('about-us.png', array('alt' => 'gye nyame mobile clinic')); ?> About Us <span class="fa fa-fw fa-chevron-right"></span></a></li>
					<li><a href="<?php echo $this->Html->url(DS.'pages'.DS.'projects', true); ?>"><?php echo $this->Html->image('projects.png', array('alt' => 'gye nyame mobile clinic')); ?> Projects <span class="fa fa-fw fa-chevron-right"></span></a></li>
					<li><a href="<?php echo $this->Html->url(DS.'pages'.DS.'sponsorship', true); ?>"><?php echo $this->Html->image('sponsorship.png', array('alt' => 'gye nyame mobile clinic')); ?> Sponsorship <span class="fa fa-fw fa-chevron-right"></span></a></li>
					<li><a href="<?php echo $this->Html->url(DS.'pages'.DS.'gallery', true); ?>"><?php echo $this->Html->image('gallery.png', array('alt' => 'gye nyame mobile clinic')); ?> Gallery <span class="fa fa-fw fa-chevron-right"></span></a></li>
					<li><a href="<?php echo $this->Html->url(DS.'pages'.DS.'news', true); ?>"><?php echo $this->Html->image('news.png', array('alt' => 'gye nyame mobile clinic')); ?> News <span class="fa fa-fw fa-chevron-right"></span></a></li>
					<li><a href="<?php echo $this->Html->url(DS.'pages'.DS.'contact', true); ?>"><?php echo $this->Html->image('contact.png', array('alt' => 'gye nyame mobile clinic')); ?> Contact <span class="fa fa-fw fa-chevron-right"></span></a></li>
				</ul>
				<h6>Gye Nyame is an Israeli registered charity No. 580472017</h6>
			</div>
		</div>
	</div>
</div>
<script>
	//<![CDATA[
	//prepare the form when the DOM is ready
	$(document).ready(function() {
	    var options = {
	        target:        '#output-message',   // target element(s) to be updated with server response
	        beforeSubmit:  showRequest,  // pre-submit callback
	        success:       showResponse  // post-submit callback

	        // other available options:
	        //url:       url         // override for form's 'action' attribute
	        //type:      type        // 'get' or 'post', override for form's 'method' attribute
	        //dataType:  null        // 'xml', 'script', or 'json' (expected server response type)
	        //clearForm: true        // clear all form fields after successful submit
	        //resetForm: true        // reset the form after successful submit

	        // $.ajax options can be used here too, for example:
	        //timeout:   3000
	    };

	    $("#newsletter").validate();
	    // bind form using 'ajaxForm'
	    $('#newsletter').ajaxForm(options);
	});

	// pre-submit callback
	function showRequest(formData, jqForm, options) {
	    // formData is an array; here we use $.param to convert it to a string to display it
	    // but the form plugin does this for you automatically when it submits the data
	    var queryString = $.param(formData);

	    // jqForm is a jQuery object encapsulating the form element.  To access the
	    // DOM element for the form do this:
	    // var formElement = jqForm[0];
		
		if(confirm('You are about to send the information below to Gye Nyame Mobile Clinic. Please confirm... \n\n Email: ' + $("#NewsletterEmail").val()
		+ '')){
	        return true;
	    }else {
	        // here we could return false to prevent the form from being submitted;
	        // returning anything other than false will allow the form submit to continue
	        return false;
	    }
	}

	// post-submit callback
	function showResponse(responseText, statusText, xhr, $form)  {
	    // for normal html responses, the first argument to the success callback
	    // is the XMLHttpRequest object's responseText property

	    // if the ajaxForm method was passed an Options Object with the dataType
	    // property set to 'xml' then the first argument to the success callback
	    // is the XMLHttpRequest object's responseXML property

	    // if the ajaxForm method was passed an Options Object with the dataType
	    // property set to 'json' then the first argument to the success callback
	    // is the json data object returned by the server

	    //alert('status: ' + statusText + '\n\nresponseText: \n' + responseText +
	      //  '\n\nThe output div should have already been updated with the responseText.');
	      $('#output-message').css('display', 'block');
		  //$("#output-message").html('<br />' + responseText);
	      $('#newsletter').get(0).reset();
	}
	//]]>
</script>
