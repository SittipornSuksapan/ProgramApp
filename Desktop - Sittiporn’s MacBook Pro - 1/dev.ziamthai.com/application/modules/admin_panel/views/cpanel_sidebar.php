<?php 
	if (!isset($sidebar['shopID'])) { $sidebar['shopID']=$_REQUEST['id'];	}
	if (! isset($sidebar['CSS']['shopInfo'])) { $sidebar['CSS']['shopInfo']=""; }
?>
<style>
	li.dropdown-divider {
		height: 3px;
		background-color: #CCC;
	}
</style>
<div id="dvMenuSideBar">
<!--
  <div class="card">
    <div class="card-header" role="tab" id="dvHeadMenuOne">
      <h5 class="mb-0">
        <a data-toggle="collapse" data-parent="#dvMenuSideBar" href="#dvMenuOne" aria-expanded="true" aria-controls="dvMenuOne">
						BIZ Header
        </a>
      </h5>
    </div>

    <div id="dvMenuOne" class="collapse show" role="tabpanel" aria-labelledby="dvHeadMenuOne">
			<div class="btn-block">
				<a class="form-control" href="<?php echo site_url('admin_panel/business_header'); ?>">
						Business List
				</a>
			</div>
    </div>
  </div>
-->
	<ul class="nav flex-column text-md-right">
		<li class="nav-item bg-inverse text-white form-control"><span class="h5">Sales</span></li>
		<li class="nav-item">
			<a class="nav-link" href="#">Waiting Order</a>
		</li>
		<li class="nav-item bg-inverse text-white form-control"><span class="h5 ">Client</span></li>
		<li class="nav-item">
			<a class="nav-link" href="#">Information</a>
		</li>
		<li class="nav-item bg-inverse text-white form-control"><span class="h5">Shop</span></li>
		<li class="nav-item<?php echo $sidebar['CSS']['shopInfo'];?>">
			<a class="nav-link" href="<?php echo site_url(sprintf('admin_panel/business_header/edit1/?&id=%d',$sidebar['shopID']));?>">Information</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<?php echo site_url(sprintf('admin_panel/business_header/edit3/?&id=%d',$sidebar['shopID']));?>">Open/Close</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<?php echo site_url(sprintf('admin_panel/business_header/edit2/?&id=%d',$sidebar['shopID']));?>">Picture Album</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="<?php echo site_url(sprintf('admin_panel/menu_category/?&id=%d',$sidebar['shopID']));?>">Category & Menu</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="#">Video Album</a>
		</li>
		<li class="nav-item bg-inverse text-white form-control"><span class="h5">Activity</span></li>
		<li class="nav-item">
			<a class="nav-link" href="#">Blog</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="#">Review</a>
		</li>
		<li class="nav-item bg-inverse text-white form-control"><span class="h5">Promotion</span></li>
		<li class="nav-item">
			<a class="nav-link" href="#">(Point) Buy X get Y</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="#">(Redeem) Buy X free Y</a>
		</li>
		<li class="nav-item bg-inverse text-white form-control"><span class="h5">Member</span></li>
		<li class="nav-item">
			<a class="nav-link" href="#">Member Information</a>
		</li>
		<li class="nav-item bg-inverse text-white form-control"><span class="h5">Summary & Report</span></li>
		<li class="nav-item">
			<a class="nav-link" href="#">Order</a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="#">Point</a>
		</li>
	<ul>
</div>