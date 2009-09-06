<?php
	// ======================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://nasutek.com/products/php/mfh
	// Licenced under the BSD Licence
	// ======================================== /
	
	ob_start();

	header("Cache-Control: no-cache, must-revalidate;"); 
	header("Expires: Mon, 26 Jul 1997 05:00:00 GMT;");

	$mfhclass = new stdClass;

	ini_set("display_errors"  , 0); 
	ini_set("register_globals", 0);
	ini_set("memory_limit"    , -1);
	//ini_set("post_max_size" , -1);

	if (__FILE__ == NULL) {
		exit("__FILE__ is NULL <br /><br /> Application Exited");
	}

	$mfhclass->info->root_path = (dirname(preg_replace("/\/source\/includes\//i", "/", str_replace("\\", "/",  __FILE__)))."/"); 

	require_once "{$mfhclass->info->root_path}source/includes/config.php";
	require_once "{$mfhclass->info->root_path}source/includes/functions.php";
	require_once "{$mfhclass->info->root_path}source/includes/database.php";
	require_once "{$mfhclass->info->root_path}source/includes/template.php";
	
	$mfhclass->db    = new mfh_mysql_driver();
	$mfhclass->templ = new mfh_template_engine();
	$mfhclass->funcs = new mfh_core_functions();

	$mfhclass->input->get_vars     = $mfhclass->funcs->clean_array($_GET);
	$mfhclass->input->post_vars    = $mfhclass->funcs->clean_array($_POST);
	$mfhclass->input->server_vars  = $mfhclass->funcs->clean_array($_SERVER);
	$mfhclass->input->file_vars    = $mfhclass->funcs->clean_array($_FILES);
	$mfhclass->input->cookie_vars  = $mfhclass->funcs->clean_array($_COOKIE);

	$mfhclass->info->phpbb_version = "3.0.5";
	$mfhclass->info->site_url      = $mfhclass->funcs->fetch_url(false, false, false);
	$mfhclass->info->page_url      = $mfhclass->funcs->fetch_url(true, false, true);
	$mfhclass->info->script_path   = ((dirname($mfhclass->input->server_vars['php_self']) != "/") ? (dirname($mfhclass->input->server_vars['php_self'])."/") : dirname($mfhclass->input->server_vars['php_self']));
	$mfhclass->info->current_page  = round(($mfhclass->input->get_vars['page'] != NULL && $mfhclass->input->get_vars['page'] >= 1) ? $mfhclass->input->get_vars['page'] : 1);

	if ($mfhclass->info->site_installed == true) {
		$mfhclass->db->connect($mfhclass->info->config['sql_host'], $mfhclass->info->config['sql_username'], $mfhclass->info->config['sql_password'], $mfhclass->info->config['sql_database']);
	} else {
		if (!preg_match("/install/i", basename($mfhclass->input->server_vars['php_self']))) {
			$mfhclass->templ->page_title = "Installation Required";
			$mfhclass->templ->error("This website has yet to be installed. Please click <a href=\"install.php\">here</a> to continue to installation.", true);
		}
	}

?>
