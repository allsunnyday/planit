<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<div id="pop_supported_browser" class="main_pop pop_supported-browser">
		<div class="pop_wrap pop_shadow">
			<div class="popup_header">
				<h3 class="ff_nsk">볼로 지원 브라우저 안내</h3>
			</div>
			<div class="popup_content">
				<ul class="browser-list">
					<li><a class="ico_browser ico_chrome"><span
							class="browser-name">Chrome</span></a></li>
					<li><a class="ico_browser ico_firefox"><span
							class="browser-name">Firefox</span></a></li>
					<li><a class="ico_browser ico_ie"><span
							class="browser-name">IE 9 이상</span></a></li>
					<li><a class="ico_browser ico_safari"><span
							class="browser-name">Safari</span></a></li>
				</ul>
				<p class="text_noti ff_nsk">현재 지원하지 않는 브라우저로 접속 중입니다. 볼로 웹사이트는 위
					브라우저에 최적화되어 있습니다.</p>
			</div>
			<div class="popup_bottom btn_box">
				<button id="pop_supported_browser_btn" class="btn_common">확인</button>
			</div>
		</div>
		<div class="empty_layer"></div>
	</div>
	<script>
		/*! matchMedia() polyfill - Test a CSS media type/query in JS.
		Authors & copyright (c) 2012: Scott Jehl, Paul Irish, Nicholas Zakas, David Knight. Dual MIT/BSD license */
		window.matchMedia
				|| (window.matchMedia = function() {
					"use strict";
					// For browsers that support matchMedium api such as IE 9 and webkit
					var styleMedia = (window.styleMedia || window.media);
					// For those that don't support matchMedium
					if (!styleMedia) {
						var style = document.createElement('style'), script = document
								.getElementsByTagName('script')[0], info = null;
						style.type = 'text/css';
						style.id = 'matchmediajs-test';
						script.parentNode.insertBefore(style, script);
						// 'style.currentStyle' is used by IE <= 8 and 'window.getComputedStyle' for all other browsers
						info = ('getComputedStyle' in window)
								&& window.getComputedStyle(style, null)
								|| style.currentStyle;
						styleMedia = {
							matchMedium : function(media) {
								var text = '@media '
										+ media
										+ '{ #matchmediajs-test { width: 1px; } }';
								// 'style.styleSheet' is used by IE <= 8 and 'style.textContent' for all other browsers
								if (style.styleSheet) {
									style.styleSheet.cssText = text;
								} else {
									style.textContent = text;
								}
								// Test if media query is true or false
								return info.width === '1px';
							}
						};
					}
					return function(media) {
						return {
							matches : styleMedia.matchMedium(media || 'all'),
							media : media || 'all'
						};
					};
				}());

		(function() {

			if (/msie/i.test(navigator.userAgent)) {

				var agentStr = navigator.userAgent;
				var isLowerIE = !(/Trident\/(5|6|7)\.0/i.test(agentStr));
				var docMode = document.documentMode || 0;

				var addEvent = function(evnt, elem, func) {
					if (elem.addEventListener) { // W3C DOM
						elem.addEventListener(evnt, func, false);
					} else if (elem.attachEvent) { // IE DOM
						elem.attachEvent("on" + evnt, func);
					} else { // No much to do
						elem[evnt] = func;
					}
				};

				if (isLowerIE || docMode < 9) {
					var popEl = document
							.getElementById('pop_supported_browser');
					popEl.style.display = 'block';
					addEvent('click', document
							.getElementById('pop_supported_browser_btn'),
							function() {
								popEl.style.display = 'none';
							});
				}
			}

		}());
	</script>
	<div class="edit">
		<div id="wrap">
			<div id="editor">
				<div data-reactroot="">
					<div id="header" class="cover_header edit_header ">
						<div class="cover align_center" style="height: 1333px;">
							<div class="inner_cover">
								<div class="bg_cover"
									style="background-image: url(&quot;https://img.withvolo.com/image/cover/default_img_01.png&quot;); height: 1333px;"></div>
								<div class="header_in inner_header">
									<div class="lnb white_lnb img_lnb">
										<div class="tit_service">
											<a href="#" class="btn_nav">menu</a>
											<h1 class="logo">
												<a href="https://withvolo.com/" class="ff_pp">VOLO</a>
											</h1>
										</div>
										<div class="button_box clrfix ">
											<button type="button" class="cancel float_left ff_nsk">나가기</button>
											<button type="button" class="save float_left ff_nsk">저장하기</button>
										</div>
									</div>
									<div class="content_top">
										<div class="content_top_in clrfix">
											<div class="content_left">
												<ul class="control_box align_center">
													<li><div class="" hidden="" aria-disabled="false"
															style="position: relative; width: 200px; height: 200px; border-width: 2px; border-color: rgb(102, 102, 102); border-style: dashed; border-radius: 5px;">
															<input type="file" accept="image/*" autocomplete="off"
																style="position: absolute; top: 0px; right: 0px; bottom: 0px; left: 0px; opacity: 1e-05; pointer-events: none;">
														</div>
														<button type="button" class="btn_cover">
															<span class="ico_cover"></span>
														</button>
														<div class="rollover open ff_nsk">표지 사진</div></li>
													<li><div>
															<button type="button" class="btn_open on">
																<span class="ico_open"></span>
															</button>
															<div class="rollover open ff_nsk">모두에게 공개</div>
														</div></li>
													<li><button type="button" class="btn_date on">
															<span class="ico_date"></span>
														</button>
														<div class="rollover date_on ff_nsk">자동 날짜 기록</div></li>
												</ul>
											</div>
											<div class="content_right table">
												<div class="content_right_in align_center table_cell">
													<div class="textarea_box on">
														<textarea class="textarea_inp" rows="1"
															placeholder="여행기 제목을 입력해주세요" style="height: 168px;"></textarea>
													</div>
													<div>
														<div class="trip_schedule table">
															<span class="ico_calendar"
																style="top: -7px; left: 102px;"></span>
															<div class="DateRangePicker">
																<div>
																	<div class="DateRangePickerInput">
																		<div class="DateInput DateInput--open-down">
																			<input type="text" aria-label="여행 시작일"
																				class="DateInput__input needsclick" id="startDate"
																				name="startDate" value="2018-09-15"
																				placeholder="여행 시작일" autocomplete="off"
																				aria-describedby="DateInput__screen-reader-message-startDate">
																			<p id="DateInput__screen-reader-message-startDate"
																				class="screen-reader-only">Press the down arrow
																				key to interact with the calendar and select a date.
																				Press the question mark key to get the keyboard
																				shortcuts for changing dates.</p>
																			<div
																				class="DateInput__display-text DateInput__display-text--has-input">2018.09.15</div>
																		</div>
																		<div class="DateRangePickerInput__arrow"
																			aria-hidden="true" role="presentation">
																			<svg viewBox="0 0 1000 1000">
																				<path
																					d="M694.4 242.4l249.1 249.1c11 11 11 21 0 32L694.4 772.7c-5 5-10 7-16 7s-11-2-16-7c-11-11-11-21 0-32l210.1-210.1H67.1c-13 0-23-10-23-23s10-23 23-23h805.4L662.4 274.5c-21-21.1 11-53.1 32-32.1z"></path></svg>
																		</div>
																		<div class="DateInput DateInput--open-down">
																			<input type="text" aria-label="여행 종료일"
																				class="DateInput__input needsclick" id="endDate"
																				name="endDate" value="" placeholder="여행 종료일"
																				autocomplete="off"
																				aria-describedby="DateInput__screen-reader-message-endDate">
																			<p id="DateInput__screen-reader-message-endDate"
																				class="screen-reader-only">Press the down arrow
																				key to interact with the calendar and select a date.
																				Press the question mark key to get the keyboard
																				shortcuts for changing dates.</p>
																			<div class="DateInput__display-text">여행 종료일</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="trip_border"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="fix_header _fix_header" style="display: none;">
									<div class="inner_fix">
										<div class="tit_service">
											<a href="#" class="btn_nav">menu</a>
											<h1 class="logo">
												<a href="https://withvolo.com/" class="ff_pp">VOLO</a>
											</h1>
										</div>
										<div class="button_box clrfix noimg_button_box">
											<button type="button" class="cancel float_left ff_nsk">나가기</button>
											<button type="button" class="save float_left ff_nsk">저장하기</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div class="area_slide ">
								<div class="slide_user">
									<div class="inner_slide_user">
										<div class="tit_service">
											<button class="btn_nav_close __side_menu _hide_side_menu">close
											</button>
										</div>
										<div class="member_major">
											<div class="major_photo">
												<div class="photo_inner">
													<a href="https://hyunsunjeong.withvolo.com/settings"><img
														src="//withvolo.com/static/dist/ZvnGKAnGlV/img/ico_default.png"
														alt="hyunsunjeong"></a>
												</div>
											</div>
											<div class="major_txt">
												<span class="txt_nickname ff_pp">hyunsunjeong</span><span
													class="txt_account ff_pp">
													https://hyunsunjeong.withvolo.com</span>
											</div>
										</div>
										<a href="https://hyunsunjeong.withvolo.com"
											class="btn_write btn_color ff_nsk">마이 페이지</a>
										<div class="box_slide_menu">
											<ul class="list_menu">
												<li><a href="/notice">공지사항 </a></li>
												<li><a
													href="https://hyunsunjeong.withvolo.com/settings/password">비밀번호
														변경</a></li>
												<li><a
													href="https://hyunsunjeong.withvolo.com/settings/leave">이용해지하기</a></li>
												<li><a href="/logout">로그아웃</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="dimmed op05 _dimmed __side_menu _hide_side_menu"></div>
						</div>
					</div>
					<div id="container">
						<div>
							<div class="content_bottom">
								<div class="content_bottom_in">
									<div class="cont_pdt">
										<button type="button" class="help_btn"></button>
									</div>
									<div class="content_datebox">
										<div class="txt_date ff_nm fw_700">1일차</div>
										<div class="edit_day ff_nm">
											<img
												src="//withvolo.com/static/dist/ZvnGKAnGlV/img/ico_edit.png"
												alt=""><em class="txt_day"><div
													class="SingleDatePicker">
													<div>
														<div class="SingleDatePickerInput">
															<div class="DateInput DateInput--open-down">
																<input type="text" aria-label="Date"
																	class="DateInput__input needsclick"
																	id="cell-0.8371454008002659"
																	name="cell-0.8371454008002659" value="2018-09-15"
																	placeholder="Date" autocomplete="off"
																	aria-describedby="DateInput__screen-reader-message-cell-0.8371454008002659">
																<p
																	id="DateInput__screen-reader-message-cell-0.8371454008002659"
																	class="screen-reader-only">Press the down arrow key
																	to interact with the calendar and select a date. Press
																	the question mark key to get the keyboard shortcuts for
																	changing dates.</p>
																<div
																	class="DateInput__display-text DateInput__display-text--has-input">2018.09.15</div>
															</div>
														</div>
													</div>
												</div></em>
										</div>
									</div>
									<div class="dropzone_cell text_cell" aria-disabled="false"
										style="position: relative;">
										<div class="content_editbox" order="1">
											<div class="tool_wrap">
												<button type="button" class="editbox ff_nsk">
													<span class="ico_add"></span>
												</button>
											</div>
											<div class="edit_textbox ">
												<div class="edit_textcont">
													<div class="edit_textbox type" style="display: none;">
														<div class="edit_textcont add_padding_left">
															<div class="text_editable" contenteditable="true"
																placeholder=""></div>
														</div>
													</div>
													<textarea placeholder="문단 내에서 줄바꿈을 하려면 shift + enter를 누르세요"
														rows="1" class="" style="height: 25px;"></textarea>
												</div>
											</div>
										</div>
										<input type="file" accept="image/*" multiple=""
											autocomplete="off"
											style="position: absolute; top: 0px; right: 0px; bottom: 0px; left: 0px; opacity: 1e-05; pointer-events: none;">
									</div>
									<div class="dropzone_cell cont_pdt" aria-disabled="false"
										style="position: relative;">
										<input type="file" accept="image/*" multiple=""
											autocomplete="off"
											style="position: absolute; top: 0px; right: 0px; bottom: 0px; left: 0px; opacity: 1e-05; pointer-events: none;">
									</div>
								</div>
							</div>
						</div>
						<div class="tag_wrap">
							<div class="tag_box clrfix">
								<div class="tag_title">#태그 (최대 5개)</div>
								<div class="tag_list_box">
									<ul class="tag_list clrfix">
										<li><div class="tag_input">
												<div class="edit_textcont">
													<input type="text">
												</div>
											</div></li>
										<span class="tag_placeholder">원하는 태그를 입력 후 스페이스바를 클릭해
											주세요</span>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="floating_up_btn _go_top_btn" style="display: none;">
						<a href="#" class="top" title="go top button"></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="dimmed-layer"></div>
	<div id="fb-root"></div>
	<script>
		var domain = 'withvolo.com'
		var staticPath = '//withvolo.com/static/dist/ZvnGKAnGlV/'
		var imgPath = '//withvolo.com/static/dist/ZvnGKAnGlV/img/'
		var imageServerPath = 'https://img.withvolo.com'
		var imgOrigin = 'https://img.withvolo.com/image'
		var htOption = {
			locale : 'ko',
			dateFormat : 'YYYY.MM.DD'
		}
	</script>
	<script>
		var editorData = {
			owner : {
				"id" : 457032,
				"username" : "hyunsunjeong",
				"dpName" : null,
				"profile" : null,
				"origin" : "https://hyunsunjeong.withvolo.com",
				"policy" : {
					"terms" : "true",
					"privacy" : "true"
				}
			},
			users : [ {
				"email" : "gream50@naver.com",
				"displayName" : null,
				"profileImage" : null,
				"countries" : [],
				"id" : 457032,
				"name" : "hyunsunjeong",
				"description" : null,
				"policy" : {
					"terms" : "true",
					"privacy" : "true"
				},
				"reason" : null,
				"isAdmin" : false,
				"isTemp" : null,
				"tempDeviceID" : null,
				"isEncrypt" : true,
				"nation" : null
			} ],
			env : 'production'
		};
		//- AIzaSyBfJmBvOd6SM7oTPO21aws-R4wGVgwpwws
	</script>

	<!--script(type='text/javascript', src='https://maps.googleapis.com/maps/api/js?key=AIzaSyBdtezPBDCyCkUQ5dwH88tUIOAnNKQUT7g')-->
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB9AzfbfgQIceuLlgdjdJrIdP6-2aU-jJY"></script>
	<script type="text/javascript"
		src="//withvolo.com/static/dist/ZvnGKAnGlV/js/autotrack.js"></script>
	<script type="text/javascript"
		src="//withvolo.com/static/dist/ZvnGKAnGlV/js/matchMedia.js"></script>
	<script type="text/javascript"
		src="//withvolo.com/static/dist/ZvnGKAnGlV/js/editor.bundle.js"></script>
	<textarea
		style="letter-spacing: normal; line-height: 27px; font-family: &amp; quot; Noto Sans KR&amp;quot;; font-weight: 400; font-size: 18px; font-style: normal; tab-size: 8; text-rendering: auto; text-transform: none; width: 809px; text-indent: 0px; padding: 0px; border-width: 0px; box-sizing: border-box; min-height: 0px !important; max-height: none !important; height: 0px !important; visibility: hidden !important; overflow: hidden !important; position: absolute !important; z-index: -1000 !important; top: 0px !important; right: 0px !important;"></textarea>
