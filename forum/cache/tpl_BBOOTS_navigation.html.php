<?php if (!defined('IN_PHPBB')) exit; ?><!-- Main navigation block -->
<nav class="mainnav" role="navigation" aria-label="Primary">
	  <ul>
		<li class="nav-icon">
			<a href="<?php echo (isset($this->_rootref['U_INDEX'])) ? $this->_rootref['U_INDEX'] : ''; ?>"><?php echo ((isset($this->_rootref['L_HOME'])) ? $this->_rootref['L_HOME'] : ((isset($user->lang['HOME'])) ? $user->lang['HOME'] : '{ HOME }')); ?> <span class="has-sub"><i class="fa fa-home"></i></span></a>
			<p><?php echo ((isset($this->_rootref['L_MAIN_MAIN_STUFF'])) ? $this->_rootref['L_MAIN_MAIN_STUFF'] : ((isset($user->lang['MAIN_MAIN_STUFF'])) ? $user->lang['MAIN_MAIN_STUFF'] : '{ MAIN_MAIN_STUFF }')); ?></p>
		 <ul class="submenu greydout">
			<?php if ($this->_rootref['S_USER_LOGGED_IN']) {  ?><li><a href="<?php echo (isset($this->_rootref['U_PROFILE'])) ? $this->_rootref['U_PROFILE'] : ''; ?>"><i class=" fa fa-dashboard"></i> <?php echo ((isset($this->_rootref['L_PROFILE'])) ? $this->_rootref['L_PROFILE'] : ((isset($user->lang['PROFILE'])) ? $user->lang['PROFILE'] : '{ PROFILE }')); ?></a><span></span></li><?php } ?>
			<li><a href="<?php echo (isset($this->_rootref['U_FAQ'])) ? $this->_rootref['U_FAQ'] : ''; ?>"><i class="fa fa-question-circle"></i> <?php echo ((isset($this->_rootref['L_FAQ'])) ? $this->_rootref['L_FAQ'] : ((isset($user->lang['FAQ'])) ? $user->lang['FAQ'] : '{ FAQ }')); ?></a><span></span></li>
            <?php if ($this->_rootref['S_DISPLAY_MEMBERLIST']) {  ?><li><a href="<?php echo (isset($this->_rootref['U_MEMBERLIST'])) ? $this->_rootref['U_MEMBERLIST'] : ''; ?>"><i class="fa fa-user"></i> <?php echo ((isset($this->_rootref['L_MEMBERLIST'])) ? $this->_rootref['L_MEMBERLIST'] : ((isset($user->lang['MEMBERLIST'])) ? $user->lang['MEMBERLIST'] : '{ MEMBERLIST }')); ?></a><span></span></li><?php } if ($this->_rootref['U_TEAM']) {  ?><li><a href="<?php echo (isset($this->_rootref['U_TEAM'])) ? $this->_rootref['U_TEAM'] : ''; ?>"><i class="fa fa-group"></i> <?php echo ((isset($this->_rootref['L_THE_TEAM'])) ? $this->_rootref['L_THE_TEAM'] : ((isset($user->lang['THE_TEAM'])) ? $user->lang['THE_TEAM'] : '{ THE_TEAM }')); ?></a></li><?php } ?>
	     </ul>
		</li>

		<li class="nav-icon">
			<a href="#"><?php echo ((isset($this->_rootref['L_MAIN_FORUM'])) ? $this->_rootref['L_MAIN_FORUM'] : ((isset($user->lang['MAIN_FORUM'])) ? $user->lang['MAIN_FORUM'] : '{ MAIN_FORUM }')); ?> <span class="has-sub"><i class="fa fa-comments"></i></span></a>
			<p><?php echo ((isset($this->_rootref['L_MAIN_TRENDS'])) ? $this->_rootref['L_MAIN_TRENDS'] : ((isset($user->lang['MAIN_TRENDS'])) ? $user->lang['MAIN_TRENDS'] : '{ MAIN_TRENDS }')); ?></p>
		<ul class="submenu greydout">
		<?php if ($this->_rootref['S_DISPLAY_SEARCH'] || ( $this->_rootref['S_USER_LOGGED_IN'] && ! $this->_rootref['S_IS_BOT'] )) {  if ($this->_rootref['S_DISPLAY_SEARCH']) {  ?>
        <li><a href="<?php echo (isset($this->_rootref['U_SEARCH_UNANSWERED'])) ? $this->_rootref['U_SEARCH_UNANSWERED'] : ''; ?>"><i class="fa fa-search"></i> <?php echo ((isset($this->_rootref['L_SEARCH_UNANSWERED'])) ? $this->_rootref['L_SEARCH_UNANSWERED'] : ((isset($user->lang['SEARCH_UNANSWERED'])) ? $user->lang['SEARCH_UNANSWERED'] : '{ SEARCH_UNANSWERED }')); ?></a><span></span></li>
        <?php if ($this->_rootref['S_LOAD_UNREADS']) {  ?>
		 <li><a href="<?php echo (isset($this->_rootref['U_SEARCH_UNREAD'])) ? $this->_rootref['U_SEARCH_UNREAD'] : ''; ?>"><i class="fa fa-comment"></i> <?php echo ((isset($this->_rootref['L_SEARCH_UNREAD'])) ? $this->_rootref['L_SEARCH_UNREAD'] : ((isset($user->lang['SEARCH_UNREAD'])) ? $user->lang['SEARCH_UNREAD'] : '{ SEARCH_UNREAD }')); ?></a><span></span></li>
		<?php } if ($this->_rootref['S_USER_LOGGED_IN']) {  ?>
        <li><a href="<?php echo (isset($this->_rootref['U_SEARCH_NEW'])) ? $this->_rootref['U_SEARCH_NEW'] : ''; ?>"><i class="fa fa-thumbs-up"></i> <?php echo ((isset($this->_rootref['L_SEARCH_NEW'])) ? $this->_rootref['L_SEARCH_NEW'] : ((isset($user->lang['SEARCH_NEW'])) ? $user->lang['SEARCH_NEW'] : '{ SEARCH_NEW }')); ?></a><span></span></li>
		<?php } ?>
		<li><a href="<?php echo (isset($this->_rootref['U_SEARCH_ACTIVE_TOPICS'])) ? $this->_rootref['U_SEARCH_ACTIVE_TOPICS'] : ''; ?>"><i class="fa fa-star"></i> <?php echo ((isset($this->_rootref['L_SEARCH_ACTIVE_TOPICS'])) ? $this->_rootref['L_SEARCH_ACTIVE_TOPICS'] : ((isset($user->lang['SEARCH_ACTIVE_TOPICS'])) ? $user->lang['SEARCH_ACTIVE_TOPICS'] : '{ SEARCH_ACTIVE_TOPICS }')); ?></a><span></span></li>
					   
		<?php } } ?>
		</ul>
		</li>
										
		<li class="nav-icon">
			<a href="#"><?php echo ((isset($this->_rootref['L_SEARCH'])) ? $this->_rootref['L_SEARCH'] : ((isset($user->lang['SEARCH'])) ? $user->lang['SEARCH'] : '{ SEARCH }')); ?> <span class="has-sub"><i class="fa fa-search fa fa-flip-horizontal"></i></span></a>
			<p><?php echo ((isset($this->_rootref['L_MAIN_SEARCH_IT_UP'])) ? $this->_rootref['L_MAIN_SEARCH_IT_UP'] : ((isset($user->lang['MAIN_SEARCH_IT_UP'])) ? $user->lang['MAIN_SEARCH_IT_UP'] : '{ MAIN_SEARCH_IT_UP }')); ?></p>
		<ul class="submenu greydout">
			<li><a href="<?php echo (isset($this->_rootref['U_SEARCH'])) ? $this->_rootref['U_SEARCH'] : ''; ?>"><i class="fa fa-search fa fa-flip-horizontal"></i> <?php echo ((isset($this->_rootref['L_SEARCH_ADV'])) ? $this->_rootref['L_SEARCH_ADV'] : ((isset($user->lang['SEARCH_ADV'])) ? $user->lang['SEARCH_ADV'] : '{ SEARCH_ADV }')); ?></a><span></span></li>
								
			<?php if (! $this->_rootref['S_IS_BOT'] && $this->_rootref['S_USER_LOGGED_IN']) {  if ($this->_rootref['S_DISPLAY_SEARCH']) {  ?> 
			<li><a href="<?php echo (isset($this->_rootref['U_SEARCH_SELF'])) ? $this->_rootref['U_SEARCH_SELF'] : ''; ?>"><i class="fa fa-comments"></i> <?php echo ((isset($this->_rootref['L_SEARCH_SELF'])) ? $this->_rootref['L_SEARCH_SELF'] : ((isset($user->lang['SEARCH_SELF'])) ? $user->lang['SEARCH_SELF'] : '{ SEARCH_SELF }')); ?></a><span></span></li>
			<?php } } if (! $this->_rootref['S_IS_BOT'] && $this->_rootref['U_MARK_FORUMS']) {  ?>
			<li><a href="<?php echo (isset($this->_rootref['U_MARK_FORUMS'])) ? $this->_rootref['U_MARK_FORUMS'] : ''; ?>"><i class="fa fa-check"></i> <?php echo ((isset($this->_rootref['L_MARK_FORUMS_READ'])) ? $this->_rootref['L_MARK_FORUMS_READ'] : ((isset($user->lang['MARK_FORUMS_READ'])) ? $user->lang['MARK_FORUMS_READ'] : '{ MARK_FORUMS_READ }')); ?></a><span></span></li>
	        <?php } ?>
			<li><a href="#"> <?php echo ((isset($this->_rootref['L_SUB_NO_ICON'])) ? $this->_rootref['L_SUB_NO_ICON'] : ((isset($user->lang['SUB_NO_ICON'])) ? $user->lang['SUB_NO_ICON'] : '{ SUB_NO_ICON }')); ?></a><span></span></li>
			<li><a href="#"> <?php echo ((isset($this->_rootref['L_SUB_NO_ICON'])) ? $this->_rootref['L_SUB_NO_ICON'] : ((isset($user->lang['SUB_NO_ICON'])) ? $user->lang['SUB_NO_ICON'] : '{ SUB_NO_ICON }')); ?></a><span></span></li>
		</ul>
		</li>

		<?php if (! $this->_rootref['S_IS_BOT'] && $this->_rootref['S_USER_LOGGED_IN']) {  ?>	
		<li class="nav-icon">
			<a href="#"><?php echo ((isset($this->_rootref['L_MAIN_SOCIAL'])) ? $this->_rootref['L_MAIN_SOCIAL'] : ((isset($user->lang['MAIN_SOCIAL'])) ? $user->lang['MAIN_SOCIAL'] : '{ MAIN_SOCIAL }')); ?> <span class="has-sub"><i class="fa fa-retweet"></i></span></a>
			<p><?php echo ((isset($this->_rootref['L_SOCIAL_P'])) ? $this->_rootref['L_SOCIAL_P'] : ((isset($user->lang['SOCIAL_P'])) ? $user->lang['SOCIAL_P'] : '{ SOCIAL_P }')); ?></p>
		</li>
						
		<li class="nav-icon">
			<a href="#"><?php echo ((isset($this->_rootref['L_CONTACT'])) ? $this->_rootref['L_CONTACT'] : ((isset($user->lang['CONTACT'])) ? $user->lang['CONTACT'] : '{ CONTACT }')); ?> <span class="has-sub"><i class="fa fa-rocket"></i></span></a>
			<p><?php echo ((isset($this->_rootref['L_GET_IN_TOUCH'])) ? $this->_rootref['L_GET_IN_TOUCH'] : ((isset($user->lang['GET_IN_TOUCH'])) ? $user->lang['GET_IN_TOUCH'] : '{ GET_IN_TOUCH }')); ?></p>
		</li>
		<?php } if (! $this->_rootref['S_USER_LOGGED_IN']) {  ?>
		<li class="nav-icon">
			<a href="<?php echo (isset($this->_rootref['U_LOGIN_LOGOUT'])) ? $this->_rootref['U_LOGIN_LOGOUT'] : ''; ?>"><?php echo ((isset($this->_rootref['L_LOGIN'])) ? $this->_rootref['L_LOGIN'] : ((isset($user->lang['LOGIN'])) ? $user->lang['LOGIN'] : '{ LOGIN }')); ?> <span class="has-sub"><i class="fa fa-sign-in"></i></span></a>
			<p><?php echo ((isset($this->_rootref['L_HANG_AROUND'])) ? $this->_rootref['L_HANG_AROUND'] : ((isset($user->lang['HANG_AROUND'])) ? $user->lang['HANG_AROUND'] : '{ HANG_AROUND }')); ?></p>
		</li>
		<?php } if (! $this->_rootref['S_IS_BOT']) {  if (! $this->_rootref['S_USER_LOGGED_IN'] && $this->_rootref['S_REGISTER_ENABLED'] && ! ( $this->_rootref['S_SHOW_COPPA'] || $this->_rootref['S_REGISTRATION'] )) {  ?>
	    <li class="nav-icon">
			<a href="<?php echo (isset($this->_rootref['U_REGISTER'])) ? $this->_rootref['U_REGISTER'] : ''; ?>"><?php echo ((isset($this->_rootref['L_REGISTER'])) ? $this->_rootref['L_REGISTER'] : ((isset($user->lang['REGISTER'])) ? $user->lang['REGISTER'] : '{ REGISTER }')); ?> <span class="has-sub"><i class="fa fa-thumbs-up"></i></span></a>
			<p><?php echo ((isset($this->_rootref['L_JOIN_THE_CLUB'])) ? $this->_rootref['L_JOIN_THE_CLUB'] : ((isset($user->lang['JOIN_THE_CLUB'])) ? $user->lang['JOIN_THE_CLUB'] : '{ JOIN_THE_CLUB }')); ?></p>
		</li>
	    <?php } } ?>
	  </ul>
		<div class="navBtn"><span><?php echo ((isset($this->_rootref['L_MENU'])) ? $this->_rootref['L_MENU'] : ((isset($user->lang['MENU'])) ? $user->lang['MENU'] : '{ MENU }')); ?></span>
		 <a data-toggle="collapse" data-target="#responsive-navigation" class="listen_menu fa fa-align-justify" href="javascript:void(0);" title=""></a>
		 <?php if (! $this->_rootref['S_USER_LOGGED_IN']) {  ?>
		 <a class="fa fa-sign-in" href="<?php echo (isset($this->_rootref['U_LOGIN_LOGOUT'])) ? $this->_rootref['U_LOGIN_LOGOUT'] : ''; ?>" title=""></a>
		 <?php } ?>
		</div>
</nav> 
<!-- Main navigation block --><!-- MOBILE Navigation block --><!-- Everything you want hidden at 940px or less, place within here -->
    <nav class="hidden-lg hidden-md hidden-sm">
	 <div id="responsive-navigation" class="collapse">
		<ul class="flexnav list-unstyled">
		<?php if (! $this->_rootref['S_IS_BOT']) {  if (! $this->_rootref['S_USER_LOGGED_IN'] && $this->_rootref['S_REGISTER_ENABLED'] && ! ( $this->_rootref['S_SHOW_COPPA'] || $this->_rootref['S_REGISTRATION'] )) {  ?>
		    <li><a href="<?php echo (isset($this->_rootref['U_REGISTER'])) ? $this->_rootref['U_REGISTER'] : ''; ?>"><i class="fa fa-thumbs-up"></i> <?php echo ((isset($this->_rootref['L_REGISTER'])) ? $this->_rootref['L_REGISTER'] : ((isset($user->lang['REGISTER'])) ? $user->lang['REGISTER'] : '{ REGISTER }')); ?></a></li>
	    <?php } } if ($this->_rootref['S_USER_LOGGED_IN']) {  ?>
			<li><a href="<?php echo (isset($this->_rootref['U_PROFILE'])) ? $this->_rootref['U_PROFILE'] : ''; ?>"><i class="fa fa-dashboard"></i> <?php echo ((isset($this->_rootref['L_PROFILE'])) ? $this->_rootref['L_PROFILE'] : ((isset($user->lang['PROFILE'])) ? $user->lang['PROFILE'] : '{ PROFILE }')); ?></a></li>
	    <?php } ?>
			<li><a href="<?php echo (isset($this->_rootref['U_FAQ'])) ? $this->_rootref['U_FAQ'] : ''; ?>"><i class="fa fa-question-circle"></i> <?php echo ((isset($this->_rootref['L_FAQ'])) ? $this->_rootref['L_FAQ'] : ((isset($user->lang['FAQ'])) ? $user->lang['FAQ'] : '{ FAQ }')); ?></a></li>
	    <?php if ($this->_rootref['U_TEAM']) {  ?>
		    <li><a href="<?php echo (isset($this->_rootref['U_TEAM'])) ? $this->_rootref['U_TEAM'] : ''; ?>"><i class="fa fa-group"></i> <?php echo ((isset($this->_rootref['L_THE_TEAM'])) ? $this->_rootref['L_THE_TEAM'] : ((isset($user->lang['THE_TEAM'])) ? $user->lang['THE_TEAM'] : '{ THE_TEAM }')); ?></a></li>
		<?php } if ($this->_rootref['S_DISPLAY_MEMBERLIST']) {  ?>
	        <li><a href="<?php echo (isset($this->_rootref['U_MEMBERLIST'])) ? $this->_rootref['U_MEMBERLIST'] : ''; ?>"><i class="fa fa-user"></i> <?php echo ((isset($this->_rootref['L_MEMBERLIST'])) ? $this->_rootref['L_MEMBERLIST'] : ((isset($user->lang['MEMBERLIST'])) ? $user->lang['MEMBERLIST'] : '{ MEMBERLIST }')); ?></a></li>
		<?php } ?>
			
		<li class="item-with-ul">
			<a href="<?php echo (isset($this->_rootref['U_SEARCH'])) ? $this->_rootref['U_SEARCH'] : ''; ?>"><i class="fa fa-search"></i> <?php echo ((isset($this->_rootref['L_SEARCH_ADV'])) ? $this->_rootref['L_SEARCH_ADV'] : ((isset($user->lang['SEARCH_ADV'])) ? $user->lang['SEARCH_ADV'] : '{ SEARCH_ADV }')); ?></a>
		     <ul class="collapse viewdetails list-unstyled">
    <?php if ($this->_rootref['S_DISPLAY_SEARCH'] || ( $this->_rootref['S_USER_LOGGED_IN'] && ! $this->_rootref['S_IS_BOT'] )) {  if ($this->_rootref['S_DISPLAY_SEARCH']) {  ?>
        <li><a href="<?php echo (isset($this->_rootref['U_SEARCH_UNANSWERED'])) ? $this->_rootref['U_SEARCH_UNANSWERED'] : ''; ?>"><i class="fa fa-search"></i> <?php echo ((isset($this->_rootref['L_SEARCH_UNANSWERED'])) ? $this->_rootref['L_SEARCH_UNANSWERED'] : ((isset($user->lang['SEARCH_UNANSWERED'])) ? $user->lang['SEARCH_UNANSWERED'] : '{ SEARCH_UNANSWERED }')); ?></a></li>
        <?php if ($this->_rootref['S_LOAD_UNREADS']) {  ?>
		 <li><a href="<?php echo (isset($this->_rootref['U_SEARCH_UNREAD'])) ? $this->_rootref['U_SEARCH_UNREAD'] : ''; ?>"><i class="fa fa-comment"></i> <?php echo ((isset($this->_rootref['L_SEARCH_UNREAD'])) ? $this->_rootref['L_SEARCH_UNREAD'] : ((isset($user->lang['SEARCH_UNREAD'])) ? $user->lang['SEARCH_UNREAD'] : '{ SEARCH_UNREAD }')); ?></a></li>
		<?php } if ($this->_rootref['S_USER_LOGGED_IN']) {  ?>
        <li><a href="<?php echo (isset($this->_rootref['U_SEARCH_NEW'])) ? $this->_rootref['U_SEARCH_NEW'] : ''; ?>"><i class="fa fa-thumbs-up"></i> <?php echo ((isset($this->_rootref['L_SEARCH_NEW'])) ? $this->_rootref['L_SEARCH_NEW'] : ((isset($user->lang['SEARCH_NEW'])) ? $user->lang['SEARCH_NEW'] : '{ SEARCH_NEW }')); ?></a></li>
		<?php } ?>
		<li><a href="<?php echo (isset($this->_rootref['U_SEARCH_ACTIVE_TOPICS'])) ? $this->_rootref['U_SEARCH_ACTIVE_TOPICS'] : ''; ?>"><i class="fa fa-star"></i> <?php echo ((isset($this->_rootref['L_SEARCH_ACTIVE_TOPICS'])) ? $this->_rootref['L_SEARCH_ACTIVE_TOPICS'] : ((isset($user->lang['SEARCH_ACTIVE_TOPICS'])) ? $user->lang['SEARCH_ACTIVE_TOPICS'] : '{ SEARCH_ACTIVE_TOPICS }')); ?></a></li>		   
    <?php } } ?>
             </ul>
			  <a class="touch-button" href="javascript:void(0);" data-toggle="collapse" data-target=".viewdetails"><i class="navicon fa fa-sort-down"></i></a>
		</li>
		   
	<!-- BLOCK WITH SUBMENU EXAMPLE
	
		<li class="item-with-ul">
			  <a href="#4"><i class="fa fa-search"></i> Submenu Group 1</a>
		     <ul class="collapse viewsubmenu list-unstyled">
                <li><a href="#5">SubLink 1</a></li>
                <li><a href="#6">SubLink 2</a></li>
                <li><a href="#7">SubLink 3</a></li>
                <li><a href="#8">SubLink 4</a></li>
             </ul>
			  <a class="touch-button" href="javascript:void(0);" data-toggle="collapse" data-target=".viewsubmenu"><i class="navicon fa fa-sort-down"></i></a>
		</li>
		
    BLOCK WITH SUBMENU EXAMPLE -->
		   
        </ul>
	  </div>
    </nav> 
<!-- MOBILE Navigation block -->