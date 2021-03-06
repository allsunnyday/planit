<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="editer-container" >
<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="flyer" class="clearfix">
						<!-- header -->
						<section id="header">
						<!-- 아래 코드가 클릭을 눌럿을 시에 나타나는 것!  -->
							<!-- <div class="edit" style="display: none;">
								<form>
									<div class="form-group">
										<label>Title</label>
										<input type="text" class="form-control" data-selector=".preview > h1">
									</div>
									<div class="form-group">
										<label>Subtitle</label>
										<input type="text" class="form-control input-sm" data-selector=".preview > h3">
									</div>
									<footer class="form-group">
										<button type="button" class="btn btn-link btn-sm" data-action="cancel">Cancel</button>
										<button type="submit" class="btn btn-default btn-sm pull-right">Done</button>
									</footer>
								</form>
							</div> -->
							<div class="preview">
								<h1>Local News Update</h1>
								<h3 class="dashed" style="margin: 0; padding: 5px;">Add Subtitle</h3>
							</div>
						</section>
						<!-- header  end-->
						<!-- sortable  -->
						<div id="sortable">
						<!-- 타이틀 -->
						<section>
								<div class="edit" style="display: none;">
									<form>
										<div class="form-group">
											<label>Title</label>
											<input type="text" class="form-control" data-selector=".preview > h2">
										</div>
										<footer class="form-group">
											<button type="button" class="btn btn-link btn-sm" data-action="cancel">Cancel</button>
											<button type="submit" class="btn btn-default btn-sm pull-right">Done</button>
										</footer>
									</form>
								</div>
								<div class="preview dashed">
									<button type="button" class="close" data-action="dismiss">&times;</button>
									<h2 style="color: #bdbcbe; text-align: center; text-transform: uppercase; margin: 0;">Sample Title</h2>
								</div>
							</section>
							<!-- 타이틀 -->
							<!-- 관광지 루트   -->
							<section>
								<div class="edit" style="display: none;">
									<form>
										<div class="form-group">
											<label>Title</label>
											<input type="text" class="form-control" data-selector=".preview h3">
										</div>
										<div class="form-group">
											<label>Description</label>
											<textarea class="form-control" rows="3" data-selector=".preview .editable"></textarea>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label>Address</label>
													<div class="input-group input-group-sm">
														<span class="input-group-addon">
															<i class="icon-fixed-width icon-map-marker"></i>
														</span>
														<input type="text" class="form-control input-sm" data-selector=".preview .contacts .address > small">
													</div>
												</div>
												<div class="form-group">
													<label>Phone</label>
													<div class="input-group input-group-sm">
														<span class="input-group-addon">
															<i class="icon-fixed-width icon-phone"></i>
														</span>
														<input type="text" class="form-control input-sm" data-selector=".preview .contacts .phone > small">
													</div>
												</div>
												<div class="form-group">
													<label>Website</label>
													<div class="input-group input-group-sm">
														<span class="input-group-addon">
															<i class="icon-fixed-width icon-globe"></i>
														</span>
														<input type="text" class="form-control input-sm" data-selector=".preview .contacts .website > small">
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label>Email</label>
													<div class="input-group input-group-sm">
														<span class="input-group-addon">
															<i class="icon-fixed-width icon-envelope"></i>
														</span>
														<input type="text" class="form-control input-sm" data-selector=".preview .contacts .email > small">
													</div>
												</div>
												<div class="form-group">
													<label>Facebook</label>
													<div class="input-group input-group-sm">
														<span class="input-group-addon">
															<i class="icon-fixed-width icon-facebook"></i>
														</span>
														<input type="text" class="form-control input-sm" data-selector=".preview .contacts .facebook > small">
													</div>
												</div>
												<div class="form-group">
													<label>Twitter</label>
													<div class="input-group input-group-sm">
														<span class="input-group-addon">
															<i class="icon-fixed-width icon-twitter"></i>
														</span>
														<input type="text" class="form-control input-sm" data-selector=".preview .contacts .twitter > small">
													</div>
												</div>
											</div>
										</div>
										<footer class="form-group">
											<button type="button" class="btn btn-link btn-sm" data-action="cancel">Cancel</button>
											<button type="submit" class="btn btn-default btn-sm pull-right">Done</button>
										</footer>
									</form>
								</div>
								
								<div class="preview dashed">
									<button type="button" class="close" data-action="dismiss">&times;</button>
									<div class="row">
										<div class="col-md-4">
											<img src="http://placehold.it/240x180" class="img-responsive img-thumbnail">
										</div>
										<div class="col-md-8">
											<h3 style="color: #bdbcbe; text-transform: uppercase; margin-top: 0;">About Us</h3>
											<div class="editable" style="color: #bdbcbe;">
												I am the one who knocks. Go science!
											</div>
											<div class="contacts">
												<div class="address">
													<i class="icon-fixed-width icon-map-marker"></i>
													<small class="text-muted">123 Main St.</small>
												</div>
												<div class="email">
													<i class="icon-fixed-width icon-envelope"></i>
													<small class="text-muted">contact@yourwebsite.com</small>
												</div>
												<div class="phone">
													<i class="icon-fixed-width icon-phone"></i>
													<small class="text-muted">(206) 555-1234</small>
												</div>
												<div class="facebook">
													<i class="icon-fixed-width icon-facebook"></i>
													<small class="text-muted">facebook.com/example</small>
												</div>
												<div class="website">
													<i class="icon-fixed-width icon-globe"></i>
													<small class="text-muted">yourwebsite.com</small>
												</div>
												<div class="twitter">
													<i class="icon-fixed-width icon-twitter"></i>
													<small class="text-muted">@twitter_handle</small>
												</div>
											</div>
										</div>
									</div>
								</div>
							</section>
							<!-- 관광지 루트   종료 -->
							<!-- 텍스트 editer -->
							<section>
								<div class="edit" style="display: none;">
									<form>
										<div class="form-group">
											<label>Title</label>
											<input type="text" class="form-control" data-selector=".preview > h3">
										</div>
										<div class="form-group">
											<label>Text</label>
											<textarea class="form-control" rows="4" data-selector=".preview > .editable"></textarea>
										</div>
										<footer class="form-group">
											<button type="button" class="btn btn-link btn-sm" data-action="cancel">Cancel</button>
											<button type="submit" class="btn btn-default btn-sm pull-right">Done</button>
										</footer>
									</form>
								</div>
								<div class="preview dashed">
									<button type="button" class="close" data-action="dismiss">&times;</button>
									<h3 style="color: #bdbcbe; text-transform: uppercase; margin-top: 0;">Sample Paragraph</h3>
									<div class="editable" style="color: #bdbcbe;">
										Click on this text to edit it. You can add content easily by clicking on the "Add Content" bar at the bottom of the page. Drag this and other boxes around to re-order them. When you are finished, you can play with different designs by using the theme picker on the right.
									</div>
								</div>
							</section>
							<!-- 텍스트 editer 정료  -->
							<!-- 갤러리 -->
							<section>
								<div class="edit" style="display: none;">
									<form>
										<div class="row">
											<div class="col-md-4">
												<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
											</div>
											<div class="col-md-8">
												<div class="form-group">
													<label>Title</label>
													<input type="text" class="form-control" data-selector=".preview .col-md-4:nth-child(1) > h5">
												</div>
												<div class="form-group">
													<label>Description</label>
													<textarea class="form-control input-sm" rows="2" data-selector=".preview .col-md-4:nth-child(1) > .editable"></textarea>
												</div>
											</div>
										</div>
										<hr>
										<div class="row">
											<div class="col-md-4">
												<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
											</div>
											<div class="col-md-8">
												<div class="form-group">
													<label>Title</label>
													<input type="text" class="form-control" data-selector=".preview .col-md-4:nth-child(2) > h5">
												</div>
												<div class="form-group">
													<label>Description</label>
													<textarea class="form-control input-sm" rows="2" data-selector=".preview .col-md-4:nth-child(2) > .editable"></textarea>
												</div>
											</div>
										</div>
										<hr>
										<div class="row">
											<div class="col-md-4">
												<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
											</div>
											<div class="col-md-8">
												<div class="form-group">
													<label>Title</label>
													<input type="text" class="form-control" data-selector=".preview .col-md-4:nth-child(3) > h5">
												</div>
												<div class="form-group">
													<label>Description</label>
													<textarea class="form-control input-sm" rows="2" data-selector=".preview .col-md-4:nth-child(3) > .editable"></textarea>
												</div>
											</div>
										</div>
										<footer class="form-group">
											<button type="button" class="btn btn-link btn-sm" data-action="cancel">Cancel</button>
											<button type="submit" class="btn btn-default btn-sm pull-right">Done</button>
										</footer>
									</form>
								</div>
								<div class="preview dashed">
									<button type="button" class="close" data-action="dismiss">&times;</button>
									<div class="row">
										<div class="col-md-4">
											<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
											<h5 style="color: #bdbcbe; text-transform: uppercase;">Add a Title</h5>
											<div class="editable" style="color: #bdbcbe;">
											</div>
										</div>
										<div class="col-md-4">
											<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
											<h5 style="color: #bdbcbe; text-transform: uppercase;">Add a Title</h5>
											<div class="editable" style="color: #bdbcbe;">
											</div>
										</div>
										<div class="col-md-4">
											<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
											<h5 style="color: #bdbcbe; text-transform: uppercase;">Add a Title</h5>
											<div class="editable" style="color: #bdbcbe;">
											</div>
										</div>
									</div>
								</div>
							</section>
							<!-- 갤러리 -->
						</div>
						<!-- sortable  -->
						<!-- 버튼들  -->
						<footer>
							<div class="row" style="margin-bottom: 10px;">
								<div class="col-md-2">
									<div class="widget" data-template="text">
										<span class="icon-stack icon-2x" style="color: #639ac2;">
											<i class="icon-circle icon-stack-base"></i>
											<i class="icon-file-text icon-light"></i>
										</span>
										<br><small>Text</small>
									</div>
								</div>
								<div class="col-md-2">
									<div class="widget" data-template="title">
										<span class="icon-stack icon-2x" style="color: #639ac2;">
											<i class="icon-circle icon-stack-base"></i>
											<i class="icon-font icon-light"></i>
										</span>
										<br><small>Title</small>
									</div>
								</div>
								<div class="col-md-2">
									<div class="widget" data-template="gallery">
										<span class="icon-stack icon-2x" style="color: #63a064;">
											<i class="icon-circle icon-stack-base"></i>
											<i class="icon-th icon-light"></i>
										</span>
										<br><small>Gallery</small>
									</div>
								</div>
								<div class="col-md-2">
									<div class="widget" data-template="about">
										<span class="icon-stack icon-2x" style="color: #dd9329;">
											<i class="icon-circle icon-stack-base"></i>
											<i class="icon-user icon-light"></i>
										</span>
										<br><small>About Us</small>
									</div>
								</div>
							</div>

							<div class="row">
							</div>
						</footer>
						<!-- 버튼들  -->
					</div>
				</div>
			</div>
		</div>
		<!--container  -->
</div>
<!-- editer-container -->
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		 -->
		
		<!--
		<script src="./scripts/popline/build/jquery.popline.min.js"></script>
		-->
		<script>
			$(function () {
				$('#flyer').on('click', '.preview', function () {
					var section = $(this).closest('section');

					if (section.length > 0) {
						$('[data-selector]', section).each(function (i) {
							var target = section.find($(this).data('selector'));

							if ($(this).is('input') === true) {
								$(this).val(target.text());
							}

							else if ($(this).is('textarea') === true) {
								$(this).val($.trim(target.html()));
							}
						});

						$(this).hide(); section.find('.edit').show().addClass('animated bounceIn');
					}
				});

				$('#flyer').on('click', '.preview button[data-action="dismiss"]', function (event) {
					var section = $(this).closest('section');

					if (section.length > 0) {
						section.slideUp(250, function () {
							section.remove();
						});
					}

					event.stopImmediatePropagation();
				});

				$('#flyer').on('submit', '.edit form', function (event) {
					var section = $(this).closest('section');

					if (section.length > 0) {
						$('[data-selector]', section).each(function (i) {
							section.find($(this).data('selector')).html($(this).val());
						});

						$(this).closest('.edit').hide(); section.find('.preview').show().addClass('animated bounceIn');
					}

					event.preventDefault();
				});

				$('#flyer').on('click', '.edit form button[data-action="cancel"]', function () {
					var section = $(this).closest('section');

					if (section.length > 0) {
						$(this).closest('.edit').hide(); section.find('.preview').show().addClass('animated bounceIn');
					}
				});

				$('#sortable').sortable({
					distance: 25,
					placeholder: 'dashed'
				});

				$('#sortable').disableSelection();

				$('.widget').click(function () {
					var template = $('script[data-template="' + $(this).data('template') + '"]');

					if (template.length > 0) {
						$('#sortable').append(template.html());
						$('#sortable > section').last().show().addClass('animated bounceIn');
					}

					$('html, body').animate({ scrollTop: $(document).height() }, 'slow');
				});

				/*
				$('.editable').popline({
					position: 'fixed',
					enable: ["bold", "italic", "underline", "link", "orderedList", "unOrderedList"]
				});
				*/
			});
		</script>
		<script data-template="title" type="text/template">
			<section style="display: none;">
				<div class="edit" style="display: none;">
					<form>
						<div class="form-group">
							<label>Title</label>
							<input type="text" class="form-control" data-selector=".preview > h2">
						</div>
						<footer class="form-group">
							<button type="button" class="btn btn-link btn-sm" data-action="cancel">Cancel</button>
							<button type="submit" class="btn btn-default btn-sm pull-right">Done</button>
						</footer>
					</form>
				</div>
				<div class="preview dashed">
					<button type="button" class="close" data-action="dismiss">&times;</button>
					<h2 style="color: #bdbcbe; text-align: center; text-transform: uppercase; margin: 0;">Sample Title</h2>
				</div>
			</section>
		</script>
		<script data-template="text" type="text/template">
			<section style="display: none;">
				<div class="edit" style="display: none;">
					<form>
						<div class="form-group">
							<label>Title</label>
							<input type="text" class="form-control" data-selector=".preview > h3">
						</div>
						<div class="form-group">
							<label>Text</label>
							<textarea class="form-control" rows="4" data-selector=".preview > .editable"></textarea>
						</div>
						<footer class="form-group">
							<button type="button" class="btn btn-link btn-sm" data-action="cancel">Cancel</button>
							<button type="submit" class="btn btn-default btn-sm pull-right">Done</button>
						</footer>
					</form>
				</div>
				<div class="preview dashed">
					<button type="button" class="close" data-action="dismiss">&times;</button>
					<h3 style="color: #bdbcbe; text-transform: uppercase; margin-top: 0;">Sample Paragraph</h3>
					<div class="editable" style="color: #bdbcbe;">
						Click on this text to edit it. You can add content easily by clicking on the "Add Content" bar at the bottom of the page. Drag this and other boxes around to re-order them. When you are finished, you can play with different designs by using the theme picker on the right.
					</div>
				</div>
			</section>
		</script>
		<script data-template="gallery" type="text/template">
			<section>
				<div class="edit" style="display: none;">
					<form>
						<div class="row">
							<div class="col-md-4">
								<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" data-selector=".preview .col-md-4:nth-child(1) > h5">
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea class="form-control input-sm" rows="2" data-selector=".preview .col-md-4:nth-child(1) > .editable"></textarea>
								</div>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-4">
								<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" data-selector=".preview .col-md-4:nth-child(2) > h5">
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea class="form-control input-sm" rows="2" data-selector=".preview .col-md-4:nth-child(2) > .editable"></textarea>
								</div>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-md-4">
								<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<label>Title</label>
									<input type="text" class="form-control" data-selector=".preview .col-md-4:nth-child(3) > h5">
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea class="form-control input-sm" rows="2" data-selector=".preview .col-md-4:nth-child(3) > .editable"></textarea>
								</div>
							</div>
						</div>
						<footer class="form-group">
							<button type="button" class="btn btn-link btn-sm" data-action="cancel">Cancel</button>
							<button type="submit" class="btn btn-default btn-sm pull-right">Done</button>
						</footer>
					</form>
				</div>
				<div class="preview dashed">
					<button type="button" class="close" data-action="dismiss">&times;</button>
					<div class="row">
						<div class="col-md-4">
							<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
							<h5 style="color: #bdbcbe; text-transform: uppercase;">Add a Title</h5>
							<div class="editable" style="color: #bdbcbe;">
							</div>
						</div>
						<div class="col-md-4">
							<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
							<h5 style="color: #bdbcbe; text-transform: uppercase;">Add a Title</h5>
							<div class="editable" style="color: #bdbcbe;">
							</div>
						</div>
						<div class="col-md-4">
							<img src="http://placehold.it/240x160" class="img-responsive img-thumbnail">
							<h5 style="color: #bdbcbe; text-transform: uppercase;">Add a Title</h5>
							<div class="editable" style="color: #bdbcbe;">
							</div>
						</div>
					</div>
				</div>
			</section>
		</script>
		<script data-template="about" type="text/template">
			<section>
				<div class="edit" style="display: none;">
					<form>
						<div class="form-group">
							<label>Title</label>
							<input type="text" class="form-control" data-selector=".preview h3">
						</div>
						<div class="form-group">
							<label>Description</label>
							<textarea class="form-control" rows="3" data-selector=".preview .editable"></textarea>
						</div>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label>Address</label>
									<div class="input-group input-group-sm">
										<span class="input-group-addon">
											<i class="icon-fixed-width icon-map-marker"></i>
										</span>
										<input type="text" class="form-control input-sm" data-selector=".preview .contacts .address > small">
									</div>
								</div>
								<div class="form-group">
									<label>Phone</label>
									<div class="input-group input-group-sm">
										<span class="input-group-addon">
											<i class="icon-fixed-width icon-phone"></i>
										</span>
										<input type="text" class="form-control input-sm" data-selector=".preview .contacts .phone > small">
									</div>
								</div>
								<div class="form-group">
									<label>Website</label>
									<div class="input-group input-group-sm">
										<span class="input-group-addon">
											<i class="icon-fixed-width icon-globe"></i>
										</span>
										<input type="text" class="form-control input-sm" data-selector=".preview .contacts .website > small">
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Email</label>
									<div class="input-group input-group-sm">
										<span class="input-group-addon">
											<i class="icon-fixed-width icon-envelope"></i>
										</span>
										<input type="text" class="form-control input-sm" data-selector=".preview .contacts .email > small">
									</div>
								</div>
								<div class="form-group">
									<label>Facebook</label>
									<div class="input-group input-group-sm">
										<span class="input-group-addon">
											<i class="icon-fixed-width icon-facebook"></i>
										</span>
										<input type="text" class="form-control input-sm" data-selector=".preview .contacts .facebook > small">
									</div>
								</div>
								<div class="form-group">
									<label>Twitter</label>
									<div class="input-group input-group-sm">
										<span class="input-group-addon">
											<i class="icon-fixed-width icon-twitter"></i>
										</span>
										<input type="text" class="form-control input-sm" data-selector=".preview .contacts .twitter > small">
									</div>
								</div>
							</div>
						</div>
						<footer class="form-group">
							<button type="button" class="btn btn-link btn-sm" data-action="cancel">Cancel</button>
							<button type="submit" class="btn btn-default btn-sm pull-right">Done</button>
						</footer>
					</form>
				</div>
				<div class="preview dashed">
					<button type="button" class="close" data-action="dismiss">&times;</button>
					<div class="row">
						<div class="col-md-4">
							<img src="http://placehold.it/240x180" class="img-responsive img-thumbnail">
						</div>
						<div class="col-md-8">
							<h3 style="color: #bdbcbe; text-transform: uppercase; margin-top: 0;">About Us</h3>
							<div class="editable" style="color: #bdbcbe;">
								I am the one who knocks. Go science!
							</div>
							<div class="contacts">
								<div class="address">
									<i class="icon-fixed-width icon-map-marker"></i>
									<small class="text-muted">123 Main St.</small>
								</div>
								<div class="email">
									<i class="icon-fixed-width icon-envelope"></i>
									<small class="text-muted">contact@yourwebsite.com</small>
								</div>
								<div class="phone">
									<i class="icon-fixed-width icon-phone"></i>
									<small class="text-muted">(206) 555-1234</small>
								</div>
								<div class="facebook">
									<i class="icon-fixed-width icon-facebook"></i>
									<small class="text-muted">facebook.com/example</small>
								</div>
								<div class="website">
									<i class="icon-fixed-width icon-globe"></i>
									<small class="text-muted">yourwebsite.com</small>
								</div>
								<div class="twitter">
									<i class="icon-fixed-width icon-twitter"></i>
									<small class="text-muted">@twitter_handle</small>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</script>