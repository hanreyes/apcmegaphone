<?php if (!defined('IN_PHPBB')) exit; ?><table cellspacing="1">
	<thead>
	<tr>
	 <th colspan="2">Sitesplat Update Manager</th>
	</tr>
	</thead>
	<tbody>
	<?php $_sitesplat_themes_count = (isset($this->_tpldata['sitesplat_themes'])) ? sizeof($this->_tpldata['sitesplat_themes']) : 0;if ($_sitesplat_themes_count) {for ($_sitesplat_themes_i = 0; $_sitesplat_themes_i < $_sitesplat_themes_count; ++$_sitesplat_themes_i){$_sitesplat_themes_val = &$this->_tpldata['sitesplat_themes'][$_sitesplat_themes_i]; ?>
			<tr style="font-size: 14px;">
				<td style="text-align:center;" class="row2">
	        <strong><?php echo $_sitesplat_themes_val['NAME']; ?></strong>
				</td>
				<td class="row1">
					Installed Version: <strong><?php echo $_sitesplat_themes_val['VERSION']; ?></strong><br />
				<?php if ($_sitesplat_themes_val['MSG']) {  ?>
					<br /><?php echo $_sitesplat_themes_val['MSG']; ?>
				<?php } ?>
				</td>
			</tr>
	<?php }} ?>
	</tbody>
</table>
<br />