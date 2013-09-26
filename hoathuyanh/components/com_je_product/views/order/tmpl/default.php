<?php
// No direct access
defined('_JEXEC') or die;

$item = $this->item;

JHtml::_('behavior.formvalidation');
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (document.formvalidator.isValid(document.id('order-form'))) {
			Joomla.submitform(task, document.getElementById('order-form'));
		}
	}
</script>

<div class="left fltlft">
	<?php JEUtil::loadModule('position-7');	?>
</div>

<div class="right fltrgt">
	<h1>Đặt hàng</h1>
	<form action="<?php echo JRoute::_('index.php?option=com_je_product&id=' . JRequest::getInt('id'), false); ?>" method="post" name="order-form" id="order-form" class="form-validate">
		<table cellpadding="5">
			<tr>
				<td width="120">Product</td>
				<td>
					<a href="<?php echo JRoute::_('index.php?option=com_je_product&view=detail&id='. $item->id.':'.$item->alias, false); ?>">
						<?php echo $item->name; ?>
					</a>
				</td>
			</tr>
			<tr>
				<td>Fullname</td>
				<td><input type="text" name="fullname" value="" class="required" required="false" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" value="" class="required validate-email" /></td>
			</tr>
			<tr>
				<td>Mobile</td>
				<td><input type="text" name="mobile" value="" class="required" /></td>
			</tr>
			<tr>
				<td>Number</td>
				<td><input type="text" name="number" value="1" class="required"  /></td>
			</tr>
			<tr>
				<td>Comment</td>
				<td><textarea name="comment" cols="60" rows="5"></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<button type="button" onclick="Joomla.submitbutton('order.send')">Submit</button>
					or <a href="#">Cancel</a>
					<?php echo JHtml::_('form.token'); ?>
					<input type="hidden" name="id" value="<?php echo JRequest::getInt('id'); ?>" />
					<input type="hidden" name="task" value="" />
				</td>
			</tr>
		</table>
	</form>
</div>

<div class="clr"></div>