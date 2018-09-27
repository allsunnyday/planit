<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- table형식을 위한 css -->
<link href="<c:url value='/main_theme/css/bbpress.css'/>" rel="stylesheet">

<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

			<div class="clearfix"></div>
			<div class="divider"></div>

			<div class="general-title text-center">
				<h3>Client Request</h3>
				<p>These clients are interested in your business! Give them a hand</p>
				<hr>
			</div>

			<div class="text-center">
				<form id="bbsearch" class="form-inline">
					<input type="text" class="form-control"
						placeholder="Search on support forums">
					<button type="submit" class="btn btn-primary">Search</button>
				</form>
			</div>

			<div class="clearfix"></div>
			<div class="divider"></div>

			<div id="bbpress-forums">
				<ul class="bbp-forums">
					<li class="bbp-header">
						<ul class="forum-titles">
							<li class="bbp-forum-info">QUESTIONS</li>
							<li class="bbp-forum-reply-count">STATUS</li>
							<li class="bbp-forum-freshness">POSTTIME</li>
						</ul>
					</li>
					<!-- .bbp-header -->

					<li class="bbp-body">
						<ul
							class="forum type-forum status-publish hentry loop-item-0 odd bbp-forum-status-open bbp-forum-visibility-publish">
							<li class="bbp-forum-info"><a class="bbp-forum-title"
								href="support.html#" title="General">QUESTION TOPIC</a>
								<div class="bbp-forum-content">how long can we enjoy
									party??</div></li>
							<li class="bbp-forum-reply-count">190</li>
							<li class="bbp-forum-freshness"><a href="#"
								title="Reply To: Please NOTIFY YOUR CUSTOMERS of UPDATES">2
									days, 7 hours ago</a>
								<p class="bbp-topic-meta">
									<span class="bbp-topic-freshness-author"> <a href="#"
										title="View admin profile" class="bbp-author-avatar"
										rel="nofollow"> <img alt=""
											src="http://0.gravatar.com/avatar/0d91c692acdcc514b006840d870dd4a6?s=14&d=http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=14&r=G"
											class="avatar" height="20" width="20" />
									</a>&nbsp;<a href="#" title="View admin profile"
										class="bbp-author-name" rel="nofollow">Matt Stinson</a>
									</span>
								</p></li>
						</ul> <!-- end bbp forums -->
					</li>

					<li class="bbp-body">
						<ul
							class="forum type-forum status-publish hentry loop-item-0 odd bbp-forum-status-open bbp-forum-visibility-publish">
							<li class="bbp-forum-info"><a class="bbp-forum-title"
								href="support.html#" title="General">Site Feedback</a>
								<div class="bbp-forum-content">Lorem Ipsum is simply dummy
									text of the printing and typesetting industry.</div></li>
							<li class="bbp-forum-reply-count">2,997</li>
							<li class="bbp-forum-freshness"><a href="support.html#"
								title="Reply To: Please NOTIFY YOUR CUSTOMERS of UPDATES">2
									days, 7 hours ago</a>
								<p class="bbp-topic-meta">
									<span class="bbp-topic-freshness-author"> <a href="#"
										title="View admin profile" class="bbp-author-avatar"
										rel="nofollow"> <img alt=""
											src="http://0.gravatar.com/avatar/0d91c692acdcc514b006840d870dd4a6?s=14&d=http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=14&r=G"
											class="avatar" height="20" width="20" />
									</a>&nbsp;<a href="#" title="View admin profile"
										class="bbp-author-name" rel="nofollow">Matt Stinson</a>
									</span>
								</p></li>
						</ul> <!-- end bbp forums -->
					</li>

					<li class="bbp-body">
						<ul
							class="forum type-forum status-publish hentry loop-item-0 odd bbp-forum-status-open bbp-forum-visibility-publish">
							<li class="bbp-forum-info"><a class="bbp-forum-title"
								href="support.html#" title="General">Pre-Sale Questions</a>
								<div class="bbp-forum-content">Lorem Ipsum is simply dummy
									text of the printing and typesetting industry.</div></li>
							<li class="bbp-forum-reply-count">2,188</li>
							<li class="bbp-forum-freshness"><a href="support.html#"
								title="Reply To: Please NOTIFY YOUR CUSTOMERS of UPDATES">2
									days, 7 hours ago</a>
								<p class="bbp-topic-meta">
									<span class="bbp-topic-freshness-author"> <a href="#"
										title="View admin profile" class="bbp-author-avatar"
										rel="nofollow"> <img alt=""
											src="http://0.gravatar.com/avatar/0d91c692acdcc514b006840d870dd4a6?s=14&d=http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=14&r=G"
											class="avatar" height="20" width="20" />
									</a>&nbsp;<a href="#" title="View admin profile"
										class="bbp-author-name" rel="nofollow">Matt Stinson</a>
									</span>
								</p></li>
						</ul> <!-- end bbp forums -->
					</li>

					<li class="bbp-body">
						<ul
							class="forum type-forum status-publish hentry loop-item-0 odd bbp-forum-status-open bbp-forum-visibility-publish">
							<li class="bbp-forum-info"><a class="bbp-forum-title"
								href="support.html#" title="General">Item Support</a>
								<div class="bbp-forum-content">Lorem Ipsum is simply dummy
									text of the printing and typesetting industry.</div></li>
							<li class="bbp-forum-reply-count">8,553</li>
							<li class="bbp-forum-freshness"><a href="support.html#"
								title="Reply To: Please NOTIFY YOUR CUSTOMERS of UPDATES">2
									days, 7 hours ago</a>
								<p class="bbp-topic-meta">
									<span class="bbp-topic-freshness-author"> <a href="#"
										title="View admin profile" class="bbp-author-avatar"
										rel="nofollow"> <img alt=""
											src="http://0.gravatar.com/avatar/0d91c692acdcc514b006840d870dd4a6?s=14&d=http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=14&r=G"
											class="avatar" height="20" width="20" />
									</a>&nbsp;<a href="#" title="View admin profile"
										class="bbp-author-name" rel="nofollow">Matt Stinson</a>
									</span>
								</p></li>
						</ul> <!-- end bbp forums -->
					</li>

					<li class="bbp-body">
						<ul
							class="forum type-forum status-publish hentry loop-item-0 odd bbp-forum-status-open bbp-forum-visibility-publish">
							<li class="bbp-forum-info"><a class="bbp-forum-title"
								href="support.html#" title="General">Global off topic</a>
								<div class="bbp-forum-content">Lorem Ipsum is simply dummy
									text of the printing and typesetting industry.</div></li>
							<li class="bbp-forum-reply-count">2,698</li>
							<li class="bbp-forum-freshness"><a href="support.html#"
								title="Reply To: Please NOTIFY YOUR CUSTOMERS of UPDATES">2
									days, 7 hours ago</a>
								<p class="bbp-topic-meta">
									<span class="bbp-topic-freshness-author"> <a href="#"
										title="View admin profile" class="bbp-author-avatar"
										rel="nofollow"> <img alt=""
											src="http://0.gravatar.com/avatar/0d91c692acdcc514b006840d870dd4a6?s=14&d=http://0.gravatar.com/avatar/ad516503a11cd5ca435acc9bb6523536?s=14&r=G"
											class="avatar" height="20" width="20" />
									</a>&nbsp;<a href="#" title="View admin profile"
										class="bbp-author-name" rel="nofollow">Matt Stinson</a>
									</span>
								</p></li>
						</ul> <!-- end bbp forums -->
					</li>
				</ul>
				<!-- .forums-directory -->
			</div>
			<!-- /bbpress -->

		</div>
		<!-- end content -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->

<div class="dmtop">Scroll to Top</div>

