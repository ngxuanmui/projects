<?php
/**
 * @package		Joomla.Site
 * @subpackage	mod_left_menu
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

$itemId = JRequest::getInt('Itemid');
?>

<div class="left-menu box bg round relative">
	<a href="<?php echo JRoute::_('index.php?Itemid=109', false); ?>" class="icons co-cau-to-chuc<?php if ($itemId == 109) echo ' co-cau-to-chuc-active'; ?>"></a>
	<a href="<?php echo JRoute::_('index.php?Itemid=110', false); ?>" class="icons tien-ich<?php if ($itemId == 110) echo ' tien-ich-active'; ?>"></a>
	<a href="<?php echo JRoute::_('index.php?Itemid=104', false); ?>" class="icons nuoi-day<?php if ($itemId == 104) echo ' nuoi-day-active'; ?>"></a>
	<a href="<?php echo JRoute::_('index.php?Itemid=112', false); ?>" class="icons hoat-dong<?php if ($itemId == 112) echo ' hoat-dong-active'; ?>"></a>
	<div class="icons absolute con-chim"></div>
	<div class="icons absolute xoay-duoi-1"></div>
</div>