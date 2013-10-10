<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;
?>

<?php
$useragent = $_SERVER['HTTP_USER_AGENT'];

if (preg_match('|MSIE ([0-9].[0-9]{1,2})|',$useragent,$matched)) {
?>
<h2><a href="http://seedviet.com/hd-camera/" target="_blank">H&#432;&#7899;ng d&#7851;n xem camera</a></h2>
<body leftmargin="0" bottommargin="0" rightmargin="0"  topmargin="0" title="0">

<iframe src="http://seedviet.dyndns.org" width="100%" height="600"></iframe>
</body>

<?}
else {
	echo "Xin h&#227;y xem v&#7899;i tr&#236;nh duy&#7879;t Internet Exporer";
}
?>