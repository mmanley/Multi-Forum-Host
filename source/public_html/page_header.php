<?php
	// =================================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://www.NasuTek.com/products/php/multiforumhost
	// =================================================== /
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-gb" xml:lang="en-gb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Language" content="en-gb" />
<meta http-equiv="imagetoolbar" content="no" />
<title><?php echo (($mfhclass->templ->page_title != NULL) ? $mfhclass->templ->page_title : "Welcome to {$mfhclass->info->config['site_name']} (Free phpBB Forum Hosting)"); ?></title>
<meta name="description" content="<?php echo $mfhclass->info->config['site_name']; ?> is an easy phpBB forum hosting solution for everyone." />
<meta name="keywords" content="forum hosting, forum hosting service, phpbb fourm hosting, easy forum hosting" />
<link href="./css/style.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="http://www.google-analytics.com/urchin.js"></script>
<script type="text/javascript" src="./source/includes/genjscript.js"></script>
</head>
<body class="ltr">
<div id="wrap">
	<div id="page-header">
		<h1><?php echo (($mfhclass->templ->page_title != NULL) ? $mfhclass->templ->page_title : $mfhclass->info->config['site_name']); ?></h1>
	</div>
	<div id="page-body">
	<div id="acp">
	<div class="panel">
		<span class="corners-top"><span></span></span>
			<div id="content">
				<div id="menu">
					<ul>
						<li><a href="index.php?act=idx"><span>Home</span></a></li>
						<li><a href="index.php?act=rules"><span>Terms of Service</span></a></li>
						<li><a href="index.php?act=directory"><span>Forum Directory</span></a></li>
						<li><a href="mailto:<?php echo $mfhclass->info->config['email_out']; ?>"><span>Contact Us / Support</span></a></li>
						<li><a href="http://www.phpbb.com/support/documentation/3.0/"><span>phpBB Documentation</span></a></li>
					</ul>
				</div>
			<div id="main">
			<!-- LTE: 1197685694 -->
