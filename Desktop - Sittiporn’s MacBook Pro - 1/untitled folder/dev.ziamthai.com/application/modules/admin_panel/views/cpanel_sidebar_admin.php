<!--
<div id="dvMenuSideBar" role="tablist" aria-multiselectable="true">
  <div class="card">
    <div class="card-header" role="tab" id="dvHeadMenuOne">
      <h5 class="mb-0">
        <a data-toggle="collapse" data-parent="#dvMenuSideBar" href="#dvMenuOne" aria-expanded="true" aria-controls="dvMenuOne">
						BIZ Header (Admin)
        </a>
      </h5>
    </div>

    <div id="dvMenuOne" class="collapse show" role="tabpanel" aria-labelledby="dvHeadMenuOne">

			<div class="btn-block">
				<a class="form-control text-left" href="<?php echo site_url('admin_panel/business_header/add'); ?>">
						Add New Business
				</a>
				<a class="form-control" href="<?php echo site_url('admin_panel/business_header/'); ?>">
						Business List
				</a>
				<a class="form-control" href="<?php echo site_url('admin_panel/business_category/'); ?>">
					 Category
				</a>
			</div>

    </div>
  </div>

		
</div>
<div>
		<span class="h4"><a href="<?php echo site_url('admin_panel/business_category/'); ?>">Biz Category</a><span><br>
		<span class="h4"><a href="<?php echo site_url('admin_panel/business_header/'); ?>">Biz Shop</a><span><br>
</div>
-->
<style>
	li.dropdown-divider {
		height: 3px;
		background-color: #CCC;
	}
</style>
	<ul class="nav flex-column text-md-right">
		<li class="nav-item bg-info text-white form-control"><span class="h5 ">Master</span></li>
		<li class="nav-item">
			<a class="nav-link" href="<?php echo site_url('admin_panel/business_category/list_item/?id=101'); ?>">Food Category</a>
		</li>
		<li class="nav-item bg-info text-white form-control"><span class="h5">Client</span></li>
		<li class="nav-item">
			<a class="nav-link" href="<?php echo site_url('admin_panel/client/'); ?>">Information</a>
		</li>
		<li class="nav-item bg-info text-white form-control"><span class="h5">Shop</span></li>
		<li class="nav-item">
 			<a class="nav-link" href="<?php echo site_url('admin_panel/business_header');?>">Information</a>
		</li>
		<li class="nav-item bg-info text-white form-control"><span class="h5">Activity</span></li>
		<li class="nav-item">
			<a class="nav-link" href="#">Blog</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="#">Review</a>
		</li>
	<ul>
</div>

