<?php
	// ======================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://nasutek.com/products/php/mfh
	// Licenced under the BSD Licence
	// ======================================== /
	
	class mfh_mysql_driver
	{
		// Class Initialization Method
		function __construct() { global $mfhclass; $this->mfhclass = &$mfhclass; }
		
		function connect($host = MYSQL_DEFAULT_CONNECT_HOST, $username, $password, $database, $port = MYSQL_DEFAULT_CONNECT_PORT, $boolerror = false)
		{
			$connection_id = mysql_connect("{$host}:{$port}", $username, $password, false);
			
			if (is_resource($connection_id) == false) {
				return (($boolerror == false) ? $this->error() : false);
			} else {
				if (mysql_select_db($database, $connection_id) == false) {
					return (($boolerror == false) ? $this->error() : false);
				} else {
					if (is_resource($this->root_connection) == false) {
						$this->root_connection = $connection_id;
					}
				}
			}
			
			return $connection_id;
		}
		
		function close()
		{
			if (is_resource($this->root_connection) == true) {
				mysql_close($this->root_connection);
			}
		}
		
		function query($query, $input = NULL, $addon = NULL)
		{		
			if (is_resource($this->root_connection) == false) {
				$this->connect($this->mfhclass->info->config['sql_host'], $this->mfhclass->info->config['sql_username'], $this->mfhclass->info->config['sql_password'], $this->mfhclass->info->config['sql_database']);
			}
			
			if (strpos($query, "<# query limit #>") == true) {				
				$query = str_replace("<# query limit #>", sprintf("%s, {$this->mfhclass->info->config['max_results']}", (($this->mfhclass->info->current_page * $this->mfhclass->info->config['max_results']) - $this->mfhclass->info->config['max_results'])), $query);
			}
			
			if (is_array($addon) == true && empty($addon) == false) {
				foreach ($addon as $key => $replacement) {
					$query = str_replace(sprintf("[[%s]]", ($key + 1)), stripslashes($replacement), $query);
				}
			}
			
			if (is_array($input) == true && empty($input) == false) {
				foreach ($input as $key => $replacement) {
					$query = str_replace(sprintf("[%s]", ($key + 1)), mysql_real_escape_string(str_replace(array("[", "]"), array("\[", "\]"), stripslashes($replacement))), $query);
				}
			}
			
			$query = str_replace(array("\[", "\]"), array("[", "]"), $query);
			$this->query_result = mysql_query($query, $this->root_connection);
			
			return (($this->query_result == false) ? $this->error($query) : $this->query_result);
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
