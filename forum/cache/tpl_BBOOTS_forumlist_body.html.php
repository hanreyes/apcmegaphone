<?php if (!defined('IN_PHPBB')) exit; $_forumrow_count = (isset($this->_tpldata['forumrow'])) ? sizeof($this->_tpldata['forumrow']) : 0;if ($_forumrow_count) {for ($_forumrow_i = 0; $_forumrow_i < $_forumrow_count; ++$_forumrow_i){$_forumrow_val = &$this->_tpldata['forumrow'][$_forumrow_i]; if (( $_forumrow_val['S_IS_CAT'] && ! $_forumrow_val['S_FIRST_ROW'] ) || $_forumrow_val['S_NO_CAT']) {  ?>
		</table>
		</div>
	<?php } if ($_forumrow_val['S_IS_CAT'] || $_forumrow_val['S_FIRST_ROW'] || $_forumrow_val['S_NO_CAT']) {  ?>
	<div class="panel panel-default">
	    <table class="footable table table-striped table-bordered table-white table-primary table-hover">
			
		<thead>
			<tr>
			 <th data-class="expand"><?php if ($_forumrow_val['S_IS_CAT']) {  ?><i class="fa fa-list-ol"></i> <a href="<?php echo $_forumrow_val['U_VIEWFORUM']; ?>"><?php echo $_forumrow_val['FORUM_NAME']; ?></a><?php } else { ?><i class="fa fa-bullhorn"></i> <?php echo ((isset($this->_rootref['L_FORUM'])) ? $this->_rootref['L_FORUM'] : ((isset($user->lang['FORUM'])) ? $user->lang['FORUM'] : '{ FORUM }')); } ?></th>
			 <th class="large80" data-hide="phone"><i class="fa fa-bar-chart-o"></i> <?php echo ((isset($this->_rootref['L_TOPICS_POSTS_STATISTICS'])) ? $this->_rootref['L_TOPICS_POSTS_STATISTICS'] : ((isset($user->lang['TOPICS_POSTS_STATISTICS'])) ? $user->lang['TOPICS_POSTS_STATISTICS'] : '{ TOPICS_POSTS_STATISTICS }')); ?></th>
			 <th class="large20" data-hide="phone"><i class="fa fa-comments-o"></i> <?php echo ((isset($this->_rootref['L_LAST_POST'])) ? $this->_rootref['L_LAST_POST'] : ((isset($user->lang['LAST_POST'])) ? $user->lang['LAST_POST'] : '{ LAST_POST }')); ?></th>
			</tr>
		</thead>
			
	<tbody>
	<?php } if (! $_forumrow_val['S_IS_CAT']) {  ?>
	    <tr>
			<td title="<?php echo $_forumrow_val['FORUM_FOLDER_IMG_ALT']; ?>">
			<?php if ($_forumrow_val['FORUM_IMAGE']) {  ?>
			 <span class="forum-image"><?php echo $_forumrow_val['FORUM_IMAGE']; ?></span>
			<?php } else { ?>
			<i class="row-icon-font icon-moon-default <?php if ($_forumrow_val['S_IS_LINK']) {  ?> icon-moon-link2<?php } if ($_forumrow_val['S_UNREAD_FORUM']) {  ?> text-info<?php } else { ?> text-muted<?php } ?>" title="<?php echo $_forumrow_val['FORUM_FOLDER_IMG_ALT']; ?>"></i>
			<?php } ?>
			<i class="row-icon-font-mini <?php if ($_forumrow_val['S_LOCKED_FORUM']) {  ?>fa fa-lock forum-list-lock<?php } ?>" title="<?php echo $_forumrow_val['FORUM_FOLDER_IMG_ALT']; ?>"></i>
			<?php if ($this->_rootref['S_ENABLE_FEEDS'] && $_forumrow_val['S_FEED_ENABLED']) {  ?> <a class="feed-icon-forum hidden-xs hidden-sm" title="<?php echo ((isset($this->_rootref['L_FEED'])) ? $this->_rootref['L_FEED'] : ((isset($user->lang['FEED'])) ? $user->lang['FEED'] : '{ FEED }')); ?> - <?php echo $_forumrow_val['FORUM_NAME']; ?>" href="<?php echo (isset($this->_rootref['U_FEED'])) ? $this->_rootref['U_FEED'] : ''; ?>?f=<?php echo $_forumrow_val['FORUM_ID']; ?>"><i class="fa fa-rss rss-color-forum"></i></a><?php } ?>
			 <a href="<?php echo $_forumrow_val['U_VIEWFORUM']; ?>" class="forumtitle"><?php echo $_forumrow_val['FORUM_NAME']; ?></a><br />
				<small><?php echo $_forumrow_val['FORUM_DESC']; ?></small>
				<?php if ($_forumrow_val['MODERATORS']) {  ?>
				<br /><small><i class="fa fa-user"></i> <strong><?php echo $_forumrow_val['L_MODERATOR_STR']; ?>:</strong> <?php echo $_forumrow_val['MODERATORS']; ?></small>
				<?php } if ($_forumrow_val['SUBFORUMS'] && $_forumrow_val['S_LIST_SUBFORUMS']) {  ?><br /><small><i class="fa fa-folder"></i> <strong><?php echo $_forumrow_val['L_SUBFORUM_STR']; ?></strong> <?php echo $_forumrow_val['SUBFORUMS']; ?></small><?php } ?>
			</td>
			<?php if ($_forumrow_val['CLICKS']) {  ?>
			<td colspan="2"><?php echo ((isset($this->_rootref['L_REDIRECTS'])) ? $this->_rootref['L_REDIRECTS'] : ((isset($user->lang['REDIRECTS'])) ? $user->lang['REDIRECTS'] : '{ REDIRECTS }')); ?>: <?php echo $_forumrow_val['CLICKS']; ?></td>
					
			<?php } else if (! $_forumrow_val['S_IS_LINK']) {  ?>
			<td class="center">
			 <?php echo $_forumrow_val['TOPICS']; ?> <?php echo ((isset($this->_rootref['L_TOPICS'])) ? $this->_rootref['L_TOPICS'] : ((isset($user->lang['TOPICS'])) ? $user->lang['TOPICS'] : '{ TOPICS }')); ?> <br /><?php echo $_forumrow_val['POSTS']; ?> <?php echo ((isset($this->_rootref['L_POSTS'])) ? $this->_rootref['L_POSTS'] : ((isset($user->lang['POSTS'])) ? $user->lang['POSTS'] : '{ POSTS }')); ?> 
			 <?php if ($_forumrow_val['U_UNAPPROVED_TOPICS']) {  ?><a href="<?php echo $_forumrow_val['U_UNAPPROVED_TOPICS']; ?>"><i class="fa fa-question-circle" rel="tooltip" title="<?php echo ((isset($this->_rootref['L_FORUMLIST_UNAPPROVED'])) ? $this->_rootref['L_FORUMLIST_UNAPPROVED'] : ((isset($user->lang['FORUMLIST_UNAPPROVED'])) ? $user->lang['FORUMLIST_UNAPPROVED'] : '{ FORUMLIST_UNAPPROVED }')); ?>"></i></a><?php } ?>
			 
			</td>	
			<td class="center">
				<?php if ($_forumrow_val['LAST_POST_TIME']) {  ?><i class="fa fa-user"></i> <?php echo ((isset($this->_rootref['L_POST_BY_AUTHOR'])) ? $this->_rootref['L_POST_BY_AUTHOR'] : ((isset($user->lang['POST_BY_AUTHOR'])) ? $user->lang['POST_BY_AUTHOR'] : '{ POST_BY_AUTHOR }')); ?> <?php echo $_forumrow_val['LAST_POSTER_FULL']; ?>
				<?php if (! $this->_rootref['S_IS_BOT']) {  ?><a rel="tooltip" data-original-title="<?php echo ((isset($this->_rootref['L_FORUMLIST_LASTPOST'])) ? $this->_rootref['L_FORUMLIST_LASTPOST'] : ((isset($user->lang['FORUMLIST_LASTPOST'])) ? $user->lang['FORUMLIST_LASTPOST'] : '{ FORUMLIST_LASTPOST }')); ?>" href="<?php echo $_forumrow_val['U_LAST_POST']; ?>"><i class="mobile-post fa fa-sign-out"></i></a><?php } ?>
				<br /><i class="fa fa-clock-o"></i><small> <?php echo $_forumrow_val['LAST_POST_TIME']; ?></small><?php } else { echo ((isset($this->_rootref['L_NO_POSTS'])) ? $this->_rootref['L_NO_POSTS'] : ((isset($user->lang['NO_POSTS'])) ? $user->lang['NO_POSTS'] : '{ NO_POSTS }')); ?>&nbsp;<?php } ?>
			</td>
			<?php } ?>
		</tr>
	<?php } if ($_forumrow_val['S_LAST_ROW']) {  ?>
	 </tbody>
	</table>
	</div>
	<?php } }} else { ?>
	<div class="well">
		<strong><?php echo ((isset($this->_rootref['L_NO_FORUMS'])) ? $this->_rootref['L_NO_FORUMS'] : ((isset($user->lang['NO_FORUMS'])) ? $user->lang['NO_FORUMS'] : '{ NO_FORUMS }')); ?></strong>
	</div>
<?php } ?>