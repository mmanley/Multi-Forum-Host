<?php
	// ======================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://nasutek.com/products/php/mfh
	// Licenced under the BSD Licence
	// ======================================== /

	class mfh_template_engine
	{
		function output()
		{
			global $mfhclass;
			if ($mfhclass->templ->html == NULL) {
				exit("<b>Fatal Error</b>: No Template HTML to output");
			} else {
				$templ_html  = $this->page_header();
				$templ_html .= $mfhclass->templ->html;
				$templ_html .= $this->page_footer();
				$templ_html .= base64_decode("PCEtLSBQb3dlcmVkIGJ5IE1paGFsaXNtIE11bHRpIEZvcnVtIEhvc3QgLSBDb3B5cmlnaHQgKGMpIDIwMDcgTWloYWxpc20sIEluYy4gKHd3dy5taWhhbGlzbS5jb20pIC0tPg==");
				$mfhclass->db->close();
				echo $templ_html;
				exit;
			}
		}

		function page_header()
		{
			global $mfhclass;
			if ($mfhclass->templ->page_header == NULL) {
				ob_start();
				require_once "{$mfhclass->info->root_path}source/public_html/page_header.php";
				$header_html = ob_get_clean();
			} else {
				$header_html = $mfhclass->templ->page_header;
			}
			return $header_html;
		}

		function page_footer()
		{
			global $mfhclass;
			if ($mfhclass->templ->page_footer == NULL) {
				ob_start();
				require_once "{$mfhclass->info->root_path}source/public_html/page_footer.php";
				$footer_html = ob_get_clean();
			} else {
				$footer_html = $mfhclass->templ->page_footer;
			}
			return $footer_html;
		}
		
		
		function error($error, $output_html = true)
		{
			global $mfhclass;
			$templ_html = "<div class=\"errorbox\">
			<h3>Warning</h3>
			<p>{$error}</p>
			</div>";
			if ($output_html == true) {
				$mfhclass->templ->html = $templ_html;
				$mfhclass->templ->output();
			} else {
				return $templ_html;
			}
		}

		function success($message, $output_html = true)
		{
			global $mfhclass;
			$templ_html = "<div class=\"successbox\">
			<h3>Information</h3>
			<p>{$message}</p>
			</div>";
			if ($output_html == true) {
				$mfhclass->templ->html = $templ_html;
				$mfhclass->templ->output();
			} else {
				return $templ_html;
			}
		}
		
		function pagelinks($base_url, $total_results)
		{
			global $mfhclass;
			$total_pages  = ceil($total_results / $mfhclass->info->config['max_results']); 
			$base_divider = ((preg_match("/\?/", $base_url)) ? "&amp;" : "?");
			$current_page = (($mfhclass->info->current_page > $total_pages) ? $total_pages : $mfhclass->info->current_page); 
			if ($total_pages >= 2) {
				if ($current_page > 1) {
					$templ_html .= " <a href=\"{$base_url}{$base_divider}page=".($mfhclass->info->current_page - 1)."\">&laquo; Previous</a> ";
				}
				for ($i = 0; $i < $total_pages; $i++) {
					$this_page = ($i + 1);
					if ($this_page == $current_page) {
						$templ_html .= " <strong>{$this_page}</strong> ";
					} else {
						if ($this_page < ($current_page - 3)) {
							continue;
						}
						if ($this_page > ($current_page + 3)) {
							break;
						}
						$templ_html .= " <a href=\"{$base_url}{$base_divider}page={$this_page}\">".$mfhclass->funcs->format_number($this_page)."</a> ";
					}
				}
				if ($current_page < $total_pages) {
					$templ_html .= " <a href=\"{$base_url}{$base_divider}page=".($mfhclass->info->current_page + 1)."\">Next &raquo;</a> ";
				}
				return "<div class=\"pagination\" style=\"float:right;\">Page {$current_page} of {$total_pages} &bull; <span>{$templ_html}</span></div>";
			} else {
				return "<div class=\"pagination\" style=\"float:right;\">Viewing Only Page</div>";
			}
		}
	}

?>
