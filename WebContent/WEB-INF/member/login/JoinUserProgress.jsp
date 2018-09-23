<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--*****************************************
	
*********************************************  -->
<script>
function bar_progress(progress_line_object, direction) {
	var number_of_steps = progress_line_object.data('number-of-steps');
	var now_value = progress_line_object.data('now-value');
	var new_value = 0;
	if(direction == 'right') {
		new_value = now_value + ( 100 / number_of_steps );
	}
	else if(direction == 'left') {
		new_value = now_value - ( 100 / number_of_steps );
	}
	progress_line_object.attr('style', 'width: ' + new_value + '%;').data('now-value', new_value);
}

/*페이지가 로드되면서 function이 시작됨*/
jQuery(document).ready(function() {
    /*Form */
    $('.f1 fieldset:first').fadeIn('slow');
    
    $('.f1 input[type="text"], .f1 input[type="password"], .f1 textarea').on('focus', function() {
    	$(this).removeClass('input-error');
    });
    
    // next step
    $('.f1 .btn-next').on('click', function() {
    	var parent_fieldset = $(this).parents('fieldset');
    	var next_step = true;
    	// navigation steps / progress steps
    	var current_active_step = $(this).parents('.f1').find('.f1-step.active');
    	var progress_line = $(this).parents('.f1').find('.f1-progress-line');
    	
    	// fields validation  : 사용자가 입력을 다하지 않으면 다음으로 넘어가지 않는다. 
    	parent_fieldset.find('input[type="text"], input[type="password"], textarea').each(function() {
    		if( $(this).val() == "" ) {
    			$(this).addClass('input-error');
    			next_step = false;
    		}
    		else {
    			$(this).removeClass('input-error');
    		}
    	});
    	// fields validation  : 사용자가 모든  입력값을 입력했다면  next_step== true 
    	if( next_step ) {
    		parent_fieldset.fadeOut(400, function() {
    			// change icons
    			current_active_step.removeClass('active').addClass('activated').next().addClass('active');
    			// progress bar
    			bar_progress(progress_line, 'right');
    			// show next step
	    		$(this).next().fadeIn();
	    		// scroll window to beginning of the form
    			scroll_to_class( $('.f1'), 20 );
	    	});
    	}
    	
    });
    
    // previous step
    $('.f1 .btn-previous').on('click', function() {
    	// navigation steps / progress steps
    	var current_active_step = $(this).parents('.f1').find('.f1-step.active');
    	var progress_line = $(this).parents('.f1').find('.f1-progress-line');
    	
    	$(this).parents('fieldset').fadeOut(400, function() {
    		// change icons
    		current_active_step.removeClass('active').prev().removeClass('activated').addClass('active');
    		// progress bar
    		bar_progress(progress_line, 'left');
    		// show previous step
    		$(this).prev().fadeIn();
    		// scroll window to beginning of the form
			scroll_to_class( $('.f1'), 20 );
    	});
    });
    
    // submit
    $('.f1').on('submit', function(e) {
    	// fields validation
    	$(this).find('input[type="text"], input[type="password"], textarea').each(function() {
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');
    		}
    		else {
    			$(this).removeClass('input-error');
    		}
    	});
    	// fields validation
    	
    });
    
});


</script>
<div style="padding-top: 70px;"></div>
<div class="row">
	<div
		class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 form-box">
		<form role="form" action="" method="post" class="f1">

			<h3>Register To Our App</h3>
			<p>Fill in the form to get instant access</p>
			<div class="f1-steps text-center">
				<div class="f1-progress">
					<div class="f1-progress-line" data-now-value="16.66"
						data-number-of-steps="3" style="width: 16.66%;"></div>
				</div>
				<div class="f1-step active">
					<div class="f1-step-icon text-center">
						<i class="fa fa-user"></i>
					</div>
					<p>about</p>
				</div>
				<div class="f1-step">
					<div class="f1-step-icon text-center">
						<i class="fa fa-key"></i>
					</div>
					<p>account</p>
				</div>
				<div class="f1-step">
					<div class="f1-step-icon text-center">
						<i class="fa fa-twitter"></i>
					</div>
					<p>social</p>
				</div>
			</div>

			<fieldset>
				<h4>Tell us who you are:</h4>
				<div class="form-group">
					<label class="sr-only" for="f1-first-name">First name</label> <input
						type="text" name="f1-first-name" placeholder="First name..."
						class="f1-first-name form-control" id="f1-first-name">
				</div>
				<div class="form-group">
					<label class="sr-only" for="f1-last-name">Last name</label> <input
						type="text" name="f1-last-name" placeholder="Last name..."
						class="f1-last-name form-control" id="f1-last-name">
				</div>
				<div class="form-group">
					<label class="sr-only" for="f1-about-yourself">About
						yourself</label>
					<textarea name="f1-about-yourself" placeholder="About yourself..."
						class="f1-about-yourself form-control" id="f1-about-yourself"></textarea>
				</div>
				<div class="f1-buttons">
					<button type="button" class="btn btn-next">Next</button>
				</div>
			</fieldset>

			<fieldset>
				<h4>Set up your account:</h4>
				<div class="form-group">
					<label class="sr-only" for="f1-email">Email</label> <input
						type="text" name="f1-email" placeholder="Email..."
						class="f1-email form-control" id="f1-email">
				</div>
				<div class="form-group">
					<label class="sr-only" for="f1-password">Password</label> <input
						type="password" name="f1-password" placeholder="Password..."
						class="f1-password form-control" id="f1-password">
				</div>
				<div class="form-group">
					<label class="sr-only" for="f1-repeat-password">Repeat
						password</label> <input type="password" name="f1-repeat-password"
						placeholder="Repeat password..."
						class="f1-repeat-password form-control" id="f1-repeat-password">
				</div>
				<div class="f1-buttons">
					<button type="button" class="btn btn-previous">Previous</button>
					<button type="button" class="btn btn-next">Next</button>
				</div>
			</fieldset>

			<fieldset>
				<h4>Social media profiles:</h4>
				<div class="form-group">
					<label class="sr-only" for="f1-facebook">Facebook</label> <input
						type="text" name="f1-facebook" placeholder="Facebook..."
						class="f1-facebook form-control" id="f1-facebook">
				</div>
				<div class="form-group">
					<label class="sr-only" for="f1-twitter">Twitter</label> <input
						type="text" name="f1-twitter" placeholder="Twitter..."
						class="f1-twitter form-control" id="f1-twitter">
				</div>
				<div class="form-group">
					<label class="sr-only" for="f1-google-plus">Google plus</label> <input
						type="text" name="f1-google-plus" placeholder="Google plus..."
						class="f1-google-plus form-control" id="f1-google-plus">
				</div>
				<div class="f1-buttons">
					<button type="button" class="btn btn-previous">Previous</button>
					<button type="submit" class="btn btn-submit">Submit</button>
				</div>
			</fieldset>

		</form>
	</div>
</div>
