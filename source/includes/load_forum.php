<?php
	// ======================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://nasutek.com/index2/index.php?id=42
	// ======================================== /

	require_once "{$mfh_root_path}source/includes/data.php";

	if (!$mfhclass->funcs->forum_exists($mfhclass->input->get_vars['access_name'])) {
		header("Location: ../../index.php");
		exit;
	} else {
		$mfhclass->info->forum_info = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` WHERE `access_name` = '{$mfhclass->input->get_vars['access_name']}';"));

		if ($mfhclass->input->get_vars['r'] != NULL && $mfhclass->input->get_vars['r'] == $mfhclass->info->forum_info['total_hits']) {
			$mfhclass->db->query("UPDATE `mfh_hosted_forums` SET `total_hits` = `total_hits` + 1 WHERE `access_name` = '{$mfhclass->input->get_vars['access_name']}';");
		}
		
		$mfhclass->info->forum_info['database'] = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `mfh_forum_databases` WHERE `database_id` = '{$mfhclass->info->forum_info['database_id']}';"));
		unset($mfhclass->info->forum_info['database_id']);

		// phpBB 3.0.x auto-generated configuration file
		// Do not change anything in this file!
		$dbms = "mysql";
		$dbhost = "{$mfhclass->info->forum_info['database']['sql_host']}";
		$dbport = "";
		$dbname = "{$mfhclass->info->forum_info['database']['sql_database']}";
		$dbuser = "{$mfhclass->info->forum_info['database']['sql_username']}";
		$dbpasswd = "{$mfhclass->info->forum_info['database']['sql_password']}";

		$table_prefix = "{$mfhclass->input->get_vars['access_name']}_";
		$acm_type = "file";
		$load_extensions = "";

		@define("PHPBB_INSTALLED", true);
		// @define("DEBUG", true);
		// @define("DEBUG_EXTRA", true);
	}

?>
