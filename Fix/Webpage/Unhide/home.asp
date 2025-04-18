<!DOCTYPE html>
<html lang="en">
	<head>
	    <% aspGetCheckUser(); %>

        <meta http-equiv="X-UA-Compatible" content="IE=7" />
        <meta http-equiv="X-UA-Compatible" content="IE=8">

		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title><% aspGetTitle (); %></title>

		<meta id="i18n_pagename" content="index-common-menu">

		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

        <!-- UC强制全屏 -->
        <meta name="full-screen" content="yes">
        <!-- QQ强制全屏 -->
        <meta name="x5-fullscreen" content="true">
        <!-- UC应用模式 -->
        <meta name="browsermode" content="application">
        <!-- QQ应用模式 -->
        <meta name="x5-page-mode" content="app">

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />

		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<!--<link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />-->

		<link rel="stylesheet" href="assets/css/jquery-ui.custom.min.css" />
		<link rel="stylesheet" href="assets/css/jquery.gritter.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/ace-fonts.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />

		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<style>
	.gritter-close {
		display: block;
	}

.jbc-round {
    border-radius: 4px !important;
}

.form-group {
	margin-bottom: 5px;
}

.jbcv2_loading {
	top: 53%;
	position: fixed;
	left: 50%;
}

.jbc_header {
    padding-left:25%;
}

.input_text {
	padding-left: 2% !important;
}

.sim_on{
	background: url(assets/cpets/sim_ready.png) no-repeat bottom;
	height:41px;
	width:32px;
	float:left;
}
.sim_off{
	background: url(assets/cpets/sim_no_ready.png) no-repeat bottom;
	height:41px;
	width:32px;
	float:left;
}
.sim_pin{
	background: url(assets/cpets/sim_pin_lock.png) no-repeat bottom;
	height:41px;
	width:32px;
	float:left;
}
.sim_puk{
	background: url(assets/cpets/sim_puk_lock.png) no-repeat bottom;
	height:41px;
	width:32px;
	float:left;
}
.sms_full{
	background: url(assets/cpets/sms_full.png) no-repeat bottom;
	height:41px;
	width:32px;
	float:left;
}
.sms_new{
	background: url(assets/cpets/sms_new.png) no-repeat bottom;
	height:41px;
	width:32px;
	float:left;
}
.sms_ok{
	background: url(assets/cpets/sms_ok.png) no-repeat bottom;
	height:41px;
	width:32px;
	float:left;
}
.signal_none{
	margin: auto;
	background: url(assets/cpets/delete_cross.png) no-repeat center;
	background-position:left center;
	float:left;
}
.signal_0{
	background: url(assets/cpets/signal-0.png) no-repeat bottom;
	height:41px;
	width:32px;
	float:left;
}
.signal_1{
	background: url(assets/cpets/signal-1.png) no-repeat bottom;
	height:51px;
	width:32px;
	float:left;
}
.signal_2{
	background: url(assets/cpets/signal-2.png) no-repeat bottom;
	height:49px;
	width:32px;
	float:left;
}
.signal_3{
	background: url(assets/cpets/signal-3.png) no-repeat bottom;
	height:45px;
	width:32px;
	float:left;
}

.signal_4{
	background: url(assets/cpets/signal-4.png) no-repeat bottom;
	height:42px;
	width:32px;
	float:left;
}

@media screen and (max-device-width:480px){
    .jbc_mobileui
    {
        padding-top: 0px !important;
    }

    .jbc_mobileui > li {
        vertical-align: middle;
    }
}
	.modal-content {
		border-radius: 5px;
	}
	.modal-footer {
		border-radius: 5px;
	}

.jbc-loading-icon {
    position: relative;
    left: 45% !important;
    top: 45%;
}
</style>

	</head>

	<body class="no-skin">
		<!-- #section:basics/navbar.layout -->
		<div id="navbar" class="navbar navbar-default">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container container" id="navbar-container">
				<!-- #section:basics/sidebar.mobile.toggle -->
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="home.asp" class="navbar-brand">
						<img src="assets/cpets/5Glogo.png" class="msg-photo" alt="LTE CPE" />
					</a>

					<!-- /section:basics/navbar.layout.brand -->

					<!-- #section:basics/navbar.toggle -->

					<!-- /section:basics/navbar.toggle -->
				</div>

				<div class="navbar-header jbc_header <% menu_show('Toronggo_logo'); %>">
					<a href="home.asp" class="navbar-brand">
						<img src="assets/cpets/Toronggo.png" class="msg-photo" alt="LTE CPE" />
					</a>
				</div>

				<!-- #section:basics/navbar.dropdown -->
				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav jbc_mobileui" style="padding-top: 35px;">

						<li>
							<div class="sim_off" title="Bob's Avatar" id="img_id_sim" />
						</li>

						<li class="sms_icon hide">
							<div class="sms_ok" title="sms" id="img_id_sms" />
							    <!-- <sup style="left: 5px;font-weight: bold; top: -10px;" id="sms_sup"></sup> -->
							<!--</div>-->
						</li>

						<li>
							<div class="signal_0" title="Bob's Avatar" id="img_id_signal" />
						</li>

						<li class="<% menu_support_wifi(); %>">
							<img src="assets/cpets/wifi.png" title="Bob's Avatar" id="img_id_wifi"/>
							<sup style="right: 2px; font-weight: bold; top: -10px;" id="top_wifi_client">0</sup>
						</li>

						<!--
						<li class="grey">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-check"></i>
									4 Tasks to complete
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Software Update</span>
											<span class="pull-right">65%</span>
										</div>

										<div class="progress progress-mini">
											<div style="width:65%" class="progress-bar"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Hardware Upgrade</span>
											<span class="pull-right">35%</span>
										</div>

										<div class="progress progress-mini">
											<div style="width:35%" class="progress-bar progress-bar-danger"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Unit Testing</span>
											<span class="pull-right">15%</span>
										</div>

										<div class="progress progress-mini">
											<div style="width:15%" class="progress-bar progress-bar-warning"></div>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">Bug Fixes</span>
											<span class="pull-right">90%</span>
										</div>

										<div class="progress progress-mini progress-striped active">
											<div style="width:90%" class="progress-bar progress-bar-success"></div>
										</div>
									</a>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See tasks with details
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-bell icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-exclamation-triangle"></i>
									8 Notifications
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
												New Comments
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<i class="btn btn-xs btn-primary fa fa-user"></i>
										Bob just signed up as an editor ...
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
												New Orders
											</span>
											<span class="pull-right badge badge-success">+8</span>
										</div>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
												Followers
											</span>
											<span class="pull-right badge badge-info">+11</span>
										</div>
									</a>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See all notifications
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="green">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<img src="assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
								<span class="badge badge-success">5</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									5 Messages
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#">
												<img src="assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Alex:</span>
														Ciao sociis natoque penatibus et auctor ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>a moment ago</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Susan:</span>
														Vestibulum id ligula porta felis euismod ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>20 minutes ago</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Bob:</span>
														Nullam quis risus eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>3:15 pm</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="assets/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Kate:</span>
														Ciao sociis natoque eget urna mollis ornare ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>1:33 pm</span>
													</span>
												</span>
											</a>
										</li>

										<li>
											<a href="#">
												<img src="assets/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar" />
												<span class="msg-body">
													<span class="msg-title">
														<span class="blue">Fred:</span>
														Vestibulum id penatibus et auctor  ...
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i>
														<span>10:09 am</span>
													</span>
												</span>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="../inbox.html">
										See all messages
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>
						-->

						<!-- #section:basics/navbar.user_menu -->
						<li class="light-blue">
							<a href="javascript:;" onclick="logout()" style="border-radius: 3px !important;">
								<i class="ace-icon fa fa-power-off"></i>
                                <span class="i18n" name="logout"></span>
							</a>
							<!--
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome,</small>
									Jason
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="../profile.html">
										<i class="ace-icon fa fa-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="javascript:;" onclick="logout()">
										<i class="ace-icon fa fa-power-off"></i>
										Logout
									</a>
								</li>
							</ul>
							-->

						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
				</script>

				<ul class="nav nav-list">
					<li class="">
						<a data-url="page/jbc-wizard" href="home.asp#page/jbc-wizard">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text i18n" name="menu_wizard"></span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text i18n" name="menu_base_info"></span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a data-url="page/jbc-deviceinfo" href="home.asp#page/jbc-deviceinfo">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_device_info"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-networkinfo" href="home.asp#page/jbc-networkinfo">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="i18n" name="menu_networkinfo"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-dhcplist" href="home.asp#page/jbc-dhcplist">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_dhcp_list"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-clientlist" href="home.asp#page/jbc-clientlist">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_client_list"></span>
								</a>

								<b class="arrow"></b>
							</li>


						</ul>
					</li>

					<li class="<% menu_show('selfcare_link'); %>">
						<a href="https://airtel.co.ug/broadband" target="_blank">
							<i class="menu-icon fa fa-external-link"></i>
							<span>Self Care</span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-cog"></i>
							<span class="menu-text i18n" name="menu_network"></span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<li class="hide">
								<a data-url="page/jbc-internet" href="home.asp#page/jbc-internet">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="i18n" name="menu_internet"></span>

								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-lte" href="home.asp#page/jbc-lte">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="i18n" name="menu_lte"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_band(); %>">
								<a data-url="page/jbc-band" href="home.asp#page/jbc-band">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="i18n" name="menu_band"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('jbc-band-asr'); %>">
								<a data-url="page/jbc-band-asr" href="home.asp#page/jbc-band-asr">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_band"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('jbc-band-358'); %>">
								<a data-url="page/jbc-band-358" href="home.asp#page/jbc-band-358">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_band"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('jbc-band-rg500'); %>">
								<a data-url="page/jbc-band-rg500" href="home.asp#page/jbc-band-rg500">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_band"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('jbc-celllock'); %>">
								<a data-url="page/jbc-celllock" href="home.asp#page/jbc-celllock">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_cell"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('jbc-pin'); %>">
								<a data-url="page/jbc-pin" href="home.asp#page/jbc-pin">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_pin"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-misc" href="home.asp#page/jbc-misc">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_misc"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-apclient" href="home.asp#page/jbc-apclient">
									<i class="menu-icon fa fa-caret-right"></i>
									无线中继
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-mwan" href="home.asp#page/jbc-mwan">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="i18n" name="menu_mwan"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-online" href="home.asp#page/jbc-online">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="i18n" name="menu_online_check"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-local" href="home.asp#page/jbc-local">
									<i class="menu-icon fa fa-caret-right"></i>
									本地配置
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-route" href="home.asp#page/jbc-route">
									<i class="menu-icon fa fa-caret-right"></i>
									路由表管理
								</a>

								<b class="arrow"></b>
							</li>

						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text i18n" name="menu_lan_setting"></span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<li class="<% menu_support_wifi(); %>">
								<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="i18n" name="menu_wireless"></span>
									<b class="arrow fa fa-angle-down"></b>
								</a>

								<b class="arrow"></b>

								<ul class="submenu">

									<li class="">
										<a href="#" class="dropdown-toggle">
											<i class="menu-icon fa fa-wifi orange"></i>
                                            <span class="i18n" name="menu_wireless_24G"></span>
											<b class="arrow fa fa-angle-down"></b>
										</a>

										<b class="arrow"></b>

										<ul class="submenu">
											<li class="">
												<a data-url="page/jbc-24g-base" href="home.asp#page/jbc-24g-base">
													<i class="menu-icon fa fa-cog purple"></i>
                                                    <span class="i18n" name="menu_24g_base"></span>
												</a>

												<b class="arrow"></b>
											</li>

											<li class="hide">
												<a data-url="page/jbc-24g-channel" href="home.asp#page/jbc-24g-channel">
													<i class="menu-icon fa fa-eye pink"></i>
													信道管理
												</a>

												<b class="arrow"></b>
											</li>

											<li class="hide">
												<a data-url="page/jbc-24g-adv" href="home.asp#page/jbc-24g-adv">
													<i class="menu-icon fa fa-eye pink"></i>
													高级配置
												</a>

												<b class="arrow"></b>
											</li>
										</ul>
									</li>

									<li class="<% menu_support_58G(); %>">
										<a href="#" class="dropdown-toggle">
											<i class="menu-icon fa fa-wifi green"></i>
                                            <span class="i18n" name="menu_wireless_58G"></span>
											<b class="arrow fa fa-angle-down"></b>
										</a>

										<b class="arrow"></b>

										<ul class="submenu">
											<li class="">
												<a data-url="page/jbc-58g-base" href="home.asp#page/jbc-58g-base">
													<i class="menu-icon fa fa-cog purple"></i>
                                                    <span class="i18n" name="menu_24g_base"></span>
												</a>

												<b class="arrow"></b>
											</li>

											<li class="hide">
												<a data-url="page/jbc-58g-channel" href="home.asp#page/jbc-58g-channel">
													<i class="menu-icon fa fa-eye pink"></i>
													信道管理
												</a>

												<b class="arrow"></b>
											</li>

											<li class="hide">
												<a data-url="page/jbc-58g-adv" href="home.asp#page/jbc-58g-adv">
													<i class="menu-icon fa fa-eye pink"></i>
													高级配置
												</a>

												<b class="arrow"></b>
											</li>
										</ul>
									</li>

									<li class="hide">
										<a data-url="page/jbc-ap-power" href="home.asp#page/jbc-ap-power">
											<i class="menu-icon fa fa-leaf green"></i>
											无线功率
										</a>

										<b class="arrow"></b>
									</li>

                                    <li class="">
                                        <a data-url="page/jbc-macacl" href="home.asp#page/jbc-macacl">
                                            <i class="menu-icon fa fa-filter pink"></i>
                                            <span class="i18n" name="menu_macacl"></span>
                                        </a>

                                        <b class="arrow"></b>
                                    </li>
								</ul>
							</li>

							<li class="">
								<a data-url="page/jbc-dhcp" href="home.asp#page/jbc-dhcp">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="menu-text i18n" name="menu_dhcp"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-dns" href="home.asp#page/jbc-dns">
									<i class="menu-icon fa fa-caret-right"></i>
									DNS 配置
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text i18n" name="menu_network_app"></span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<li class="">
								<a data-url="page/jbc-ussd" href="home.asp#page/jbc-ussd">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="" name="menu_ussd">USSD</span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('jbc-sms'); %>">
								<a data-url="page/jbc-sms" href="home.asp#page/jbc-sms">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_sms"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-firewall" href="home.asp#page/jbc-firewall">
									<i class="menu-icon fa fa-caret-right"></i>
									防火墙
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-dmz" href="home.asp#page/jbc-dmz">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_dmz_mgr"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-port" href="home.asp#page/jbc-port">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_port_mapping"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-dnsctrl" href="home.asp#page/jbc-dnsctrl">
									<i class="menu-icon fa fa-caret-right"></i>
									域名控制
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-netmode" href="home.asp#page/jbc-netmode">
									<i class="menu-icon fa fa-caret-right"></i>
									联网模式
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-keeplink" href="home.asp#page/jbc-keeplink">
									<i class="menu-icon fa fa-caret-right"></i>
									链接重启
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-gps" href="home.asp#page/jbc-gps">
									<i class="menu-icon fa fa-caret-right"></i>
									GPS
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-upnp" href="home.asp#page/jbc-upnp">
									<i class="menu-icon fa fa-caret-right"></i>
									UPNP
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('jbc-vpn'); %>">
								<a data-url="page/jbc-vpn" href="home.asp#page/jbc-vpn">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="menu-text i18n" name="menu_vpn"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-gre" href="home.asp#page/jbc-gre">
									<i class="menu-icon fa fa-caret-right"></i>
									GRE
								</a>

								<b class="arrow"></b>
							</li>

                            <li class="<% menu_show('jbc-acs'); %>">
								<a data-url="page/jbc-acs" href="home.asp#page/jbc-acs">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="menu-text i18n" name="menu_acs"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-data" href="home.asp#page/jbc-data">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_data"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="#" class="dropdown-toggle">
									<i class="menu-icon fa fa-caret-right"></i>
                                    <span class="i18n" name="menu_guard"></span>
									<b class="arrow fa fa-angle-down"></b>
								</a>

								<b class="arrow"></b>

								<ul class="submenu">

									<li class="<% menu_show('jbc-guard'); %>">
										<a data-url="page/jbc-guard-device" href="home.asp#page/jbc-guard-device">
											<i class="menu-icon fa fa-pinterest green"></i>
                                            <span class="" name="menu_macacl">上网终端管理</span>
										</a>

										<b class="arrow"></b>
									</li>

									<li class="<% menu_show('jbc-guard'); %>">
										<a data-url="page/jbc-guard-time" href="home.asp#page/jbc-guard-time">
											<i class="menu-icon fa fa-exchange green"></i>
                                            <span class="" name="menu_macacl">上网时间管理</span>
										</a>

										<b class="arrow"></b>
									</li>

                                    <li class="hide">
                                        <a data-url="page/jbc-guard-domain" href="home.asp#page/jbc-guard-domain">
                                            <i class="menu-icon fa fa-gamepad green"></i>
                                            <span class="" name="menu_macacl">访问域名管理</span>
                                        </a>

                                        <b class="arrow"></b>
                                    </li>

                                    <li class="">
                                        <a data-url="page/jbc-guard-port" href="home.asp#page/jbc-guard-port">
                                            <i class="menu-icon fa fa-medkit green"></i>
                                            <span class="i18n" name="menu_guard_port">访问端口管理</span>
                                        </a>

                                        <b class="arrow"></b>
                                    </li>

                                    <li class="hide">
                                        <a data-url="page/jbc-guard-url" href="home.asp#page/jbc-guard-url">
                                            <i class="menu-icon fa fa-filter green"></i>
                                            <span class="" name="menu_macacl">访问网址管理</span>
                                        </a>

                                        <b class="arrow"></b>
                                    </li>

								</ul>
							</li>

						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-tag"></i>
							<span class="menu-text i18n" name="menu_sys_mgr"></span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<li class="">
								<a data-url="page/jbc-password" href="home.asp#page/jbc-password">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_password_mgr"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-servicemgr" href="home.asp#page/jbc-servicemgr">
									<i class="menu-icon fa fa-caret-right"></i>
									服务管理
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-beenet" href="home.asp#page/jbc-beenet">
									<i class="menu-icon fa fa-caret-right"></i>
									组网设置
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-timesetting" href="home.asp#page/jbc-timesetting">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_timesetting"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-rebootschedule" href="home.asp#page/jbc-rebootschedule">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_reboot_schedule"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-ledmgr" href="home.asp#page/jbc-ledmgr">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_led_mangement"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-language" href="home.asp#page/jbc-language">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_language_setting"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-data_setting" href="home.asp#page/jbc-data_setting">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_data_setting"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('sim_switch'); %>">
								<a data-url="page/jbc-sim_switch" href="home.asp#page/jbc-sim_switch">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_sim_switch_setting"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('esim_switch'); %>">
								<a data-url="page/jbc-esim_switch" href="home.asp#page/jbc-esim_switch">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_sim_switch_setting"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_show('ant_switch'); %>">
								<a data-url="page/jbc-ant_switch" href="home.asp#page/jbc-ant_switch">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_ant_switch_setting"></span>
								</a>

								<b class="arrow"></b>
							</li>

						</ul>
					</li>

					<li class="hide">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-wrench"></i>
							<span class="menu-text i18n" name="menu_adv_setting"></span>
							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<li class="">
								<a data-url="page/jbc-rj45" href="home.asp#page/jbc-rj45">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_rj45"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-uart" href="home.asp#page/jbc-uart">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_uart"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-cloud" href="home.asp#page/jbc-cloud">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_cloud"></span>
								</a>

								<b class="arrow"></b>
							</li>

						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-file-o"></i>
							<span class="menu-text i18n" name="menu_debug_tool"></span>
							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<li class="">
								<a data-url="page/jbc-syslog" href="home.asp#page/jbc-syslog">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_syslog"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="<% menu_lab(); %>">
								<a data-url="page/jbc-lab" href="home.asp#page/jbc-lab">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_lab"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/jbc-debug" href="home.asp#page/jbc-debug">
									<i class="menu-icon fa fa-caret-right"></i>
									<span class="i18n" name="menu_debug"></span>
								</a>

								<b class="arrow"></b>
							</li>

							<li class="hide">
								<a data-url="page/jbc-faq" href="home.asp#page/jbc-faq">
									<i class="menu-icon fa fa-caret-right"></i>
									FAQ
								</a>

								<b class="arrow"></b>
							</li>

							<!--
							<li class="">
								<a data-url="page/error-500" href="home.asp#page/error-500">
									<i class="menu-icon fa fa-caret-right"></i>
									Error 500
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/grid" href="home.asp#page/grid">
									<i class="menu-icon fa fa-caret-right"></i>
									Grid
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a data-url="page/blank" href="home.asp#page/blank">
									<i class="menu-icon fa fa-caret-right"></i>
									Blank Page
								</a>

								<b class="arrow"></b>
							</li>
							-->
						</ul>
					</li>

					<li class="">
						<a data-url="page/jbc-devicemgr" href="home.asp#page/jbc-devicemgr">
							<i class="menu-icon fa fa-cogs"></i>
							<span class="menu-text i18n" name="menu_devicemgr"></span>
						</a>

						<b class="arrow"></b>
					</li>

				</ul><!-- /.nav-list -->

				<!-- #section:basics/sidebar.layout.minimize -->
				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

				<!-- /section:basics/sidebar.layout.minimize -->
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
				</script>
			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
					</script>

					<ul class="breadcrumb">
						<li>
							<i class="ace-icon fa fa-home home-icon"></i>
							<a href="#">Home</a>
						</li>
					</ul><!-- /.breadcrumb -->

					<!-- #section:basics/content.searchbox -->
					<!--<div class="nav-search" id="nav-search">-->
						<!--<form class="form-search">-->
							<!--<span class="input-icon">-->
								<!--<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />-->
								<!--<i class="ace-icon fa fa-search nav-search-icon"></i>-->
							<!--</span>-->
						<!--</form>-->
					<!--</div>&lt;!&ndash; /.nav-search &ndash;&gt;-->

					<!-- /section:basics/content.searchbox -->
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<!-- /section:settings.box -->
					<div class="page-content-area">
						<!-- ajax content goes here -->
					</div><!-- /.page-content-area -->
				</div><!-- /.page-content -->

			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<!--
						<span class="bigger-120">
							<span class="blue bolder">Ace</span>
							Application &copy; 2019
						</span>

						<span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-rss-square orange bigger-150"></i>
							</a>
						</span>
						-->
					</div>

					<!-- /section:basics/footer -->
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>

		</div><!-- /.main-container -->

		<!-- basic scripts -->
		<script src='assets/js/jquery.min.js'></script>
		<script src='assets/js/jquery.mobile.custom.min.js'></script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery-ui.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/jquery.gritter.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
		<script src="assets/js/jquery.i18n.properties.js"></script>
		<script src="assets/js/language.js"></script>
		<script src="assets/js/jbc/abc.js"></script>
		<script src="assets/js/jquery.cookie.js"></script>
		<script src="assets/js/bootbox.all.min.js"></script>
		<script type="text/javascript">

            var ___loading_title = "数据加载中。。。";

            var __language = "<% aspGetLangEx(); %>";

            var __using_mobile_ui = 1*"<% aspGetUsingMobileUi(); %>";

			var __threshold = 1*"<% aspGetDataThreshold(); %>";

			var __is_over = 1*"<% aspGetDataIsOver(); %>";

            function init_language() {
		        $("#alertmod_grid-table").addClass("hide");

			    console.log("home: init_language")

                /*执行I18n翻译*/
                execI18n();

                console.debug($.i18n.prop('img_id_sim_title'))
                console.debug($.i18n.prop('img_id_signal_title'))
                console.debug($.i18n.prop('img_id_wifi_title'))

                $("#img_id_signal").attr({title: $.i18n.prop("img_id_signal_title")});
                $("#img_id_sim").attr({title: $.i18n.prop("img_id_sim_title")});
                $("#img_id_wifi").attr({title: $.i18n.prop("img_id_wifi_title")});

                /*将语言选择默认选中缓存中的值*/
                $("#form-field-select-language option[value="+i18nLanguage+"]").attr("selected",true);

                /* 选择语言 */
                $("#form-field-select-language").on('change', function() {
                    var language = $(this).children('option:selected').val();
                    console.log(language);
                    getCookie("userLanguage",language,{
                        expires: 30,
                        path:'/'
                    });
                    location.reload();
                });

                ___loading_title = $.i18n.prop("default_loading_title");
            }

			function logout () {

			    bootbox.confirm({
                    title: $.i18n.prop("common_confirm"),
                    message: $.i18n.prop("logout_yes"),
                    buttons: {
                        cancel: {
                            className: 'btn-sm btn-round',
                            label: '<i class="fa fa-times"></i>' + $.i18n.prop("bootbox_cancel")
                        },
                        confirm: {
                            className: 'btn-sm btn-primary btn-round',
                            label: '<i class="fa fa-check"></i>' + $.i18n.prop("bootbox_confirm")
                        }
                    },
                    callback: function (result) {
                        if(result) {
			                $.cookie('username', null);
			                location.href="/login.asp";
                        }
                    }
                });

			}

			function format_sms(f1, f2) {
				if (f1===1) {
					return "sms_full";
				} else if (f2===1) {
					return "sms_new";
				} else {
					return "sms_ok";
				}
			}

			function top_info() {
                console.log("top info")

                //获取父菜单栏
                $.ajax({
                    //url: '/goform/getTopInfo.json?status=1&_=' + new Date().getTime(),
                    url: ___url,
                    type: 'POST',
                    timeout : 10000, //超时时间设置，单位毫秒
                    contentType: 'application/json',
                    dataType : 'json',
                    data: JSON.stringify({action: "top_info"}),
                    success: function (e) {
                        // TODO
                        var data = e.data;
                        if (e.status===0) {
                            //top_signal
                            $("#img_id_sim").attr({class: data.simin});

                            if (data.sms === undefined || data.sms === null) {
                                $(".sms_icon").addClass("hide");
                            } else {
                                $(".sms_icon").removeClass("hide");
                                $("#img_id_sms").attr({class: format_sms(data.sms_full, data.sms_flag)});
								if (data.sms_full===1) $("#img_id_sms").attr({title: "full sms"});
								else if (data.sms_flag===1) $("#img_id_sms").attr({title: "new sms"});
                                // $("#sms_sup").html(data.sms);
                            }

                            // $("#img_id_sim").attr({title: $.i18n.prop("img_id_sim_title")});
                            $("#img_id_signal").attr({class: data.sig_strength})
                            $("#top_wifi_client").html(data.wificlient_num)
                        }
                    },
                    fail: function () {
                        console.info("top_info fail");
                    },
                    complete :function (XMLHttpRequest, status) {
                        console.log ("top info complete")

                        var username = $.cookie('username');
                        if (username === undefined) {
                            console.log("Cookie is invalided! U need relogin");
                            location.href = "/login.asp";
                        }

                        if(status=='timeout'){ //超时,status还有success,error等值的情况
                            console.info("top_info timeout");
                        }
                    }
                });
			}

            jQuery(document).on('ajaxloaddone', function(e, params) {
                console.log("ajaxloaddone ...");
                $("#alertmod_grid-table").addClass("hide");
				$.gritter.removeAll();
			});

            jQuery(document).on('ajaxloadcomplete', function(e, params) {
                console.log("ajaxloadcomplete ...");
                $("#alertmod_grid-table").addClass("hide");
            });

            jQuery(document).on('ajaxscriptsloaded', function(e, params) {
                console.log("ajaxscriptsloaded ...");
                $("#alertmod_grid-table").addClass("hide");

                const css_show_all_obj = $('.div_show_all');
                if(css_show_all_obj.length && css_show_all_obj.length>0) {
                    css_show_all_obj.removeClass("hide");
                }

                const id_show_all_obj = $('#div_show_all');
                if(id_show_all_obj.length && id_show_all_obj.length>0) {
                    // id_show_all_obj.show();
                    id_show_all_obj.css('opacity', 1)
                }

                var first_login = $.cookie('first_login');
                if (first_login === 'F0') {
					console.log("show notification!")
                    $.cookie('first_login', 'F1');
					show_notice (__threshold, __is_over);
                }

                setTimeout(function() {
                    top_info();
                }, 500);
            });

            //Load content via ajax
            jQuery(function($) {

				//override dialog's title function to allow for HTML titles
				$.widget("ui.dialog", $.extend({}, $.ui.dialog.prototype, {
					_title: function(title) {
						var $title = this.options.title || '&nbsp;'
						if( ("title_html" in this.options) && this.options.title_html == true )
							title.html($title);
						else title.text($title);
					}
				}));

                var dev = "pc";
                if (__using_mobile_ui===1 && (navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i))) {
                    //设备为移动端
                    dev = "mobile";
                    location.href = "/m_home.asp";
                }

                console.log("当前使用设备为：" + dev);

                getCookie("userLanguage",__language,{
                    expires: 30,
                    path:'/'
                });

                // ref = setInterval(function(){
                //     top_info();
                // }, 30*1000);

                init_language();

                // setTimeout(function() {
                //     top_info();
                // }, 1000);

			    var i18nLang = getBootBoxLanguage(__language)
		    	console.log("init ..." + i18nLang)
		    	bootbox.setLocale(i18nLang);

                // ace.settings.main_container_fixed(true);
                if('enable_ajax_content' in ace) {

                    var options = {
                        loading_text: ___loading_title,
                        content_url: function(url) {
                           //this is for Ace demo only, you should change it
                           //please refer to documentation for more info

                           if(!url.match(/^page\//)) return false;

                            var path = document.location.pathname;

                            console.log(path);
                            console.log(url);
                            console.log("xxxxx");

                            var username = $.cookie('username');
                            if (username === undefined) {
                                console.log("username is null");
                                bootbox.alert({
                                    buttons: {
                                        ok: {
                                            className: 'btn-sm btn-primary btn-round',
                                            label: '<i class="fa fa-check"></i>' + $.i18n.prop("bootbox_confirm")
                                        }
                                    },
                                    message: $.i18n.prop("bootbox_alert_session_invalid"),//'会话已经过期失效，请重新登录!',
                                    callback: function() {
                                        setTimeout(function() {
                                            location.href = "/login.asp";
                                        }, 500);
                                    },
                                    title: $.i18n.prop("bootbox_alert_note"),//"会话提示",
                                });

                                return;
                            } else {
                                console.log("username " + username);
                                var dt = new Date();
                                var min = 5;
                                dt.setTime(dt.getTime() + (min * 60 * 1000));
                                $.cookie('username', username, { expires: dt, path: '/' });
                            }

                            //for Ace HTML demo version, convert home.asp#page/gallery to > gallery.html and load it
                           if(path.match(/home\.asp/)) return path.replace(/home\.asp/, url.replace(/^page\//, '')+'.html') ;

                            //for Ace PHP demo version convert "page/dashboard" to "?page=dashboard" and load it
                            return path + "?" + url.replace(/\//, "=");
                        },
                        default_url: 'page/jbc-deviceinfo'//default url
                    };

                    ace.enable_ajax_content($, options)
                }
            })

			function show_notice(pp, flag) {

				if (flag==0) return;
				var msg = $.i18n.prop('bootbox_alert_data_is_over');
				if (flag===1) {
					msg = $.i18n.prop('bootbox_alert_data_is_over_threshold')
							+ " " + pp + " "
							+ $.i18n.prop('bootbox_alert_data_is_over_threshold_A');
				}

				msg += " " + "<br/>"+
						$.i18n.prop('bootbox_alert_data_is_over_note') +" " +
						// "For more details, please visit" +" " +
						"<a id='notice_a' data-url='page/jbc-data' href='home.asp#page/jbc-data'>" +
						"<span class='i18n' style='background-color:yellow; font-size: 13px !important;' name='data_info'>Traffic statistics</span>" +
						"</a>";

				// $.gritter.add({
				// 	title: '',
				// 	text: msg,
				// 	class_name: 'gritter-info gritter-center'
				// });

				$.gritter.add({
					// (string | mandatory) the heading of the notification
					title: '',
					// (string | mandatory) the text inside the notification
					text: msg,
					// (string | optional) the image to display on the left
					image: 'assets/images/icon_waring.png',
					// (bool | optional) if you want it to fade out on its own or just sit there
					sticky: true,
					// (int | optional) the time you want it to be alive for before fading out
					// time: 5000,
					speed:10,
					position: 'center',
					class_name: 'gritter-warning gritter-light'
				});

				/*				let box_obj = bootbox.dialog({
					message: msg,
					closeButton: true,
				});

				$("#notice_a").on('click', function () {
					setTimeout(function() {
						box_obj.modal('hide');
					}, 50);
				})
				 */
			}
		</script>
	</body>
</html>

