<?php
	// ======================================== \
	// NasuTek Multi Forum Host v4.0.x
	// Copyright (c) 2009 NasuTek Systems
	//
	// http://nasutek.com/products/php/mfh
	// Licenced under the BSD Licence
	// ======================================== /
	
	require_once "./source/includes/data.php";

	switch ($mfhclass->input->get_vars['act']) {
		case "signup":
			$mfhclass->templ->page_title = "{$mfhclass->info->config['site_name']} &raquo; Signup"; 
	       		$mfhclass->templ->html = "\t\t\t<div id=\"index_pb\" style=\"text-align: center; display: none;\">
			<p>Creating forum...<br /><br />
			<img src=\"css/images/progress_bar.gif\" alt=\"Loading...\" /> <br /><br />
			Your fourm is in the process of being created.<br /><br />
			<a href=\"javascript:void(0);\" onclick=\"toggle('index_pb'); toggle('index_bpb');\">Display Singup Form</a></p>
			</div>
			<div id=\"index_bpb\" style=\"display: block;\">
			<form method=\"post\" action=\"index.php?act=signup-p\" id=\"signup_form\">
			<h1>phpBB Forum Signup</h1><br />
			<p>Fill in the following form completely to set up your very own free copy 
			<b>phpBB {$mfhclass->info->phpbb_version}</b> to keep forever. Once your copy of 
			phpBB is set up you will be presented with information on how to access it.
			<fieldset>
			<legend>Forum Settings</legend>
			<dl>
			<dt><label for=\"access_name\">Access Name:</label><br /><span class=\"explain\">The access name that you enter will be used to generate your own custom forum URL. An access name must be between 3 and 30 characters in length and only contain the characters -_a-zA-Z0-9</span></dt>
			<dd><input id=\"access_name\" type=\"text\" size=\"25\" maxlength=\"30\" name=\"access_name\" value=\"\" /></span></dd>
			</dl>
			<dl>
			<dt><label for=\"forum_name\">Forum Name (optional):</label></dt>
			<dd><input id=\"forum_name\" type=\"text\" size=\"25\" name=\"forum_name\" value=\"\" /></dd>
			</dl>
			<dl>
			<dt><label for=\"forum_category\">Forum Category:</label><br /><span class=\"explain\">The category you chose will determine where to place your forum within our directory. Once signed up you can change the category via the phpBB Admin CP.</span></dt>
			<dd><select name=\"forum_category\" style=\"width: 190px;\">
			<option value=\"\">Select Category</option>
			<option value=\"-1\">None - Private Forum</option>";
			$sql = $mfhclass->db->query("SELECT * FROM `mfh_directory_categories` ORDER BY `category_name` ASC;");
			while ($row = $mfhclass->db->fetch_array($sql)) {
				$mfhclass->templ->html .= "<option value=\"{$row['category_id']}\">{$row['category_name']}</option>\n";
			}
			$mfhclass->templ->html .= "</select></dd>
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
			<dd><input id=\"email_address\" type=\"text\" size=\"25\" name=\"email_address\" value=\"\" /></dd>
			</dl>
			</fieldset>
			<div align=\"center\">
			<input type=\"checkbox\" name=\"iagree\" id=\"iagree\" value=\"something\"> <label for=\"iagree\"> By clicking \"Finish Signup\" I agree to the <a href=\"index.php?act=rules\">Terms of Service</a>.</label>
			</div><br />
			<fieldset class=\"submit-buttons\">
			<input class=\"button1\" type=\"submit\" id=\"submit\" onclick=\"this.className = 'button1 disabled'; toggle('index_pb'); toggle('index_bpb'); document.upload_form.submit();\" onsubmit=\"this.disabled = 'disabled';\" name=\"submit\" value=\"Finish Signup\" />
			</fieldset></p>
			</form></div>";
			break;
		case "signup-p":
			$mfhclass->templ->page_title = "{$mfhclass->info->config['site_name']} &raquo; Singup &raquo; Singup Complete";
			$mfhclass->input->post_vars['access_name'] = preg_replace("/-/", "_", strtolower($mfhclass->input->post_vars['access_name']));

			if ($mfhclass->input->post_vars['iagree'] == NULL || $mfhclass->input->post_vars['access_name'] == NULL || $mfhclass->input->post_vars['username'] == NULL || $mfhclass->input->post_vars['password'] == NULL || $mfhclass->input->post_vars['password-c'] == NULL || $mfhclass->input->post_vars['email_address'] == NULL || $mfhclass->input->post_vars['forum_category'] == NULL) {
				$mfhclass->templ->error("Please ensure that all required fields of the singup form has been filled in.");
			} elseif (!$mfhclass->funcs->valid_email($mfhclass->input->post_vars['email_address'])) {
				$mfhclass->templ->error("Please ensure that the administrator email address entered is valid.");
			} elseif ($mfhclass->input->post_vars['password'] != $mfhclass->input->post_vars['password-c']) {
				$mfhclass->templ->error("Please ensure that the administrator passwords you have entered exactly match each other. ");
			} elseif (strlen($mfhclass->input->post_vars['password']) < 6 || strlen($mfhclass->input->post_vars['password']) > 30) {
				$mfhclass->templ->error("Please ensure you have entered a valid administrator password.");
			} elseif (!$mfhclass->funcs->valid_string($mfhclass->input->post_vars['username']) || strlen($mfhclass->input->post_vars['username']) < 3 || strlen($mfhclass->input->post_vars['username']) > 30) {
				$mfhclass->templ->error("Please ensure you have entered a valid administrator username.");
			} elseif (!$mfhclass->funcs->valid_string($mfhclass->input->post_vars['access_name']) || strlen($mfhclass->input->post_vars['access_name']) < 3 || strlen($mfhclass->input->post_vars['access_name']) > 30) {
				$mfhclass->templ->error("Please ensure you have entered a valid access name");
			} elseif ($mfhclass->funcs->forum_exists($mfhclass->input->post_vars['access_name']) || in_array($mfhclass->input->post_vars['access_name'], array("access_name", "help", "support", "mfh"))) {
				$mfhclass->templ->error("Sorry but the requested access name is already in use.");
			} elseif ($mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_forum_databases` WHERE `allow_signups` = 1 ORDER BY RAND() LIMIT 1;")) < 1) {
				$mfhclass->templ->error("Sorry but signups are disabled.");
			} else {
				if (!mkdir("{$mfhclass->info->root_path}phpBB3/files/{$mfhclass->input->post_vars['access_name']}/", 0777)) {
					$mfhclass->templ->error("Failed to create upload folder <b>{$mfhclass->info->root_path}phpBB3/files/{$mfhclass->input->post_vars['access_name']}/</b>.");
				}
				
				$database_info = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `mfh_forum_databases` WHERE `allow_signups` = 1 ORDER BY RAND() LIMIT 1;"));
				
				$mfhclass->db->query("INSERT INTO `mfh_hosted_forums` (`database_id`, `access_name`, `time_started`, `total_hits`, `category_id`, `ip_address`, `email_address`) VALUES ('{$database_info['database_id']}', '{$mfhclass->input->post_vars['access_name']}', ".time().", 1, {$mfhclass->input->post_vars['forum_category']}, '{$mfhclass->input->server_vars['ip_address']}', '{$mfhclass->input->post_vars['email_address']}');");

				$replacevalues = array(	"DBNAME" => $mfhclass->input->post_vars['access_name'],
							"EMAIL" => $mfhclass->input->post_vars['email_address'],
							"SERVER_NAME" => $mfhclass->info->site_url,
							"SERVER_PROTOCOL" => "http://",
							"SITE_NAME" => $mfhclass->input->post_vars['forum_name'],
							"UPLOAD_PATH" => $mfhclass->input->post_vars['access_name'],
							"USERNAME" => $mfhclass->input->post_vars['username'],
							"USERNAME_MINI" => $mfhclass->input->post_vars['username'],
							"PASSWORD" => md5($mfhclass->input->post_vars['password']));

				$myFile = "{$mfhclass->info->root_path}/sql/phpbb-{$mfhclass->info->phpbb_version}.sql";
				$fh = fopen($myFile, 'r');
				$sqlscript = fread($fh, filesize($myFile));
				fclose($fh);

				$sqlscript = str_replace("##DBNAME##", $replacevalues["DBNAME"], $sqlscript);
				$sqlscript = str_replace("##EMAIL##", $replacevalues["EMAIL"], $sqlscript);
				$sqlscript = str_replace("##SERVER_NAME##", $replacevalues["SERVER_NAME"], $sqlscript);
				$sqlscript = str_replace("##SERVER_PROTOCOL##", $replacevalues["SERVER_PROTOCOL"], $sqlscript);
				$sqlscript = str_replace("##SITE_NAME##", $replacevalues["SITE_NAME"], $sqlscript);
				$sqlscript = str_replace("##UPLOAD_PATH##", $replacevalues["UPLOAD_PATH"], $sqlscript);
				$sqlscript = str_replace("##USERNAME##", $replacevalues["USERNAME"], $sqlscript);
				$sqlscript = str_replace("##USERNAME_MINI##", $replacevalues["USERNAME_MINI"], $sqlscript);
				$sqlscript = str_replace("##PASSWORD##", $replacevalues["PASSWORD"], $sqlscript);

				$mfhclass->db->query($sqlscript, $database_info['database_id']);

				$mfhclass->templ->html = "<h1>Forum Created</h1><br />
				<p>Congratulations, your new forum has been successfully created. Below are some details related to 
				your new phpBB powered forum and how to access it.
				<fieldset>
				<legend>Forum Information</legend>
				<dl>
				<dt><label for=\"forum_url\">Forum URL:</label></dt>
				<dd id=\"forum_url\"><a href=\"{$mfhclass->info->site_url}forums/{$mfhclass->input->post_vars['access_name']}/\">{$mfhclass->info->site_url}forums/{$mfhclass->input->post_vars['access_name']}/</a></dd>
				</dl>
				<dl>
				<dt><label for=\"acp_url\">Admin Control Panel URL:</label></dt>
				<dd id=\"acp_url\"><a href=\"{$mfhclass->info->site_url}forums/{$mfhclass->input->post_vars['access_name']}/adm/\">{$mfhclass->info->site_url}forums/{$mfhclass->input->post_vars['access_name']}/adm/</a></dd>
				</dl>
				<dl>
				<dt><label for=\"forum_name\">Forum Name:</label></dt>
				<dd id=\"forum_name\">".(($mfhclass->input->post_vars['forum_name'] == NULL) ? "<i>No Information</i>" : $mfhclass->input->post_vars['forum_name'])."</dd>
				</dl>
				</fieldset>
				<fieldset>
				<legend>Administrator Information</legend>
				<dl>
				<dt><label for=\"username\">Administrator Username:</label></dt>
				<dd id=\"username\">{$mfhclass->input->post_vars['username']}</dd>
				</dl>
				<dl>
				<dt><label for=\"password\">Administrator Password:</label></dt>
				<dd id=\"password\">{$mfhclass->input->post_vars['password']}</dd>
				</dl>
				<dl>
				<dt><label for=\"email_address\">Administrator E-Mail Address:</label></dt>
				<dd id=\"email_address\">{$mfhclass->input->post_vars['email_address']}</dd>
				</dl>
				</fieldset>
				<fieldset class=\"submit-buttons\">
				<a target=\"_blank\" class=\"button1\" href=\"{$mfhclass->info->site_url}forums/{$mfhclass->input->post_vars['access_name']}/\">Continue to Forum</a>
				</fieldset></p>";
			}
			break;
		case "rules":
			$mfhclass->templ->page_title = "{$mfhclass->info->config['site_name']} &raquo; Terms of Service";
			$mfhclass->templ->html = "<h1>Terms of Service</h1><br />
			<p>Terms of Service last modified on <i>".date($mfhclass->info->config['date_format'], filemtime("{$mfhclass->info->root_path}index.php"))."</i>
			<br /><br />
			By using this site or creating a forum, you agree to be bound by these terms and conditions and all changes therein 	as posted.
			<br /><br />
			You must be 13 or older to use this site, create an account, visit any of our forums, or to create a forum.
			<br /><br />
			{$mfhclass->info->config['site_name']} is provided as-is with no guarantees for fitness for any particular use. You agree to 	{$mfhclass->info->config['site_name']}'s limitations including all changes in these terms as made and published on this site, with or 	without additional notice.
			<br /><br />
			The content of a forum is the posts, messages, links, emails, uploaded files, or any other user created data 	(\"Content\"). The poster is responsible for any Content transmitted to an {$mfhclass->info->config['site_name']} server. As the 	creator of a forum, it is your job to make sure the Content posted on your forum complies with the rules and these 	Terms of Service. {$mfhclass->info->config['site_name']} does not guarantee the accuracy, legitimacy, quality or the integrity of any 	Content. {$mfhclass->info->config['site_name']} does not guarantee that Content will not be lost, deleted, or damaged.
			<br /><br />
			Below is a list of prohibited content that is not allowed <br />
			<ul>
			<li>(a) Content that violates any law including, the laws of any locality, state, country, nation or international law. </li>
			<li>(b) Content that infringes upon any rights (copyrights, patents and privacy rights).</li>
			<li>(c) Content that is threatening, defamatory, racist, abusive, obscene, or profane.</li> 
			<li>(d) Content that carries, viruses, or any other harmful computer software. </li>
			<li>(e) Content that is false or libelous. </li>
			<li>(f) Content that involves pyramid schemes or enables spam. </li>
			<li>(g) Content that promotes or involves gambling, illegal drugs, or terrorism. </li>
			<li>(h) Content that promotes or carries Warez, CD-Keys, Serial Numbers, etc. 
			<li>(i) Content that involves the impersonation of any other person or entity. 
			<li>(j) Content that includes pornography, nudity, or sexual material of any kind.</li></ul>
			You may not post, upload, link to, or email any Content that contains, promotes, instructs about, or provides prohibited Content. As the creator of a forum, you are responsible for ensuring that no prohibited Content exists on your forum and that no part of your forum violates the Terms of Service or the User Agreement.
			<br /><br />
			{$mfhclass->info->config['site_name']} does not preview any Content transmitted but reserves the right to check any forum for prohibited content. {$mfhclass->info->config['site_name']} has the right to access any forum and its related Content and delete, edit, or restrict access to any Content. You agree that {$mfhclass->info->config['site_name']} may disclose and utilize any Content at any time.
			<br /><br />
			Any Content posted on {$mfhclass->info->config['site_name']} is the exclusive responsibility of the person who posted it. {$mfhclass->info->config['site_name']} is not responsible for and does not control or endorse Content at any time. You will bear any and all risk of reliance on the accuracy, validity or legitimacy of Content you post. 
			<br /><br />
			{$mfhclass->info->config['site_name']} has the right to publish, store and maintain the content. Any content uploaded or posted to {$mfhclass->info->config['site_name']} may be published by {$mfhclass->info->config['site_name']}.
			<br /><br />
			You agree that {$mfhclass->info->config['site_name']} may remove your account at any time for any reason and may delete your forum, or your account on any {$mfhclass->info->config['site_name']} forum. {$mfhclass->info->config['site_name']} may ban your e-mail address, username, etc or remove/change any Content from any forum or from your account, without notice or compensation. 
			<br /><br />
			Your account or forum may be deleted for any violation of the {$mfhclass->info->config['site_name']} rules, Terms of Service, or for any other reason. {$mfhclass->info->config['site_name']} is not required to explain why your account/forum/Content was deleted or edited.
			<br /><br />
			{$mfhclass->info->config['site_name']} makes no warranty that the Service is secure, error-free or uninterrupted or that the information acquired by using {$mfhclass->info->config['site_name']} will be accurate..
			<br /><br />
			Content obtained through the use of {$mfhclass->info->config['site_name']} is used at your own risk. You, not {$mfhclass->info->config['site_name']} will be responsible for any damage that results from obtaining, following, or using any Content. You agree that if you use such content, you will indemnify {$mfhclass->info->config['site_name']} for all damages, legal and other costs that may result from your use of {$mfhclass->info->config['site_name']}'s content and services.
			<br /><br />
			You understand and agree that {$mfhclass->info->config['site_name']} will not be liable for any damages, direct or indirect, resulting from use and/or inability to use the Service.
			<br /><br />
			You agree that the laws of the United States of America apply to any lawsuits filed with {$mfhclass->info->config['site_name']} and that any lawsuits will be filed in the United States of America. By using this site, you accept the jurisdiction of the courts of the United States of America.
			<br /><br />
			You alone are responsible for your interactions with other users of the Service. {$mfhclass->info->config['site_name']} reserves the right but is not obligated, to mediate or solve disputes between you and other users of the Service.
			<br /><br />
			You agree to indenify and hold {$mfhclass->info->config['site_name']} and its subsidiaries, affiliates, and employees harmless from any demand made by anyone due to the Content you post to the Service, your use of the Service, or your violation of any law or these Terms of Service. Any claim arising out of or related to use of the Service or the Terms of Service must be filed within one (1) year after the cause arose or be forever barred.
			<br /><br />
			You agree not to sell the Service or access to the Service, other than Content which you create.
			<br /><br />
			{$mfhclass->info->config['site_name']}'s failure to enforce any part of these Terms of Service is not a waiver of any term or condition of these Terms of Service.
			<br /><br />
			If you notice a {$mfhclass->info->config['site_name']} member breaking any of the rules, please notify us by clicking <a href=\"mailto:{$mfhclass->info->config['email_out']}\">here</a></p>";
			break;
		case "directory":
			$mfhclass->templ->page_title = "{$mfhclass->info->config['site_name']} &raquo; Forum Directory";
			$mfhclass->templ->html = "\t\t\t<h1>Forum Directory</h1><br />
			<table cellspacing=\"1\">
			<thead>
			<tr><th>Category</th><th>Total Hosted Forums</th><th>&nbsp;</th></tr>
			</thead>
			<tbody>";
			$sql = $mfhclass->db->query("SELECT * FROM `mfh_directory_categories` ORDER BY `category_name` ASC;");
			while ($row = $mfhclass->db->fetch_array($sql)) {
				$trclass = (($trclass == "row1") ? "row2" : "row1");
				$mfhclass->templ->html .= "\t\t\t\t<tr class=\"{$trclass}\">
				<td>{$row['category_name']}</td>
				<td>".$mfhclass->funcs->format_number($mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` WHERE `category_id` = '{$row['category_id']}';")))."</td>
				<td><a href=\"index.php?act=directory-vc&cat={$row['category_id']}\">View Category</a></td>
				</tr>";
			}
			$mfhclass->templ->html .= "</tbody>
			</table>";
			break;
		case "directory-vc":
			$page_links = $mfhclass->templ->pagelinks("index.php?act=directory-c&cat={$mfhclass->input->get_vars['cat']}", $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` WHERE `category_id` = '{$mfhclass->input->get_vars['cat']}' ORDER BY `total_hits` DESC;")));
			$mfhclass->templ->page_title = "{$mfhclass->info->config['site_name']} &raquo; Forum Directory &raquo; Viewing Category";
			$mfhclass->templ->html = "\t\t\t<a href=\"index.php?act=directory\" style=\"float: right;\">&laquo; Back</a>
			<h1>Viewing Category</h1>
			<p>{$page_links} <br />
			<table cellspacing=\"1\">
			<tr><th>Forum Name</th><th>Total Hits</th><th>Date Created</th><th>Total Members</th><th>&nbsp;</th></tr>
			</thead>
			<tbody>";
			$sql = $mfhclass->db->query("SELECT * FROM `mfh_hosted_forums` WHERE `category_id` = '{$mfhclass->input->get_vars['cat']}' ORDER BY `total_hits` DESC LIMIT <# query limit #>;");
			if ($mfhclass->db->total_rows($sql) < 1) {
				$mfhclass->templ->error("Category is empty or doesn't exist.");
			} else {
				while ($row = $mfhclass->db->fetch_array($sql)) {
					$trclass = (($trclass == "row1") ? "row2" : "row1");
					$forum_name = $mfhclass->db->fetch_array($mfhclass->db->query("SELECT * FROM `{$row['access_name']}_config` WHERE `config_name` = 'sitename';", $row['database_id']));
					$total_members = $mfhclass->funcs->format_number(($mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `{$row['access_name']}_users`;", $row['database_id'])) - $mfhclass->db->total_rows($mfhclass->db->query("SELECT * FROM `{$row['access_name']}_bots`;", $row['database_id']))) - 1);
					$mfhclass->templ->html .= "\t\t\t\t\t<tr class=\"{$trclass}\">
					<td><a href=\"{$mfhclass->info->site_url}forums/{$row['access_name']}/?r={$row['total_hits']}\">{$forum_name['config_value']}</a></td>
					<td>".$mfhclass->funcs->format_number($row['total_hits'])."</td>
					<td>".date($mfhclass->info->config['date_format'], $row['time_started'])."</td>
					<td>{$total_members}</td>
					<td><a href=\"{$mfhclass->info->site_url}forums/{$row['access_name']}/?r={$row['total_hits']}\">View Forum</a></td>
					</tr>";
				}
			}
			$mfhclass->templ->html .= "</tbody>
			</table></p>";
			break;
		default:
			$mfhclass->templ->html = "\t\t\t<h1>Welcome to {$mfhclass->info->config['site_name']}</h1><br />
			<p>Welcome to {$mfhclass->info->config['site_name']},
			<br /><br />
			phpBB is an Internet forum software produced by the <a href=\"http://www.phpbb.com\">phpBB Group</a>. Written in 
			PHP and primarily using MySQL, it is comparable to other forum software.
			<br /><br />
			{$mfhclass->info->config['site_name']} is a free service that provides online communities. While similar to a Chat 
			Room or an Instant Messenger, {$mfhclass->info->config['site_name']} can be used for long term discussions with a large group
			of people. You can post a message for others to see even if they are not online at the moment. {$mfhclass->info->config['site_name']} 
			can be used for friends, clubs, and businesses. {$mfhclass->info->config['site_name']} could be used to talk about your favorite sport 
			or even a general chat area where people can talk about whatever they want. Not only does {$mfhclass->info->config['site_name']} provide the 
			best possible environment for online communities, but it is also easy to set up and manage.
			<br /><br />
			Click the button below to continue to the sign up form.
			<br /><br />
			<fieldset class=\"submit-buttons\">
			<a class=\"button1\" href=\"index.php?act=signup\">Continue to Signup</a>
			</fieldset></p>";
	}

	$mfhclass->templ->output();	

?>
