<?php
// No direct access
defined('_JEXEC') or die;
$items = $this->items;
$category = $this->category;

$children = $category->getChildren();

//var_dump($category);
?>

<div class="left fltlft">
	<?php JEUtil::loadModule('position-7');	?>
</div>

<div class="right fltrgt">
	<div class="box-header">
		<?php 
		if ($category->id == 'root')
			echo $items[0]->manu_title;
		else
			echo $category->title;
		?>
	</div>

	<?php if (!empty($children) && $category->id != 'root'): ?>

	<ul class="list-category">
		<?php 
		foreach ($children as $child): 
			$link = JRoute::_(JE_ProductHelperRoute::getCategoryRoute($child->id));
		?>
		<li>
			<?php
				$params = $child->getParams();
				$image = $params->get('image');

				if ($image):
			?>
				<img src="<?php echo $image; ?>" />
			<?php endif; ?>
				
			<h2>
				<a href="<?php echo $link; ?>">
					<?php echo $child->title; ?>
				</a>
			</h2>
		</li>
		<?php endforeach; ?>
	</ul>

	<?php return 1; ?>
	<?php endif; ?>

	<ul class="latest-list-images list-items">
		<?php foreach ($items as $item): ?>
		<li>
			<div class="padding-10">
				<?php 
				require_once JPATH_ROOT . DS . 'jelibs/classes/util.class.php';

				$pathUpload = JPATH_ROOT . DS . PATH_TO_IMAGE;
				$pathThumb = JPATH_ROOT . DS . 'images/je_products/thumbs/' . THUMB_WIDTH_LIST . DS;

				$thumb = JEUtil::thumb($item->images, $pathUpload, $pathThumb, THUMB_WIDTH_LIST, THUMB_HEIGHT_LIST);
				
				$link = JRoute::_(JE_ProductHelperRoute::getDetailRoute($item->id, $item->catid, $item->alias));
				?>

				<a title="<?php echo $item->name; ?>" href="<?php echo $link; ?>">
					<span class="img">
						<img alt="<?php echo $item->alias; ?>" src="images/je_products/thumbs/<?php echo THUMB_WIDTH_LIST . '/' . @$thumb[0]; ?>">
					</span>
				</a>

				<h3>
					<a title="<?php echo $item->name; ?>" href="<?php echo $link; ?>">
						<?php echo $item->name; ?>
					</a>
				</h3>

				<p class="price"><?php echo number_format($item->promotion_price); ?> VNĐ</p>
			</div>
		</li>
		<?php endforeach; ?>
		<?php if (empty($items)): ?>
		<li>
			Danh sách sản phẩm đang được cập nhật!
		</li>
		<?php endif; ?>
	</ul>

	<div class="clr"></div>

	<div class="pagination">
		<?php echo $this->pagination->getPagesLinks(); ?>
	</div>
</div>

<div class="clr"></div>