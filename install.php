<?php
	// ======================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://nasutek.com/products/php/mfh
	// Licenced under the BSD Licence
	// ======================================== /
	
	require_once "./source/includes/data.php";
	
	$mfhclass->templ->page_title = "NasuTek Multi Forum Host &raquo; Installation";

	if ($mfhclass->info->site_installed == true) {
		$mfhclass->templ->error("This installer is disabled because an installation of NasuTek multi forum host already exists.");
	}
	
	switch ($mfhclass->input->get_vars['act']) {
		case "install":
			$mfhclass->templ->html = "\t\t\t<form method=\"post\" action=\"install.php?act=install-d\">
			<h1>Installtion Form</h1><br />
			<p>Fill in the following form completely to install this version of NasuTek Multi Forum 
			Host. Once installed you can change these settings and others via the admin control panel.
			<fieldset>
			<legend>MySQL Settings</legend>
			<dl>
			<dt><label for=\"sql_host\">MySQL Host:</label><br /><span class=\"explain\">If you are unsure of your MySQL host please contact your hosting company before continuing.</span></dt>
			<dd><input id=\"sql_host\" type=\"text\" size=\"25\" name=\"sql_host\" value=\"localhost\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"sql_database\">MySQL Database Name:</label><br /><span class=\"explain\">This will be the database that all information related to NasuTek Multi Forum Host will be stored in. Once installed more databases can be added to enlarge storage capabilities for hosted forums. </span></dt>
			<dd><input id=\"sql_database\" type=\"text\" size=\"25\" name=\"sql_database\" value=\"mmfh3x\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"sql_username\">MySQL Username:</label></dt>
			<dd><input id=\"sql_username\" type=\"text\" size=\"25\" name=\"sql_username\" value=\"root\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"sql_password\">MySQL Password (optional):</label><br /><span class=\"explain\">Even though it's optional, we don't recommend leaving this field empty.</span></dt>
			<dd><input id=\"sql_password\" type=\"password\" size=\"25\" name=\"sql_password\" value=\"\" /></dd>
			</dl>
			</fieldset>
			<fieldset>
			<legend>Root Administrator Settings</legend>
			<dl>
			<dt><label for=\"username\">Administrator Username:</label><br /><span class=\"explain\">Must be between 3 and 30 characters in length and only contain the characters: -_A-Za-z0-9</span></dt>
			<dd><input id=\"username\" type=\"text\" size=\"25\" maxlength=\"30\" name=\"username\" value=\"Admin\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"password\">Administrator Password:</label><br /><span class=\"explain\">Must be between 6 and 30 characters in lenght. For more security we recommend that the password entered contains at least one numerical character.</span></dt>
			<dd><input id=\"password\" type=\"password\" size=\"25\" maxlength=\"30\" name=\"password\" value=\"\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"password-c\">Administrator Password (confirm):</label></dt>
			<dd><input id=\"password-c\" type=\"password\" size=\"25\" maxlength=\"30\" name=\"password-c\" value=\"\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"email_address\">Administrator E-Mail Address:</label><br /><span class=\"explain\">To be considered valid an email address can only contain the characters: -_A-Za-z0-9</span></dt>
			<dd><input id=\"email_address\" type=\"text\" size=\"25\" name=\"email_address\" value=\"{$mfhclass->input->server_vars['server_admin']}\" /></dd>
			</dl>
			</fieldset>
			<fieldset class=\"submit-buttons\">
			<input class=\"button1\" type=\"submit\" onclick=\"this.className = 'button1 disabled';\" value=\"Begin Installation\" />
			</fieldset></p>
			</form>";
			break;
		case "install-d":
			if ($mfhclass->input->post_vars['username'] == NULL || $mfhclass->input->post_vars['password'] == NULL || $mfhclass->input->post_vars['password-c'] == NULL || $mfhclass->input->post_vars['email_address'] == NULL || $mfhclass->input->post_vars['sql_host'] == NULL || $mfhclass->input->post_vars['sql_database'] == NULL || $mfhclass->input->post_vars['sql_username'] == NULL) {
				$mfhclass->templ->error("Please ensure that all required fields of the installation form has been filled in.");
			} elseif (!$mfhclass->funcs->valid_email($mfhclass->input->post_vars['email_address'])) {
				$mfhclass->templ->error("Please ensure that the administrator email address is valid.");
			} elseif ($mfhclass->input->post_vars['password'] != $mfhclass->input->post_vars['password-c']) {
				$mfhclass->templ->error("Please ensure that the administrator passwords you have entered exactly match each other.");
			} elseif (strlen($mfhclass->input->post_vars['password']) < 6 || strlen($mfhclass->input->post_vars['password']) > 30) {
				$mfhclass->templ->error("Please ensure you have entered a valid administrator password.");
			} elseif (!$mfhclass->funcs->valid_string($mfhclass->input->post_vars['username']) || strlen($mfhclass->input->post_vars['username']) < 3 || strlen($mfhclass->input->post_vars['username']) > 30) {
				$mfhclass->templ->error("Please ensure you have entered a valid administrator username.");
			} elseif (!is_writable("{$mfhclass->info->root_path}source/includes/config.php")) {
				$mfhclass->templ->error("Please ensure the file <b>{$mfhclass->info->root_path}source/includes/config.php</b> has the ability to be written to.");
			} elseif (!is_writable("{$mfhclass->info->root_path}phpBB3/files/") || !is_readable("{$mfhclass->info->root_path}phpBB3/files/")) {
				$mfhclass->templ->error("Please ensure the folder <b>{$mfhclass->info->root_path}phpBB3/files/</b> has the ability to be read and written to.");
			} else {
				$mfhclass->db->connect($mfhclass->input->post_vars['sql_host'], $mfhclass->input->post_vars['sql_username'], $mfhclass->input->post_vars['sql_password'], $mfhclass->input->post_vars['sql_database']);
				
				$mfhclass->db->install_queries = array();

				$mfhclass->db->install_queries[] = "DROP TABLE IF EXISTS `mfh_admin_accounts`;";
				$mfhclass->db->install_queries[] = "DROP TABLE IF EXISTS `mfh_admin_sessions`;";
				$mfhclass->db->install_queries[] = "DROP TABLE IF EXISTS `mfh_directory_categories`;";
				$mfhclass->db->install_queries[] = "DROP TABLE IF EXISTS `mfh_forum_databases`;";
				$mfhclass->db->install_queries[] = "DROP TABLE IF EXISTS `mfh_hosted_forums`;";
	
				$mfhclass->db->install_queries[] = "CREATE TABLE `mfh_admin_accounts` (
				  `admin_id` int(25) NOT NULL auto_increment,
				  `username` varchar(30) NOT NULL default '',
				  `password` varchar(32) NOT NULL default '',
				  `email_address` tinytext NOT NULL,
				  `ip_address` varchar(15) NOT NULL default '',
				  PRIMARY KEY  (`admin_id`),
				  UNIQUE KEY `username` (`username`)
				) ENGINE=MyISAM;";

				$mfhclass->db->install_queries[] = "CREATE TABLE `mfh_admin_sessions` (
				  `admin_id` int(25) NOT NULL default '0',
				  `session_id` varchar(32) NOT NULL,
				  `session_start` int(10) NOT NULL default '0',
				  `ip_address` varchar(15) NOT NULL,
				  `user_agent` tinytext NOT NULL,
				  PRIMARY KEY  (`session_id`)
				) ENGINE=MyISAM;";

				$mfhclass->db->install_queries[] = "CREATE TABLE `mfh_directory_categories` (
				  `category_id` int(25) NOT NULL auto_increment,
				  `category_name` tinytext NOT NULL,
				  PRIMARY KEY  (`category_id`)
				) ENGINE=MyISAM;";

				$mfhclass->db->install_queries[] = "CREATE TABLE `mfh_forum_databases` (
				  `database_id` int(11) NOT NULL auto_increment,
				  `sql_host` tinytext NOT NULL,
				  `sql_database` varchar(255) NOT NULL,
				  `sql_username` varchar(255) NOT NULL,
				  `sql_password` varchar(255) NOT NULL,
				  `allow_signups` tinyint(1) NOT NULL default '0',
				  PRIMARY KEY  (`database_id`)
				) ENGINE=MyISAM;";

				$mfhclass->db->install_queries[] = "CREATE TABLE `mfh_hosted_forums` (
				  `forum_id` int(25) NOT NULL auto_increment,
				  `database_id` int(25) NOT NULL default '1',
				  `access_name` varchar(30) NOT NULL,
				  `time_started` int(10) NOT NULL default '0',
				  `total_hits` int(30) NOT NULL default '0',
				  `category_id` int(5) NOT NULL default '0',
				  `ip_address` varchar(15) NOT NULL,
				  `email_address` varchar(255) NOT NULL,
				  PRIMARY KEY  (`forum_id`),
				  UNIQUE KEY `access_name` (`access_name`)
				) ENGINE=MyISAM;";

				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_admin_accounts` (`admin_id`, `username`, `password`, `email_address`, `ip_address`) VALUES ('', '{$mfhclass->input->post_vars['username']}', '".md5($mfhclass->input->post_vars['password'])."', '{$mfhclass->input->post_vars['email_address']}', '{$mfhclass->input->server_vars['remote_addr']}');";

				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_forum_databases` (`database_id`, `sql_host`, `sql_database`, `sql_password`, `sql_username`, `allow_signups`) VALUES (1, '{$mfhclass->input->post_vars['sql_host']}', '{$mfhclass->input->post_vars['sql_database']}', '{$mfhclass->input->post_vars['sql_password']}', '{$mfhclass->input->post_vars['sql_username']}', 1); ";

				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (1, 'Art & Literature');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (2, 'Cars');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (3, 'Clans');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (4, 'Computers & Internet');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (5, 'Education');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (6, 'Family & Parents');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (7, 'Gaming');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (8, 'Graphics & Design');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (9, 'Health & Medical');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (10, 'Hobbies');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (11, 'Music');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (12, 'News & Politics');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (13, 'Online Communites');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (14, 'Outdoors & Nature');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (15, 'Religious');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (16, 'Sports');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (17, 'Teens & Kids');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (18, 'TV & Movies');";
				$mfhclass->db->install_queries[] = "INSERT INTO `mfh_directory_categories` (`category_id`, `category_name`) VALUES (19, 'Other');";

				for ($i = 0; $i < count($mfhclass->db->install_queries); $i++) {
					$mfhclass->db->query($mfhclass->db->install_queries[$i]);
				}
			
				if ($htaccess = fopen("{$mfhclass->info->root_path}.htaccess", "w")) {
					$file_string  = "\n#NasuTek Multi Forum Host auto generated .htaccess file\n";
					$file_string .= "RewriteEngine On\n";
					$file_string .= "RewriteBase {$mfhclass->info->script_path}\n";
					$file_string .= "RewriteRule ^forums$|^forums/$ index.php [R,L]\n";
					$file_string .= "RewriteRule ^forums/([-_a-zA-Z0-9]{3,30})$ forums/$1/ [R,L]\n";
					$file_string .= "RewriteRule ^forums/([-_a-zA-Z0-9]{3,30})/(.*)$ phpBB3/$2?access_name=$1 [QSA,L]\n";
					if (!fwrite($htaccess, $file_string)) {
						$mfhclass->templ->error("Failed to write to file <b>{$mfhclass->info->root_path}.htaccess</b>. Please ensure the script has permission to write to it.");
					}
				} else {
					$mfhclass->templ->error("Failed to open file <b>{$mfhclass->info->root_path}.htaccess</b> for writing. Please ensure the script has permission to write to it.");
				}

				if ($config = fopen("{$mfhclass->info->root_path}source/includes/config.php", "w")) {
					$file_string = "<"."?php

					$"."mfhclass->info->config = array();

					$"."mfhclass->info->site_installed = true;

					$"."mfhclass->info->config['sql_host']     = \"{$mfhclass->input->post_vars['sql_host']}\";
					$"."mfhclass->info->config['sql_username'] = \"{$mfhclass->input->post_vars['sql_username']}\";
					$"."mfhclass->info->config['sql_password'] = \"{$mfhclass->input->post_vars['sql_password']}\";
					$"."mfhclass->info->config['sql_database'] = \"{$mfhclass->input->post_vars['sql_database']}\";
					$"."mfhclass->info->config['site_name']    = \"MultiForum\";
					$"."mfhclass->info->config['date_format']  = \"D F j, Y, g:i:s a\";
					$"."mfhclass->info->config['email_out']    = \"{$mfhclass->input->post_vars['email_address']}\";
					$"."mfhclass->info->config['max_results']  = 15;\n\n";
					$file_string .= "?".">";
					if (!fwrite($config, $file_string)) {
						$mfhclass->templ->error("Failed to write to file <b>{$mfhclass->info->root_path}source/includes/config.php</b>. Please ensure the script has permission to write to it.");
					}
				} else {
					$config->templ->error("Failed to open file <b>{$mfhclass->info->root_path}source/includes/config.php</b> for writing. Please ensure the script has permission to write to it.");
				}

				//unlink("{$mfhclass->info->root_path}install.php"); //delete installer for security

				$mfhclass->templ->success("This website has been successfully installed. <br /><br /> <a href=\"index.php\">Site Index</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			}
			break;
		default:
			$mfhclass->templ->html = "\t\t\t<h1>Welcome to NasuTek Multi Forum Host</h1><br />
			<p>Welcome to NasuTek Multi Forum Host. NasuTek Multi Forum Host is the only phpBB3 hosting script 
			to be open source, <b>free</b>, and easy to use. It gives you the power to host hundreds of phpBB 
			powered forums with only a tiny bit of resources needed. 
			<br /><br />
			You will need to have the following to allow NasuTek Multi Forum Host to operate:
			<br /><br />
			&nbsp;&nbsp;1. <a href=\"http://httpd.apache.org/\" target=\"_blank\">Apache Web Server</a><br />
			&nbsp;&nbsp;&nbsp;2. <a href=\"http://www.mysql.com/\" target=\"_blank\">MySQL Database Server</a><br />
			&nbsp;&nbsp;&nbsp;&nbsp;3. <a href=\"http://www.php.net/\" target=\"_blan\">PHP: Hypertext Preprocessor</a><br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4. <a href=\"http://httpd.apache.org/docs/2.0/mod/mod_rewrite.html\" target=\"_blank\">Apache mod_rewrite Module</a><br />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5. <a href=\"http://phpbb.org\" target=\"_blank\">phpBB version 3.0.5</a></li>
			<br /><br />
			<b>Warning:</b> Using this installer will erase any already existing NasuTek Multi Forum Host installation. 
			<br /><br />
			Click on \"Continue to Installation\" to be taken to the installation form.
			<br /><br />
			<fieldset class=\"submit-buttons\">
			<a href=\"install.php?act=install\" class=\"button1\">Continue to Installtion</a>
			</fieldset></p>";
	}

	$mfhclass->templ->output();	
	
?>
