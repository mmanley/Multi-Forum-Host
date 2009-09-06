<?php
	// ======================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://nasutek.com/products/php/mfh
	// Licenced under the BSD Licence
	// ======================================== /
	
	class mfh_core_functions
	{
		function clean_array($array)
		{
			if (is_array($array)) {
				$array_keys = array_keys($array);
				for ($i = 0; $i < count($array_keys); $i++) {
					$key     = $array_keys[$i];
					$value   = $array[$key];
					$new_key = strtolower($key);
					unset($array[$key]);
					if (is_array($value)) {
						$array[$new_key] = $this->clean_array($value);
					} elseif ($value != NULL) {
						$array[$new_key] = $this->clean_value($value);
					}
				}
			}
			return $array;
		}

		function clean_value($value)
		{
			$value = stripslashes($value);
			$value = str_replace("&#032;", " ", $value);
			$value = str_replace("&", "&amp;", $value);
			$value = str_replace("<!--", "&#60;&#33;--", $value);
			$value = str_replace("-->", "--&#62;" , $value);
			$value = preg_replace("/<script/i", "&#60;script", $value);
			$value = str_replace(">", "&gt;", $value);
			$value = str_replace("<", "&lt;", $value);
			$value = str_replace('"', "&quot;", $value);
			$value = str_replace("\n", "<br />", $value);
			$value = str_replace("$", "&#036;", $value);
			$value = str_replace("\r", NULL, $value); 
			$value = str_replace("!", "&#33;", $value);
			$value = str_replace("'", "&#39;", $value); 
			return $value;
		}

		function format_number($number)
		{
			return strrev(preg_replace("/(\d{3})(?=\d)(?!\d*\.)/", "$1,", strrev($number)));
		}

		function valid_string($string, $valid_chars = "-_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
		{
			for ($i = 0; $i < strlen($string); $i++) {
				if (!preg_match("/".substr($string, $i, 1)."/", $valid_chars)) {
					$is_invalid = true;	
				}
			}
			return (($is_invalid == true) ? false : true);
 		}

		function format_filesize($filesize = 0)
		{
			$filesize_names = array("Byte(s)", "Kilobyte(s)", "Megabyte(s)", "Gigabyte(s)", "Terabyte(s)", "Petabyte(s)", "Exabyte(s)", "Zettabyte(s)", "Yottabyte(s)");
			while (($filesize / 1024) >= 1) {
				$filesize_count++;
				$filesize = ($filesize / 1024);
			}
			return (($filesize == 0 || $filesize_count > 9) ? "Unknown Filesize" : substr($filesize, 0, strpos($filesize, ".") + 4)." {$filesize_names[$filesize_count]}");
		}

		function forum_exists($access_name)
		{
			global $mfhclass;
			return (($mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` WHERE `access_name` = '{$access_name}';")) == 1) ? true : false);
		}

		function valid_email($email)
		{
			return ((preg_match("/[-_a-zA-Z0-9]+([._][-_a-zA-Z0-9]+)*@[^ ]+\.[-_a-zA-Z0-9]/", preg_quote($email))) ? true : false);
		}

		function fetch_url($base = true, $www = true, $query = true)
		{
			global $mfhclass;
			$the_url  = (($mfhclass->input->server_vars['https'] != NULL) ? "https://" : "http://");
			$the_url .= (($www == true && !preg_match("/^www\./", $mfhclass->input->server_vars['http_host'])) ? "www.{$mfhclass->input->server_vars['http_host']}" : $mfhclass->input->server_vars['http_host']);
			$the_url .= ((pathinfo($mfhclass->input->server_vars['php_self'], PATHINFO_DIRNAME) != "/") ? pathinfo($mfhclass->input->server_vars['php_self'], PATHINFO_DIRNAME)."/" : pathinfo($mfhclass->input->server_vars['php_self'], PATHINFO_DIRNAME)); 
			$the_url .= (($base == true) ? pathinfo($mfhclass->input->server_vars['php_self'], PATHINFO_BASENAME) : NULL);
			$the_url .= (($query == true && $mfhclass->input->server_vars['query_string'] != NULL) ? "?{$mfhclass->input->server_vars['query_string']}" : NULL); 
			return $the_url;
		}
	}

?>
