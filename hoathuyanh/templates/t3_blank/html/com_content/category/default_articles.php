<?php
/**
 * @package		Joomla.Site
 * @subpackage	com_content
 * @copyright	Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
?>

<h2>Tin tức</h2>

<?php if (empty($this->items)) : ?>

	Thông tin đang được cập nhật

<?php else : ?>

		<?php 
		foreach ($this->items as $i => $article) : 
			$images = json_decode($article->images);
		
		?>
		
		<div class="items <?php if ( ($i + 1) % 2 == 0) echo 'even'; ?>">
		
			<?php  if (isset($images->image_intro) and !empty($images->image_intro)) : ?>
	
			<div class="img-intro fltlft">
				<img
					<?php
					if ($images->image_intro_caption) :
						echo 'class="caption"' . ' title="' . htmlspecialchars ( $images->image_intro_caption ) . '"';
					endif;
					?>
					src="<?php echo htmlspecialchars($images->image_intro); ?>"
					alt="<?php echo htmlspecialchars($images->image_intro_alt); ?>" />
			</div>
			<?php endif; ?>
			<div class="desc-intro fltrgt">
				<a href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($article->slug, $article->catid)); ?>">
					<?php echo $this->escape($article->title); ?>
				</a>
	
			<div class="desc-intro-desc">
				<?php echo strip_tags($article->introtext); ?>
			</div>
			
			<a class="view-item" href="<?php echo JRoute::_(ContentHelperRoute::getArticleRoute($article->slug, $article->catid)); ?>">Chi tiết</a>
			
			
		</div>
		
		<div class="clr"></div>
</div>
<?php endforeach; ?>
<?php endif; ?>

