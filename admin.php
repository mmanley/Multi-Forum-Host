<?php
	// ======================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://nasutek.com/index2/index.php?id=42
	// ======================================== /

	require_once "./source/includes/data.php";

	if (!preg_match("/login/i", $mfhclass->input->get_vars['act'])) {
		if ($mfhclass->input->cookie_vars['mfh_admin_session'] != NULL) {
			$admin_session = unserialize(stripslashes(str_replace("&quot;", '"', $mfhclass->input->cookie_vars['mfh_admin_session'])));
			if ($mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_admin_sessions` WHERE `session_id` = '{$admin_session['session_id']}' AND `admin_id` = '{$admin_session['admin_id']}';")) != 1) {
				$mfhclass->input->get_vars['act'] = "login";
			} else {
				$sql = $mfhclass->db->query("SELECT * FROM `mfh_admin_sessions`;");
				while ($row = $mfhclass->db->fetch_array($sql)) {
					if ($admin_session['admin_id'] == $row['admin_id'] && $row['session_id'] != $admin_session['session_id']) {
						$mfhclass->db->query("DELETE FROM `mfh_admin_sessions` WHERE `session_id` = '{$row['session_id']}';");
					}
				}
			}
		} else {
			$mfhclass->input->get_vars['act'] = "login";
		}
	}

	$mfhclass->templ->page_header = base64_decode("PCFET0NUWVBFIGh0bWwgUFVCTElDICItLy9XM0MvL0RURCBYSFRNTCAxLjAgU3Rya
	WN0Ly9FTiIgImh0dHA6Ly93d3cudzMub3JnL1RSL3hodG1sMS9EVEQveGh0bWwxLXN0cmljdC5kdGQiPgo8aHRtbCB4bWxucz0iaHR0cDovL3d3d
	y53My5vcmcvMTk5OS94aHRtbCIgZGlyPSJsdHIiIGxhbmc9ImVuLWdiIiB4bWw6bGFuZz0iZW4tZ2IiPgo8aGVhZD4KPG1ldGEgaHR0cC1lcXVpd
	j0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9VVRGLTgiIC8+CjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtU3R5b
	GUtVHlwZSIgY29udGVudD0idGV4dC9jc3MiIC8+CjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtTGFuZ3VhZ2UiIGNvbnRlbnQ9ImVuLWdiIiAvP
	go8bWV0YSBodHRwLWVxdWl2PSJpbWFnZXRvb2xiYXIiIGNvbnRlbnQ9Im5vIiAvPgo8dGl0bGU+QWRtaW5pc3RyYXRpb24gQ29udHJvbCBQYW5lb
	DwvdGl0bGU+CjxsaW5rIGhyZWY9Ii4vY3NzL3N0eWxlLmNzcyIgcmVsPSJzdHlsZXNoZWV0IiB0eXBlPSJ0ZXh0L2NzcyIgbWVkaWE9InNjcmVlb
	iIgLz4KPHNjcmlwdCB0eXBlPSJ0ZXh0L2phdmFzY3JpcHQiIHNyYz0iaHR0cDovL3d3dy5nb29nbGUtYW5hbHl0aWNzLmNvbS91cmNoaW4uanMiP
	jwvc2NyaXB0Pgo8c2NyaXB0IHR5cGU9InRleHQvamF2YXNjcmlwdCIgc3JjPSIuL3NvdXJjZS9pbmNsdWRlcy9nZW5qc2NyaXB0LmpzIj48L3Njc
	mlwdD4KPC9oZWFkPgo8Ym9keSBjbGFzcz0ibHRyIj4KPGRpdiBpZD0id3JhcCI+Cgk8ZGl2IGlkPSJwYWdlLWhlYWRlciI+CgkJPGgxPkFkbWlua
	XN0cmF0aW9uIENvbnRyb2wgUGFuZWw8L2gxPgoJCTxwPjxhIGhyZWY9ImFkbWluLnBocD8iPkFkbWluIENQIEhvbWU8L2E+ICZidWxsOyA8YSBoc
	mVmPSJpbmRleC5waHAiPlNpdGUgSG9tZTwvYT48L3A+Cgk8L2Rpdj4KCTxkaXYgaWQ9InBhZ2UtYm9keSI+Cgk8ZGl2IGlkPSJhY3AiPgoJPGRpd
	iBjbGFzcz0icGFuZWwiPgoJCTxzcGFuIGNsYXNzPSJjb3JuZXJzLXRvcCI+PHNwYW4+PC9zcGFuPjwvc3Bhbj4KCQkJPGRpdiBpZD0iY29udGVud
	CI+CgkJCQk8ZGl2IGlkPSJtZW51Ij4KCQkJCQk8dWw+CgkJCQkJCTxsaT48YSBocmVmPSJhZG1pbi5waHA/YWN0PWlkeCI+PHNwYW4+QWRtaW4gQ
	1AgSG9tZTwvc3Bhbj48L2E+PC9saT4KCQkJCQkJPGxpPjxhIGhyZWY9ImFkbWluLnBocD9hY3Q9c2l0ZV9zZXR0aW5ncyI+PHNwYW4+RWRpdCBTa
	XRlIFNldHRpbmdzPC9zcGFuPjwvYT48L2xpPgoJCQkJCQk8bGk+PGEgaHJlZj0iYWRtaW4ucGhwP2FjdD1kYXRhYmFzZSI+PHNwYW4+RGF0YWJhc
	2UgTWFuYWdlcjwvc3Bhbj48L2E+PC9saT4KCQkJCQkJPGxpPjxhIGhyZWY9ImFkbWluLnBocD9hY3Q9Y2F0ZWdvcmllcyI+PHNwYW4+RGlyZWN0b
	3J5IENhdGVnb3JpZXMgTWFuYWdlcjwvc3Bhbj48L2E+PGxpPgoJCQkJCQk8bGk+PGEgaHJlZj0iYWRtaW4ucGhwP2FjdD1hZG1pbnMiPjxzcGFuP
	kFkbWluIEFjY291bnRzIE1hbmFnZXI8L3NwYW4+PC9hPjwvbGk+CgkJCQkJCTxsaT48YSBocmVmPSJhZG1pbi5waHA/YWN0PWxvZ291dCI+PHNwY
	W4+TG9nb3V0IEFkbWluIENQPC9zcGFuPjwvYT48L2xpPgoJCQkJCTwvdWw+CgkJCQk8L2Rpdj4KCQkJPGRpdiBpZD0ibWFpbiI+CgkJCTwhLS0gT
	FRFOiAxMTk3Njg1Njk0IC0tPgo=");
	
	$mfhclass->templ->page_footer = base64_decode("PC9kaXY+CgkJCQk8L2Rpdj4KCQkJPHNwYW4gY2xhc3M9ImNvcm5lcnMtYm90dG9tI
	j48c3Bhbj48L3NwYW4+PC9zcGFuPgoJCTwvZGl2PgoJCTwvZGl2PgoJPC9kaXY+CgkKCTwhLS0KCQlXZSByZXF1ZXN0IHlvdSByZXRhaW4gdGhlI
	GZ1bGwgY29weXJpZ2h0IG5vdGljZSBiZWxvdyBpbmNsdWRpbmcgdGhlIGxpbmsgdG8gd3d3LnBocGJiLmNvbS4KCQlUaGlzIG5vdCBvbmx5IGdpd
	mVzIHJlc3BlY3QgdG8gdGhlIGxhcmdlIGFtb3VudCBvZiB0aW1lIGdpdmVuIGZyZWVseSBieSB0aGUgZGV2ZWxvcGVycwoJCWJ1dCBhbHNvIGhlb
	HBzIGJ1aWxkIGludGVyZXN0LCB0cmFmZmljIGFuZCB1c2Ugb2YgcGhwQkIzLiBJZiB5b3UgKGhvbmVzdGx5KSBjYW5ub3QgcmV0YWluCgkJdGhlI
	GZ1bGwgY29weXJpZ2h0IHdlIGFzayB5b3UgYXQgbGVhc3QgbGVhdmUgaW4gcGxhY2UgdGhlICJQb3dlcmVkIGJ5IHBocEJCIiBsaW5lLCB3aXRoC
	gkJInBocEJCIiBsaW5rZWQgdG8gd3d3LnBocGJiLmNvbS4gSWYgeW91IHJlZnVzZSB0byBpbmNsdWRlIGV2ZW4gdGhpcyB0aGVuIHN1cHBvcnQgb
	24gb3VyCgkJZm9ydW1zIG1heSBiZSBhZmZlY3RlZC4KCgkJVGhlIHBocEJCIEdyb3VwIDogMjAwNgoJLy8tLT4KCQoJPGRpdiBpZD0icGFnZS1mb
	290ZXIiPgoJCTxhIGhyZWY9Imh0dHA6Ly93d3cucGhwYmIuY29tLyI+cGhwQkI8L2E+ICZjb3B5OyAyMDAwLCAyMDAyLCAyMDA1LCAyMDA3IDxhI
	GhyZWY9Imh0dHA6Ly93d3cucGhwYmIuY29tLyI+cGhwQkIgR3JvdXA8L2E+PGJyIC8+CgkJPGEgaHJlZj0iaHR0cDovL3d3dy5taWhhbGlzbS5jb
	20vcHJvZHVjdC9tZmgvIj5NaWhhbGlzbSBNdWx0aSBGb3J1bSBIb3N0PC9hPiAmY29weTsgMjAwNyA8YSBocmVmPSJodHRwOi8vd3d3Lm1paGFsa
	XNtLmNvbS8iPk1paGFsaXNtLCBJbmMuPC9hPgoJPC9kaXY+CjwvZGl2Pgo8L2JvZHk+CjwvaHRtbD4K");

	switch ($mfhclass->input->get_vars['act']) {
		case "login":
			$mfhclass->templ->html = "<form method=\"post\" action=\"admin.php?act=login-f\">
			<fieldset>
			<legend>Admin CP Log In</legend>
			<dl>
			<dt><label for=\"username\">Username:</label></dt>
			<dd><input id=\"username\" type=\"text\" size=\"25\" maxlength=\"30\" name=\"username\" value=\"\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"password\">Password:</label></dt>
			<dd><input id=\"password\" type=\"password\" size=\"25\" maxlength=\"30\" name=\"password\" value=\"\" /></dd>
			</dl>
			</fieldset>
			<fieldset class=\"submit-buttons\">
			<input class=\"button1\" type=\"submit\" value=\"Log In\" />
			</fieldset>
			</form>";
			break;
		case "login-f":
			if ($mfhclass->input->post_vars['username'] == NULL || $mfhclass->input->post_vars['password'] == NULL) {
				$mfhclass->templ->error("Please ensure that all required fields of the log in form has been filled in.");
			} elseif ($mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_admin_accounts` WHERE `username` = '{$mfhclass->input->post_vars['username']}' AND `password` = '".md5($mfhclass->input->post_vars['password'])."';")) != 1) {
				$mfhclass->templ->error("Invalid username and or password.");
			} else {
				$session_id = md5(time());
				$user_data  = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `mfh_admin_accounts` WHERE `username` = '{$mfhclass->input->post_vars['username']}' AND `password` = '".md5($mfhclass->input->post_vars['password'])."';"));
				$mfhclass->db->query("UPDATE `mfh_admin_accounts` SET `ip_address` = '{$mfhclass->input->server_vars['remote_addr']}' WHERE `admin_id` = '{$user_data['admin_id']}';");
				$mfhclass->db->query("INSERT INTO `mfh_admin_sessions` (session_id, session_start, admin_id, user_agent, ip_address) VALUES ('{$session_id}', '".time()."', '{$user_data['admin_id']}', '{$mfhclass->input->server_vars['http_user_agent']}', '{$mfhclass->input->server_vars['remote_addr']}');");
				setcookie("mfh_admin_session", "session_delete", (time() - 60000));	
				if (setcookie("mfh_admin_session", serialize(array("session_id" => $session_id, "admin_id" => $user_data['admin_id'])), 0, $mfhclass->info->script_path)) {
					$mfhclass->templ->success("You have been successfully logged into the admin control panel. <br /><br /> <a href=\"admin.php\">Admin CP Index</a>");
				} else {
					$mfhclass->templ->error("Log in failed. <br /><br /> Failed to set cookie <b>mfh_admin_session</b>.");
				}
			}
			break;
		case "logout":
			if (setcookie("mfh_admin_session", "session_delete", (time() - 60000))) {
				$mfhclass->templ->success("You have been successfully logged out of the admin control panel. <br /><br /> <a href=\"admin.php?act=login\">Admin CP Login Form</a>");
			} else {
				$mfhclass->templ->error("Log out failed. <br /><br /> Failed to unset cookie <b>mfh_admin_session</b>.");
			}	
			break;
		case "site_settings":
			$mfhclass->templ->html = "<form method=\"post\" action=\"admin.php?act=site_settings-s\">
			<h1>Site Settings</h1>
			<fieldset>
			<legend>Site Settings</legend>
			<dl>
			<dt><label for=\"site_name\">Website Name:</label></dt>
			<dd><input id=\"site_name\" type=\"text\" size=\"25\" name=\"site_name\" value=\"{$mfhclass->info->config['site_name']}\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"email_out\">Incoming 'n Outgoing E-Mail Address:</label><br /><span class=\"explain\">This is the email address that all emails will be sent from and to. To be considered valid an email address can only contain the characters: -_A-Za-z0-9</span></dt>
			<dd><input id=\"email_out\" type=\"text\" size=\"25\" name=\"email_out\" value=\"{$mfhclass->info->config['email_out']}\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"date_format\">Date Format:</label><br /><span class=\"explain\">For information on how to setup the date format go to <a href=\"http://php.net/date\" target=\"_blank\">php.net</a>.</span></dt>
			<dd><input id=\"date_format\" type=\"text\" size=\"25\" name=\"date_format\" value=\"{$mfhclass->info->config['date_format']}\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"max_results\">Max Results:</label><br /><span class=\"explain\">Max results of whatever to display on a single page.</span></dt>
			<dd><select name=\"max_results\" id=\"max_results\">";
			for ($i = 1; $i <= 100; $i++) {
				$mfhclass->templ->html .= "<option value=\"{$i}\" ".(($mfhclass->info->config['max_results'] == $i) ? "selected=\"selected\"" : NULL)." >{$i}</option>";
			}
			$mfhclass->templ->html .= "</select></dd>
			</dl>
			</fieldset>
			<fieldset class=\"submit-buttons\">
			<input class=\"button1\" type=\"submit\" id=\"submit\" onclick=\"this.className = 'button1 disabled';\" onsubmit=\"this.disabled = 'disabled';\" value=\"Save Settings\" />
			</fieldset>
			</p></form>";
			break;
		case "site_settings-s":
			if (!is_writable("{$mfhclass->info->root_path}source/includes/config.php")) {
				$mfhclass->templ->error("Please ensure the file <b>{$mfhclass->info->root_path}source/includes/config.php</b> has the ability to be written to.");
			} else {
				if ($config = fopen("{$mfhclass->info->root_path}source/includes/config.php", "w")) {
					$file_string = "<"."?php

					$"."mfhclass->info->config = array();

					$"."mfhclass->info->site_installed = true;

					$"."mfhclass->info->config['sql_host']     = \"{$mfhclass->info->config['sql_host']}\";
					$"."mfhclass->info->config['sql_username'] = \"{$mfhclass->info->config['sql_username']}\";
					$"."mfhclass->info->config['sql_password'] = \"{$mfhclass->info->config['sql_password']}\";
					$"."mfhclass->info->config['sql_database'] = \"{$mfhclass->info->config['sql_database']}\";
					$"."mfhclass->info->config['site_name']    = \"{$mfhclass->input->post_vars['site_name']}\";
					$"."mfhclass->info->config['date_format']  = \"{$mfhclass->input->post_vars['date_format']}\";
					$"."mfhclass->info->config['email_out']    = \"{$mfhclass->input->post_vars['email_out']}\";
					$"."mfhclass->info->config['max_results']  = {$mfhclass->input->post_vars['max_results']};\n\n";
					$file_string .= "?".">";
					if (!fwrite($config, $file_string)) {
						$mfhclass->templ->error("Failed to write to file <b>{$mfhclass->info->root_path}source/includes/config.php</b>. Please ensure the script has permission to write to it.");
					} else {
						$mfhclass->templ->success("The site settings have been successfully updated. <br /><br /><a href=\"admin.php?act=site_settings\">Site Settings</a><br /><a href=\"admin.php\">Admin CP Index</a>");
					}
				} else {
					$config->templ->error("Failed to open file <b>{$mfhclass->info->root_path}source/includes/config.php</b> for writing. Please ensure the script has permission to write to it.");
				}
			}
			break;
		case "forum_settings":
			if ($mfhclass->input->get_vars['access_name'] == NULL || !$mfhclass->funcs->forum_exists($mfhclass->input->get_vars['access_name'])) {
				$mfhclass->templ->error("Sorry but the requested forum could not be found.");
			} else {
				$forum_info = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` WHERE `access_name` = '{$mfhclass->input->get_vars['access_name']}';"));
				$mfhclass->templ->html = "<form method=\"post\" action=\"admin.php?act=forum_settings-s\">
				<h1>Forum Settings</h1><br />
				<p>Every setting that phpBB is using is included in this list of settings. Some of these settings are 
				disabled within the actual phpBB admin CP to disallow admins form changing sensitive settings.
				<fieldset>
				<legend>Forum Settings</legend>";
				$sql = $mfhclass->db->query("SELECT * FROM `{$mfhclass->input->get_vars['access_name']}_config` ORDER BY `config_name` ASC;", $forum_info['database_id']);
				while ($row = $mfhclass->db->fetch_array($sql)) {
					$mfhclass->templ->html .= "<dl>
					<dt><label for=\"{$row['config_name']}\">{$row['config_name']}:</label></dt>
					<dd><input id=\"{$row['config_name']}\" type=\"text\" size=\"25\" name=\"{$row['config_name']}\" value=\"{$row['config_value']}\" /></dd>
					</dl>";
				}
				$mfhclass->templ->html .= "</fieldset>
				<input type=\"hidden\" name=\"access_name\" value=\"{$mfhclass->input->get_vars['access_name']}\">
				<input type=\"hidden\" name=\"database_id\" value=\"{$forum_info['database_id']}\">
				<fieldset class=\"submit-buttons\">
				<input class=\"button1\" type=\"submit\" id=\"submit\" onclick=\"this.className = 'button1 disabled';\" onsubmit=\"this.disabled = 'disabled';\" value=\"Save Settings\" />
				</fieldset>
				</p></form>";
			}
			break;
		case "forum_settings-s":
			$config_keys = array_keys($mfhclass->input->post_vars);
			for ($i = 0; $i < count($mfhclass->input->post_vars); $i++) {
				$config_name  = $config_keys[$i];
				$config_value = $mfhclass->input->post_vars[$config_name];
				if ($config_name != "access_name") {
					$mfhclass->db->query("UPDATE `{$mfhclass->input->post_vars['access_name']}_config` SET `config_value` = '{$config_value}' WHERE `config_name` = '{$config_name}';", $mfhclass->input->post_vars['database_id']);
				}
			}	
			$mfhclass->templ->success("Forum settings have been successfully updated. <br /><br /><a href=\"admin.php?act=forum_settings&access_name={$mfhclass->input->post_vars['access_name']}\">Edit Settings Again</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			break;
		case "remove_forum":
			if ($mfhclass->input->get_vars['access_name'] == NULL || !$mfhclass->funcs->forum_exists($mfhclass->input->get_vars['access_name'])) {
				$mfhclass->templ->error("Sorry but the requested forum could not be found.");
			} else {
				$mfhclass->templ->html = "<fieldset>
				<legend>Forum Deletion</legend>
				<form action=\"admin.php?act=remove_forum-d\" method=\"post\">
				<h1>Confirm Deletion</h1><br />
				<p>Are you sure you wish to carry out this operation? <br /><br />
				If you select \"Yes\" there is no undo.</p>
				<input type=\"hidden\" name=\"access_name\" value=\"{$mfhclass->input->get_vars['access_name']}\">
				<div style=\"text-align: center;\">
				<input type=\"submit\" value=\"Yes\" class=\"button2\" /> 
				<input type=\"button\" onclick=\"javascript: history.go(-1);\" value=\"No\" class=\"button2\" />
				</div>
				</form>
				</fieldset>";
			}
			break;
		case "remove_forum-d":
			$forum_info = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` WHERE `access_name` = '{$mfhclass->input->post_vars['access_name']}';"));
			require_once "{$mfhclass->info->root_path}phpBB3/includes/install/table_names.php";
			for ($i = 0; $i < count($mfhclass->info->phpbb_tables); $i++) {
				$table_name = preg_replace("/\<# access_name #\>/i", $mfhclass->input->post_vars['access_name'], $mfhclass->info->phpbb_tables[$i]);
				$mfhclass->db->query("DROP TABLE `{$table_name}`;", $forum_info['database_id']);
			}
			$upload_folder = "{$mfhclass->info->root_path}phpBB3/files/{$mfhclass->input->post_vars['access_name']}/";
			if ($handle = opendir($upload_folder)) {
				while (false !== ($file = readdir($handle))) {
					if ($file != "." && $file != "..") {
						if(!unlink("{$upload_folder}{$file}")){
							$mfhclass->templ->error("Sorry but we failed to delete the file <b>{$file}</b> from <b>{$upload_folder}</b>.");
						}
					}
				}
				closedir($handle);
			} else {
				$mfhclass->templ->error("Cannot open upload folder <b>{$upload_folder}</b>.");
			}
			if (!rmdir($upload_folder)) {
				$mfhclass->templ->error("Cannot delete upload folder <b>{$upload_folder}</b>.");
			}
			$mfhclass->db->query("DELETE FROM `mfh_hosted_forums` WHERE `access_name` = '{$mfhclass->input->post_vars['access_name']}';");
			$mfhclass->templ->success("Forum successfully deleted. <br /><br /> <a href=\"admin.php\">Admin CP Index</a>");
			break;
		case "categories":
			$mfhclass->templ->html = "<h1>Manage Categories</h1><br />
			<p><table cellspacing=\"1\">
			<thead>
			<tr><th>Category</th><th>Total Hosted Forums</th><th>&nbsp;</th></tr>
			</thead>
			<tbody>";
			$sql = $mfhclass->db->query("SELECT * FROM `mfh_directory_categories` ORDER BY `category_name` ASC;");
			while ($row = $mfhclass->db->fetch_array($sql)) {
				$trclass = (($trclass == "row1") ? "row2" : "row1");
				$mfhclass->templ->html .= "<tr class=\"{$trclass}\">
				<td>{$row['category_name']}</td>
				<td>".$mfhclass->funcs->format_number($mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` WHERE `category_id` = '{$row['category_id']}';")))."</td>
				<td><a target=\"_blank\" href=\"index.php?act=directory-vc&cat={$row['category_id']}\">View</a> | <a href=\"admin.php?act=categories-e&cat={$row['category_id']}\">Edit</a> | <a href=\"admin.php?act=categories-r&cat={$row['category_id']}\">Delete</a></td>
				</tr>";
			}
			$mfhclass->templ->html .= "</tbody>
			</table><br />
			<form method=\"post\" action=\"admin.php?act=categories-n\">
			<fieldset>
			<legend>Add Category</legend>
			<dl>
			<dt><label for=\"category_name\">Category Name:</label></dt>
			<dd><input id=\"category_name\" type=\"text\" size=\"25\" maxlength=\"30\" name=\"category_name\" value=\"\" /></dd>
			</dl>
			</fieldset>
			<fieldset class=\"submit-buttons\">
			<input class=\"button1\" type=\"submit\" value=\"Done\" />
			</fieldset>
			</form></p>";
			break;
		case "categories-n":
			if ($mfhclass->input->post_vars['category_name'] == NULL) {
				$mfhclass->templ->error("No category name entered.");
			} else {
				$mfhclass->db->query("INSERT INTO `mfh_directory_categories` (`category_name`) VALUES ('{$mfhclass->input->post_vars['category_name']}');");
				$mfhclass->templ->success("The category <b>{$mfhclass->input->post_vars['category_name']}</b> has been successfully added. <br /><br /> <a href=\"admin.php?act=categories\">Manage Categories</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			}
			break;
		case "categories-e":
			if ($mfhclass->input->get_vars['cat'] == NULL || $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_directory_categories` WHERE `category_id` = '{$mfhclass->input->get_vars['cat']}';")) != 1) {
				$mfhclass->templ->error("Sorry but the requested category could not be found.");
			} else {
				$category_info = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `mfh_directory_categories` WHERE `category_id` = '{$mfhclass->input->get_vars['cat']}';"));
				$mfhclass->templ->html = "<form method=\"post\" action=\"admin.php?act=categories-e-s\">
				<h1>Edit Category</h1>
				<fieldset>
				<legend>Category Settings</legend>
				<dl>
				<dt><label for=\"category_name\">Category Name:</label></dt>
				<dd><input id=\"category_name\" type=\"text\" size=\"25\" name=\"category_name\" value=\"{$category_info['category_name']}\" /></dd>
				</dl>
				<input type=\"hidden\" name=\"category_id\" value=\"{$mfhclass->input->get_vars['cat']}\">
				</fieldset>
				<fieldset class=\"submit-buttons\">
				<input class=\"button1\" type=\"submit\" id=\"submit\" onclick=\"this.className = 'button1 disabled';\" onsubmit=\"this.disabled = 'disabled';\" value=\"Save Category\" />
				</fieldset>
				</form>";
			}
			break;
		case "categories-e-s":
			if ($mfhclass->input->post_vars['category_name'] == NULL) {
				$mfhclass->templ->error("No category name entered.");
			} else {
				$mfhclass->db->query("UPDATE `mfh_directory_categories` SET `category_name` = '{$mfhclass->input->post_vars['category_name']}' WHERE `category_id` = '{$mfhclass->input->post_vars['category_id']}';");
				$mfhclass->templ->success("The category <b>{$mfhclass->input->post_vars['category_name']}</b> has been successfully updated. <br /><br /><a href=\"admin.php?act=categories\">Manage Categories</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			}
			break;
		case "categories-r":
			if ($mfhclass->input->get_vars['cat'] == NULL || $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_directory_categories` WHERE `category_id` = '{$mfhclass->input->get_vars['cat']}';")) != 1) {
				$mfhclass->templ->error("Sorry but the requested category could not be found.");
			} else {
				$mfhclass->templ->html = "<fieldset>
				<legend>Category Deletion</legend>
				<form action=\"admin.php?act=categories-r-d\" method=\"post\">
				<h1>Confirm Deletion</h1><br />
				<p>Are you sure you wish to carry out this operation? <br /><br />
				If you select \"Yes\" there is no undo.</p>
				<input type=\"hidden\" name=\"category_id\" value=\"{$mfhclass->input->get_vars['cat']}\">
				<div style=\"text-align: center;\">
				<input type=\"submit\" value=\"Yes\" class=\"button2\" />&nbsp; 
				<input type=\"button\" onclick=\"javascript: history.go(-1);\" value=\"No\" class=\"button2\" />
				</div>
				</form>
				</fieldset>";
			}
			break;
		case "categories-r-d":
			$mfhclass->db->query("DELETE FROM `mfh_directory_categories` WHERE `category_id` = '{$mfhclass->input->post_vars['category_id']}';");
			$mfhclass->templ->success("Category successfully deleted. <br /><br /><a href=\"admin.php?act=categories\">Manage Categories</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			break;
		case "database":
			$page_links = $mfhclass->templ->pagelinks("admin.php", $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` ORDER BY `time_started` DESC;")));
			$mfhclass->templ->html = "<h1>Database Manager</h1> <br />
			<p>The NasuTek Multi Forum Host database manager enables your website the ability to store the data 
			from hosted forums over many databases.
			<br /><br />
			<a href=\"admin.php?act=database-n\">Add Database</a>
			<table cellspacing=\"1\">
			<thead>
			<tr><th>#</th><th>MySQL Host</th><th>Database Name<th>MySQL Username</th><th>MySQL Password</th><th>Signups Allowed</th><th>Actions</th></tr>
			</thead>
			<tbody>";
			$sql = $mfhclass->db->query("SELECT * FROM `mfh_forum_databases` ORDER BY `database_id` ASC;");
			while ($row = $mfhclass->db->fetch_array($sql)) {
				$trclass = (($trclass == "row1") ? "row2" : "row1");
				$mfhclass->templ->html .= "<tr class=\"{$trclass}\">
				<td>{$row['database_id']}</td>
				<td>{$row['sql_host']}</td>
				<td>{$row['sql_database']}</td>
				<td>{$row['sql_username']}</td>
				<td>{$row['sql_password']}</td>
				<td>".(($row['allow_signups'] == 1) ? "Yes" : "No")."</td>	
				<td><a href=\"admin.php?act=database-e&db_id={$row['database_id']}\">Edit Settings</a> | <a href=\"admin.php?act=database-r&db_id={$row['database_id']}\">Delete</a></td>
				</tr>";
			}
			$mfhclass->templ->html .= "</tbody>
			</table></p>";
			break;
		case "database-r":
			if ($mfhclass->input->get_vars['db_id'] == NULL || $mfhclass->input->get_vars['db_id'] == 1 || $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_forum_databases` WHERE `database_id` = '{$mfhclass->input->get_vars['db_id']}';")) != 1) {		
				$mfhclass->templ->error("Sorry but the requested database could not be found.");
			} else {
				$mfhclass->templ->html = "<fieldset>
				<legend>Database Deletion</legend>
				<form action=\"admin.php?act=database-r-d\" method=\"post\">
				<h1>Confirm Deletion</h1><br />
				<p>Are you sure you wish to carry out this operation? <br /><br />
				If you select \"Yes\" there is no undo.</p>
				<input type=\"hidden\" name=\"db_id\" value=\"{$mfhclass->input->get_vars['db_id']}\">
				<div style=\"text-align: center;\">
				<input type=\"submit\" value=\"Yes\" class=\"button2\" />&nbsp; 
				<input type=\"button\" onclick=\"javascript: history.go(-1);\" value=\"No\" class=\"button2\" />
				</div>
				</form>
				</fieldset>";
			}
			break;
		case "database-r-d":
			$mfhclass->db->query("DELETE FROM `mfh_forum_databases` WHERE `database_id` = '{$mfhclass->input->post_vars['db_id']}';");
			$mfhclass->templ->success("Database successfully deleted. <br /><br /><a href=\"admin.php?act=database\">Database Manager</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			break;
		case "database-e":
			if ($mfhclass->input->get_vars['db_id'] == NULL || $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_forum_databases` WHERE `database_id` = '{$mfhclass->input->get_vars['db_id']}';")) != 1) {		
				$mfhclass->templ->error("Sorry but the requested database could not be found.");
			} else {
				$database_info = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `mfh_forum_databases` WHERE `database_id` = '{$mfhclass->input->get_vars['db_id']}';"));
				$mfhclass->templ->html = "\t\t\t\t<form method=\"post\" action=\"admin.php?act=database-e-s\">
				<h1>Database Settings</h1>
				<fieldset>
				<legend>Database Settings</legend>
				<dl>
				<dt><label for=\"sql_host\">MySQL Host:</label></dt>
				<dd><input id=\"sql_host\" type=\"text\" size=\"25\" name=\"sql_host\" value=\"{$database_info['sql_host']}\" /></dd>
				</dl>
				<dl>
				<dt><label for=\"sql_database\">MySQL Database Name:</label></dt>
				<dd><input id=\"sql_database\" type=\"text\" size=\"25\" name=\"sql_database\" value=\"{$database_info['sql_database']}\" /></dd>
				</dl>
				<dl>
				<dt><label for=\"sql_username\">MySQL Username:</label></dt>
				<dd><input id=\"sql_username\" type=\"text\" size=\"25\" name=\"sql_username\" value=\"{$database_info['sql_username']}\" /></dd>
				</dl>
				<dl>
				<dt><label for=\"sql_password\">MySQL Password (optional):</label></dt>
				<dd><input id=\"sql_password\" type=\"password\" size=\"25\" name=\"sql_password\" value=\"{$database_info['sql_password']}\" /></dd>
				</dl>
				<dl>
				<dt><label for=\"allow_signups\">Allow Signups:</label></dt>
				<dd><input id=\"allow_signups\" type=\"radio\" size=\"25\" name=\"allow_signups\" value=\"1\" ".(($database_info['allow_signups'] == 1) ? "checked=\"checked\"" : NULL)." /> Yes <input id=\"allow_signups\" type=\"radio\" size=\"25\" name=\"allow_signups\" value=\"0\" ".(($database_info['allow_signups'] == 0) ? "checked=\"checked\"" : NULL)." /> No</dd>
				</dl>
				</fieldset>
				<input type=\"hidden\" name=\"db_id\" value=\"{$mfhclass->input->get_vars['db_id']}\">
				<fieldset class=\"submit-buttons\">
				<input class=\"button1\" type=\"submit\" id=\"submit\" onclick=\"this.className = 'button1 disabled';\" onsubmit=\"this.disabled = 'disabled';\" value=\"Save\" />
				</fieldset>
				</form>";
			}
			break;		
		case "database-e-s":
			if ($mfhclass->input->post_vars['db_id'] == 1) {
				if (!is_writable("{$mfhclass->info->root_path}source/includes/config.php")) {
					$mfhclass->templ->error("Please ensure the file <b>{$mfhclass->info->root_path}source/includes/config.php</b> has the ability to be written to.");
				} else {
					if ($config = fopen("{$mfhclass->info->root_path}source/includes/config.php", "w")) {
						$file_string = "<"."?php

						$"."mfhclass->info->config = array();

						$"."mfhclass->info->site_installed = true;

						$"."mfhclass->info->config['sql_host']     = \"{$mfhclass->input->post_vars['sql_host']}\";
						$"."mfhclass->info->config['sql_username'] = \"{$mfhclass->input->post_vars['sql_username']}\";
						$"."mfhclass->info->config['sql_password'] = \"{$mfhclass->input->post_vars['sql_password']}\";
						$"."mfhclass->info->config['sql_database'] = \"{$mfhclass->input->post_vars['sql_database']}\";
						$"."mfhclass->info->config['site_name']    = \"{$mfhclass->info->config['site_name']}\";
						$"."mfhclass->info->config['date_format']  = \"{$mfhclass->info->config['date_format']}\";
						$"."mfhclass->info->config['email_out']    = \"{$mfhclass->info->config['email_out']}\";
						$"."mfhclass->info->config['max_results']  = {$mfhclass->info->config['max_results']};\n\n";
						$file_string .= "?".">";
						if (!fwrite($config, $file_string)) {
							$mfhclass->templ->error("Failed to write to file <b>{$mfhclass->info->root_path}source/includes/config.php</b>. Please ensure the script has permission to write to it.");
						}
					} else {
						$config->templ->error("Failed to open file <b>{$mfhclass->info->root_path}source/includes/config.php</b> for writing. Please ensure the script has permission to write to it.");
					}
				}
			}
			$mfhclass->db->query("UPDATE `mfh_forum_databases` SET `sql_username` = '{$mfhclass->input->post_vars['sql_username']}', `sql_database` = '{$mfhclass->input->post_vars['sql_database']}', `sql_password` = '{$mfhclass->input->post_vars['sql_password']}', `sql_host` = '{$mfhclass->input->post_vars['sql_host']}', `allow_signups` = '{$mfhclass->input->post_vars['allow_signups']}' WHERE `database_id` = '{$mfhclass->input->post_vars['db_id']}';");
			$mfhclass->templ->success("Database successfully updated. <br /><br /><a href=\"admin.php?act=database\">Database Manager</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			break;		
		case "database-n":
			$mfhclass->templ->html = "\t\t\t\t<form method=\"post\" action=\"admin.php?act=database-n-s\">
			<h1>New Database</h1>
			<fieldset>
			<legend>Database Settings</legend>
			<dl>
			<dt><label for=\"sql_host\">MySQL Host:</label></dt>
			<dd><input id=\"sql_host\" type=\"text\" size=\"25\" name=\"sql_host\" value=\"\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"sql_database\">MySQL Database Name:</label></dt>
			<dd><input id=\"sql_database\" type=\"text\" size=\"25\" name=\"sql_database\" value=\"\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"sql_username\">MySQL Username:</label></dt>
			<dd><input id=\"sql_username\" type=\"text\" size=\"25\" name=\"sql_username\" value=\"\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"sql_password\">MySQL Password (optional):</label></dt>
			<dd><input id=\"sql_password\" type=\"password\" size=\"25\" name=\"sql_password\" value=\"\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"allow_signups\">Allow Signups:</label></dt>
			<dd><input id=\"allow_signups\" type=\"radio\" size=\"25\" name=\"allow_signups\" value=\"1\" checked=\"checked\" /> Yes <input id=\"allow_signups\" type=\"radio\" size=\"25\" name=\"allow_signups\" value=\"0\" /> No</dd>
			</dl>
			</fieldset>
			<fieldset class=\"submit-buttons\">
			<input class=\"button1\" type=\"submit\" id=\"submit\" onclick=\"this.className = 'button1 disabled';\" onsubmit=\"this.disabled = 'disabled';\" value=\"Save\" />
			</fieldset>
			</form>";
			break;		
		case "database-n-s":
			$mfhclass->db->query("INSERT INTO `mfh_forum_databases` (`sql_host`, `sql_database`, `sql_password`, `sql_username`, `allow_signups`) VALUES ('{$mfhclass->input->post_vars['sql_host']}', '{$mfhclass->input->post_vars['sql_database']}', '{$mfhclass->input->post_vars['sql_password']}', '{$mfhclass->input->post_vars['sql_username']}', '{$mfhclass->input->post_vars['allow_signups']}');");
			$mfhclass->templ->success("Database successfully added. <br /><br /><a href=\"admin.php?act=database\">Database Manager</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			break;		
		case "admins":
			$page_links = $mfhclass->templ->pagelinks("admin.php?act=admins", $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_admin_accounts` ORDER BY `admin_id` ASC;")));
			$mfhclass->templ->html = "<h1>Manage Administrators</h1>
			<p><div style=\"float: left;\"><a href=\"admin.php?act=admins-n\">Create New Account</a></div> <div style=\"float: right;\">{$page_links}</div><br />
			<table cellspacing=\"1\">
			<thead>
			<tr><th>#</th><th>Username</th><th>E-Mail Address</th><th>IP Address</th><th>Actions</th></tr>
			</thead>
			<tbody>";
			$sql = $mfhclass->db->query("SELECT * FROM `mfh_admin_accounts` ORDER BY `admin_id` ASC LIMIT <# query limit #>;");
			while ($row = $mfhclass->db->fetch_array($sql)) {
				$trclass = (($trclass == "row1") ? "row2" : "row1");
				$mfhclass->templ->html .= "<tr class=\"{$trclass}\">
				<td>{$row['admin_id']}</td>
				<td>{$row['username']}</td>
				<td>{$row['email_address']}</td>
				<td>{$row['ip_address']}</td>	
				<td><a href=\"admin.php?act=admins-e&admin_id={$row['admin_id']}\">Edit Password</a> | <a href=\"admin.php?act=admins-r&admin_id={$row['admin_id']}\">Delete</a></td>
				</tr>";
			}
			$mfhclass->templ->html .= "</tbody>
			</table></p>";
			break;
		case "admins-r":
			if ($mfhclass->input->get_vars['admin_id'] == NULL || $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_admin_accounts` WHERE `admin_id` = '{$mfhclass->input->get_vars['admin_id']}';")) != 1) {
				$mfhclass->templ->error("Sorry but the requested administrator could not be found.");
			} elseif ($mfhclass->input->get_vars['admin_id'] == 1) {
				$mfhclass->templ->error("The root administrator account is not allowed to be deleted.");
			} else {
				$mfhclass->templ->html = "<fieldset>
				<legend>Account Deletion</legend>
				<form action=\"admin.php?act=admins-r-d\" method=\"post\">
				<h1>Confirm Deletion</h1><br />
				<p>Are you sure you wish to carry out this operation? <br /><br />
				If you select \"Yes\" there is no undo.</p>
				<input type=\"hidden\" name=\"admin_id\" value=\"{$mfhclass->input->get_vars['admin_id']}\">
				<div style=\"text-align: center;\">
				<input type=\"submit\" value=\"Yes\" class=\"button2\" />&nbsp; 
				<input type=\"button\" onclick=\"javascript: history.go(-1);\" value=\"No\" class=\"button2\" />
				</div>
				</form>
				</fieldset>";
			}
			break;
		case "admins-r-d":
			$mfhclass->db->query("DELETE FROM `mfh_admin_accounts` WHERE `admin_id` = '{$mfhclass->input->post_vars['admin_id']}';");
			$mfhclass->templ->success("Account successfully deleted. <br /><br /><a href=\"admin.php?act=admins\">Manage Admin Accounts</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			break;
		case "admins-e":
			if ($mfhclass->input->get_vars['admin_id'] == NULL || $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_admin_accounts` WHERE `admin_id` = '{$mfhclass->input->get_vars['admin_id']}';")) != 1) {
				$mfhclass->templ->error("Sorry, but the requested admin could not be found.");
			} else {
				$mfhclass->templ->html = "<h1>Edit Account Password</h1>
				<form action=\"admin.php?act=admins-e-s\" method=\"post\">
				<fieldset>
				<legend>Password Settings</legend>
				<dl>
				<dt><label for=\"password\">Current Administrator Password:</label><br /><span class=\"explain\">Must enter the current password of this administrator to change it.</span></dt>
				<dd><input id=\"password\" type=\"password\" size=\"25\" maxlength=\"30\" name=\"password\" value=\"\" /></dd>
				</dl>
				<dl>
				<dt><label for=\"new_password\">New Administrator Password:</label><br /><span class=\"explain\">Must be between 6 and 30 characters in lenght. For more security we recommend that the password entered contains at least one numerical character.</span></dt>
				<dd><input id=\"new_password\" type=\"password\" size=\"25\" maxlength=\"30\" name=\"new_password\" value=\"\" /></dd>
				</dl>
				<dl>
				<dt><label for=\"new_password-c\">New Administrator Password (confirm):</label></dt>
				<dd><input id=\"new_password-c\" type=\"password\" size=\"25\" maxlength=\"30\" name=\"new_password-c\" value=\"\" /></dd>
				</dl>
				</fieldset>
				<input type=\"hidden\" name=\"admin_id\" value=\"{$mfhclass->input->get_vars['admin_id']}\">
				<fieldset class=\"submit-buttons\">
				<input class=\"button1\" type=\"submit\" id=\"submit\" onclick=\"this.className = 'button1 disabled';\" onsubmit=\"this.disabled = 'disabled';\" value=\"Change Password\" />
				</fieldset>
				</form>";
			}
			break;
		case "admins-e-s":
			if ($mfhclass->input->post_vars['password'] == NULL || $mfhclass->input->post_vars['new_password'] == NULL || $mfhclass->input->post_vars['new_password-c'] == NULL) {
				$mfhclass->templ->error("Please ensure that all required fields of the new password form has been filled in.");
			} elseif ($mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_admin_accounts` WHERE `admin_id` = '{$mfhclass->input->post_vars['admin_id']}' AND `password` = '".md5($mfhclass->input->post_vars['password'])."';")) != 1) {
				$mfhclass->templ->error("Failed to find an administrator account with the information entered.");
			} elseif ($mfhclass->input->post_vars['new_password'] != $mfhclass->input->post_vars['new_password-c']) {
				$mfhclass->templ->error("Please ensure that the new passwords you have entered exactly match each other. ");
			} elseif (strlen($mfhclass->input->post_vars['new_password']) < 6 || strlen($mfhclass->input->post_vars['new_password']) > 30) {
				$mfhclass->templ->error("Please ensure that the new password you have entered are valid.");
			} else {
				$mfhclass->db->query("UPDATE `mfh_admin_accounts` SET `password` = '".md5($mfhclass->input->post_vars['new_password'])."' WHERE `admin_id` = '{$mfhclass->input->post_vars['admin_id']}';");
				$mfhclass->templ->success("Password successfully changed.  <br /><br /><a href=\"admin.php?act=admins\">Manage Admin Accounts</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			}
			break;
		case "admins-n":
			$mfhclass->templ->html = "<h1>Create An Account</h1>
			<form method=\"post\" action=\"admin.php?act=admins-n-s\">
			<fieldset>
			<legend>Administrator Settings</legend>
			<dl>
			<dt><label for=\"username\">Administrator Username:</label><br /><span class=\"explain\">Must be between 3 and 30 characters in length and only contain the characters: -_A-Za-z0-9</span></dt>
			<dd><input id=\"username\" type=\"text\" size=\"25\" maxlength=\"30\" name=\"username\" value=\"\" /></dd>
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
			<dd><input id=\"email_address\" type=\"text\" size=\"25\" name=\"email_address\" value=\"\" /></dd>
			</dl>
			</fieldset>
			<fieldset class=\"submit-buttons\">
			<input class=\"button1\" type=\"submit\" id=\"submit\" onclick=\"this.className = 'button1 disabled';\" onsubmit=\"this.disabled = 'disabled';\" value=\"Create Account\" />
			</fieldset>
			</form>";
			break;
		case "admins-n-s":
			if ($mfhclass->input->post_vars['username'] == NULL || $mfhclass->input->post_vars['password'] == NULL || $mfhclass->input->post_vars['password_confirm'] == NULL || $mfhclass->input->post_vars['email_address'] == NULL) {
				$mfhclass->templ->error("Please ensure that all required fields of the new account form has been filled in.");
			} elseif (!$mfhclass->funcs->valid_email($mfhclass->input->post_vars['email_address'])) {
				$mfhclass->templ->error("The administrator email address entered appears to be invalid.");
			} elseif ($mfhclass->input->post_vars['password'] != $mfhclass->input->post_vars['password-c']) {
				$mfhclass->templ->error("Please ensure that the administrator passwords you have entered exactly match each other. ");
			} elseif (strlen($mfhclass->input->post_vars['password']) < 6 || strlen($mfhclass->input->post_vars['password']) > 30) {
				$mfhclass->templ->error("Please ensure you have entered a valid administrator password.");
			} elseif (!$mfhclass->funcs->valid_string($mfhclass->input->post_vars['username']) || strlen($mfhclass->input->post_vars['username']) < 3 || strlen($mfhclass->input->post_vars['username']) > 30) {
				$mfhclass->templ->error("Please ensure you have entered a valid administrator username.");
			} else {
				$mfhclass->db->query("INSERT INTO `mfh_admin_accounts` (`admin_id`, `username`, `password`, `email_address`, `ip_address`) VALUES ('', '{$mfhclass->input->post_vars['username']}', '".md5($mfhclass->input->post_vars['password'])."', '{$mfhclass->input->post_vars['email_address']}', '{$mfhclass->input->server_vars['remote_addr']}');");
				$mfhclass->templ->success("Account successfully added.  <br /><br /><a href=\"admin.php?act=admins\">Manage Admin Accounts</a><br /><a href=\"admin.php\">Admin CP Index</a>");
			}
			break;
		default:
			$page_links = $mfhclass->templ->pagelinks("admin.php", $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` ORDER BY `time_started` DESC;")));
			$mfhclass->templ->html = "<h1>Admin CP Index</h1>
			<p>{$page_links}<br />
			<table cellspacing=\"1\">
			<thead>
			<tr><th>Access Name</th><th>Total Hits</th><th>Date Created</th><th>Total Members</th><th>Days Withou a Post</th><th>Actions</th></tr>
			</thead>
			<tbody>";
			$sql = $mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` ORDER BY `time_started` DESC LIMIT <# query limit #>;");
			if ($mfhclass->db->total_rows($sql) < 1) {
				$mfhclass->templ->error("There are no hosted forums at this time.");
			} else {
				while ($row = $mfhclass->db->fetch_array($sql)) {
					$last_post = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `{$row['access_name']}_posts` ORDER BY `post_id` DESC LIMIT 1;", $row['database_id']));
					$days_without_post = floor((mktime() - $last_post['post_time']) / 86400);
					$trclass   = (($trclass == "row1") ? "row2" : "row1");
					$mfhclass->templ->html .= "<tr class=\"{$trclass}\">
					<td><a target=\"_blank\" href=\"{$mfhclass->info->site_url}forums/{$row['access_name']}/\">{$row['access_name']}</a></td>
					<td>".$mfhclass->funcs->format_number($row['total_hits'])."</td>
					<td>".date("F j, Y", $row['time_started'])."</td>
					<td>".$mfhclass->funcs->format_number(($mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `{$row['access_name']}_users`;", $row['database_id'])) - $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `{$row['access_name']}_bots`;", $row['database_id']))) - 1)."</td>
					<td>{$days_without_post} Day(s)</td>	
					<td><a href=\"admin.php?act=forum_settings&access_name={$row['access_name']}\">Edit Settings</a> | <a href=\"admin.php?act=remove_forum&access_name={$row['access_name']}\">Delete</a></td>
					</tr>";
				}
			}
			$mfhclass->templ->html .= "</tbody>
			</table></p>";
	}

	$mfhclass->templ->output();

?>
