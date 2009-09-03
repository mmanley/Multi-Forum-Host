<?php
	// ======================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://nasutek.com/index2/index.php?id=42
	// ======================================== /

	class mfh_mysql_driver
	{	
		function connect($host = "localhost", $username, $password, $database, $alt_con_id = NULL)
		{
			$connection_id = mysql_connect($host, $username, $password, true);
			if ($connection_id == false || !$this->select_db($database, $connection_id)) {
				$this->error();
			} else {
				if (!is_resource($this->root_connection)) {
					$this->root_connection = $connection_id;
				} else {
					if (!is_array($this->alt_connections)) {
						$this->alt_connections = array();
					}
					$this->alt_connections[$alt_con_id] = $connection_id;
				}
			}
		}

		function close()
		{
			mysql_close($this->root_connection);
			if (is_array($this->alt_connections)) {
				foreach ($this->alt_connections as $id => $connection) {
					mysql_close($this->alt_connections[$id]);
				}
			}
		}

		function select_db($database, $connection_id)
		{
			return mysql_select_db($database, $connection_id);
		}

		function query($query, $database_id = 1)
		{
			global $mfhclass;
			$query = preg_replace("/\<# query limit #\>/i", ((($mfhclass->info->current_page * $mfhclass->info->config['max_results']) - $mfhclass->info->config['max_results']).", {$mfhclass->info->config['max_results']}"), $query);
			if ($database_id != NULL && $database_id != 1) {
				if (!is_resource($this->alt_connections[$database_id])) {
					$database_info = $this->get_database_info($database_id);
					$this->connect($database_info['sql_host'], $database_info['sql_username'], $database_info['sql_password'], $database_info['sql_database'], $database_info['database_id']);
				}
				$connection_id = $this->alt_connections[$database_id];
			} else {
				$connection_id = $this->root_connection;
			}
			$this->query_result = mysql_query($query, $connection_id);
			if (mysql_error() != NULL) {
				$this->error($query);
			} else {
				return $this->query_result;
			}
		}
		
		function get_database_info($database_id = 1) {
			if ($database_id != 1 && $database_id != NULL) {
				return $this->fetch_array($this->query("SELECT * FROM `mfh_forum_databases` WHERE `database_id` = '{$database_id}';"));
			} else {
				return false;
			}
		}

		function total_rows($query_id)
		{
			return mysql_num_rows($query_id);
		}

		function fetch_array($query_id, $result_type = MYSQL_ASSOC)
		{
			return mysql_fetch_array($query_id, $result_type);
		}
		
		function error($query = "No Query Executed")
		{
			global $mfhclass;
			$error_html = "\t\t\t<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">
			<html xmlns=\"http://www.w3.org/1999/xhtml\" dir=\"ltr\">
			<head>
			<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />
			<title>MySQL Error</title>
			<style type=\"text/css\">
				* { margin: 0; padding: 0; } 
				html { font-size: 100%; height: 100%; margin-bottom: 1px; background-color: #E4EDF0; } 
				body { font-family: \"Lucida Grande\", Verdana, Helvetica, Arial, sans-serif; color: #536482; background: #E4EDF0; font-size: 62.5%; margin: 0; } 
				a:link, a:active, a:visited { color: #006699; text-decoration: none; } 
				a:hover { color: #DD6900; text-decoration: underline; } 
				#wrap { padding: 0 20px 15px 20px; min-width: 615px; } 
				#page-header { text-align: right; height: 40px; } 
				#page-footer { clear: both; font-size: 1em; text-align: center; } 
				.panel { margin: 4px 0; background-color: #FFFFFF; border: solid 1px  #A9B8C2; }
				#errorpage #page-header a { font-weight: bold; line-height: 6em; } 
				#errorpage #content { padding: 10px; } 
				#errorpage #content h1 { line-height: 1.2em; margin-bottom: 0; color: #DF075C; } 
				#errorpage #content div { margin-top: 20px; margin-bottom: 5px; border-bottom: 1px solid #CCCCCC; padding-bottom: 5px; color: #333333; font: bold 1.2em \"Lucida Grande\", Arial, Helvetica, sans-serif; text-decoration: none; line-height: 120%; text-align: left; } 
				input, textarea { font-family: Verdana, Helvetica, Arial, sans-serif; font-size: 0.90em; font-weight: normal; cursor: text; vertical-align: middle; padding: 2px; color: #111111; border-left: 1px solid #AFAEAA; border-top: 1px solid #AFAEAA; border-right: 1px solid #D5D5C8; border-bottom: 1px solid #D5D5C8; background-color: #E3DFD8; }
				input:hover, textarea:hover {border-left: 1px solid #AFAEAA; border-top: 1px solid #AFAEAA; border-right: 1px solid #AFAEAA; border-bottom: 1px solid #AFAEAA; background-color: #E9E9E2; }
				input:focus, textarea:focus { border: 1px solid #BC2A4D; background-color: #E9E9E2; color: #BC2A4D; }
			</style>
			</head>
			<body id=\"errorpage\">
			<div id=\"wrap\">
			<div id=\"page-header\">
			&nbsp;
			</div>
			<div id=\"acp\">
			<div class=\"panel\">
			<div id=\"content\">
			<h1>MySQL Error</h1>
			<div>A MySQL error has occurred.</div>
			<p><textarea readonly=\"readonly\" rows=\"15\" cols=\"40\" wrap=\"virtual\" style=\"width:500px;\" tabindex=\"3\">Time: ".date($mfhclass->info->config['date_format'])."\nIP Address: {$mfhclass->input->server_vars['remote_addr']}\rError: ".mysql_error()."\nError Number: ".$this->error_number()."\nMySQL Query: {$query}</textarea></p>		
			</div>	
			</div>	
			</div>	
			<div id=\"page-footer\">
			Powered by <a href=\"http://www.phpbb.com/\">phpBB</a> &copy; 2000, 2002, 2005, 2007 <a href=\"http://www.phpbb.com/\">phpBB Group</a><br />
			</div>
			</div>
			</body>
			</html>";
			exit($error_html);
			return;
		}

		function error_number()
		{
			return ((mysql_errno() != NULL) ? mysql_errno() : "Unknown Error Number");
		}
	}

?>
