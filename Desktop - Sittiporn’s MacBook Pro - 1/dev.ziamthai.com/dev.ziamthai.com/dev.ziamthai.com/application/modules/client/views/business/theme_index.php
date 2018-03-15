<style type="text/css">
    body { background: #3b5998; }
	.top05 {margin-top: 5px;}
	.top10 {margin-top: 10px;}
	.top15 {margin-top: 15px;}
	div#dvTheme  { background: #ffffff; min-height: 600px;}
	.topImage { margin-top: 10px;}
	.dvMobileThemeDisplay { 
		width: 290px; height: 510px; 
		background-color: #000; 
		border-width: 5px; border-style: solid; border-color: #000;
	}
	.dvMobileThemeHeader { width: 280px; height: 50px; background-color: <?php echo $arrData['back_color'];?>; color: #FFFFFF;}
	.dvMobileThemeContent { width: 280px; height: 400px; background-color: #FFFFFF;}
	.dvMobileThemeFooter { width: 280px; height: 50px; background-color: <?php echo $arrData['back_color'];?>; color: #FFFFFF;}
	.dvMobileThemeFooter div.top10 {
		height: 30px;
		border-left-color: #FFFFFF;
		border-left-width: 1px;
		border-left-style: solid;
		border-right-color: #FFFFFF;
		border-right-width: 1px;
		border-right-style: solid;
		padding-left: 5px;
		padding-right: 5px;
	}
	.text-bg {
		color: <?php echo $arrData['font_color'];?>;
	}
	.disabled { color: #CCC;}
	.buttom {
		border-bottom-width: 2px;
		border-bottom-style: solid;
		border-bottom-color: #CCC;
		min-width: 440px;
	}
	.txtInfo {
		font-size: xx-small;
		font-weight: bolder;
	}
	li.txtInfo{
		font-size: xx-small;
		font-weight: bolder;
	}
</style>
<?php 
	$clsLogo=(isset($arrData['logo_url']))?'':'disabled';
	$linkLogo=(isset($arrData['logo_url']))?$arrData['logo_url']:'#';
	$targetLogo=(isset($arrData['logo_url']))?' target="new"':'';
	
	$clsSplash=(isset($arrData['splash_url']))?'':'disabled';
	$linkSplash=(isset($arrData['splash_url']))?$arrData['splash_url']:'#';
	$targetSplash=(isset($arrData['splash_url']))?' target="new"':'';
	
	$clsLogin=(isset($arrData['login_url']))?'':'disabled';
	$linkLogin=(isset($arrData['login_url']))?$arrData['login_url']:'#';
	$targetLogin=(isset($arrData['login_url']))?' target="new"':'';
	
?>
<div class="container">
    <div class="row" align="center">
		<div id="dvTheme" class="col-md-10">
			<div class="row-fluid">
				<div  class="col-md-6">
					<p>
					<div  class="row-fluid">
						<div id='dvThemeDisplay' class="col-md-12 top10">
							<p>
							<div class="dvMobileThemeDisplay">
								<div class="row dvMobileThemeHeader text-lg-left">
									<div class="col-sm-2 top05" ><i class="fa fa-2x fa-arrow-left" style="border:1px; border-style: solid; border-color: #000;"></i> </div>
									<div class="col-sm-5 offset-sm-1 text-lg-left top10 text-bg">BACK</div>
								</div>
								<div class="row dvMobileThemeContent"></div>
								<div class="row dvMobileThemeFooter text-bg">
									<div class="col-sm-3 top10" style="border-left-width:0px;">Call</div>
									<div class="col-sm-3 top10">Info</div>
									<div class="col-sm-3 top10">Order</div>
									<div class="col-sm-3 top10" style="border-right-width:0px;">Review</div>
								</div>
							</div>
							</p>
						</div>
					</div>
					</p>
				</div>
				<form id="formProp" method="post" class="form-inline" enctype="multipart/form-data">
				<div id='dvThemeProp' class="col-md-6">
					<p>
					<div class="row top5 text-lg-left">
						<p>
						<br>
						<span>
<?php foreach ($arrMesg as $mesg) {
	$sClass=($arrResult['result']==TRUE)?'text-success':'text-danger';
?>
							<?php echo "<li class='txtInfo ".$sClass."'>".$mesg."</li>";?>
<?php } ?>
						</span>
						</p>
					</div>

					<div class="row buttom"></div>
					<div class="form-group row buttom">
						<label for="FormThemeLogoFile" class="col-sm-4 col-form-label align-self-end top10">Logo</label>
						<a href='<?php echo $linkLogo;?>' <?php echo $targetLogo;?>>
							<i class="fa fa-2x fa-image col-sm-1 topImage text-right <?php echo $clsLogo;?>"></i>
						</a>
						<div class="col-sm-7 form-inline">
							<input name="FileLogo" type="file" readonly class="form-control-plaintext top10" id="FormThemeLogoFile">
						</div>
						<br>
						<span class="txtInfo">Must be PNG format for transparency.</span>
					</div>
					<div class="form-group row buttom">
						<label for="FormThemeSplashFile" class="col-sm-4 col-form-label top10">Splash</label>
						<a href='<?php echo $linkSplash;?>' <?php echo $targetSplash;?>>
							<i class="fa fa-2x fa-image col-sm-1 topImage text-right  <?php echo $clsSplash;?>"></i>
						</a>
						<div class="col-sm-7 form-inline">
							<input name="FileSplash" type="file" class="top10" id="FormThemeSplashFile">
						</div>
						<br>
						<span class="txtInfo">Must be PNG format for transparency.</span>
					</div>
					<div class="form-group row buttom">
						<label for="FormThemeLoginFile" class="col-sm-4 col-form-label top10">Login</label>
						<a href='<?php echo $linkLogin;?>' <?php echo $targetLogin;?>>
							<i class="fa fa-2x fa-image col-sm-1 topImage text-right  <?php echo $clsLogin;?>"></i>
						</a>
						<div class="col-sm-7 form-inline">
							<input name="FileLogin" type="file" class="form-control-plaintext top10" id="FormThemeLoginFile">
						</div>
						<br>
						<span  class="txtInfo">Must be PNG format for transparency.</span>
					</div>
					<div class="form-group row buttom">
						<label for="FormThemeBGColor" class="col-sm-4 col-form-label top10">BG Color</label>
						<div class="col-sm-8 form-inline">
							<select name="selBGColor"  class="form-control top10" id="FormThemeBGColor" onchange="changeBGColor('FormThemeBGColor');">
<?php 
	$bBGSelected=FALSE;
	foreach ($arrColor['All'] as $txtName=>$txtValue) { 
	$txtSelected='';
	if ($txtValue==$arrData['back_color']) {
		$txtSelected=' SELECTED';
		$bBGSelected=TRUE;
	}
	if (in_array(strtolower($txtName), $arrColor['BrightBG']))	continue;
	if (stripos(strtolower($txtName),"grey")>-1) continue;
	?>
								<option value="<?php echo $txtValue;?>" <?php echo $txtSelected;?> style="background-color: <?php echo $txtValue;?>;">
									<?php echo $txtName; ?>
								</option>
<?php } 
	if ($bBGSelected == FALSE) { ?>
								<option value="<?php echo $arrData['back_color'];?>" SELECTED style="background-color: <?php echo $arrData['back_color'];?>;">
									<?php echo $access_workspace['name'] ?>
								</option>
<?php
	}
?>
							</select>
						</div>
						<br>
						<span  class="txtInfo">Please selected dark color.</span>
					</div>

					<div class="form-group row buttom">
						<label for="FormThemeFontColor" class="col-sm-4 col-form-label top10">Font Color</label>
						<div class="col-sm-8 form-inline">
							<select name="selFontColor"  class="form-control top10" id="FormThemeFontColor" onchange="changeFontColor('FormThemeFontColor');">
<?php 
	$bFontSelected=false;
	foreach ($arrColor['All'] as $txtName=>$txtValue) { 
	$txtSelected='';
	if ($txtValue==$arrData['font_color']) {
		$txtSelected=' SELECTED';
		$bFontSelected=TRUE;
	}
		if (stripos(strtolower($txtName),"grey")>-1) continue;
	?>
								<option value="<?php echo $txtValue;?>" <?php echo $txtSelected;?> style="background-color: <?php echo $txtValue;?>;">
									<?php echo $txtName; ?>
								</option>
<?php } 
	if ($bFontSelected == FALSE) { ?>
								<option value="<?php echo $arrData['font_color'];?>" SELECTED style="background-color: <?php echo $arrData['font_color'];?>;">
									<?php echo $access_workspace['name'] ?>
								</option>
<?php
	}
?>
							</select>
						</div>
						<br>
						<span class="txtInfo">Please selected opposite of BG Color..</span>
					</div>
					
					<div class="row">
						<p>
						<div class="col-sm-12 align-self-end">
							<input type="hidden" name="txtVersion" value="<?php echo $arrData['version'];?>">
							<button class="btn btn-primary" type="reset"><i class="fa fa-refresh"></i> RESET</button>
							<button name="btnSave" type=submit" class="btn btn-primary"><i class="fa fa-save"></i> SAVE</button>
						</div>
						</p>
					</div>

					<div class="form-group row top15">
						<div class="col-sm-12 form-inline">
							<span class="text-danger">Arrow on the top is image. Cannot change color. </span>
						</div>
					</div>

					<div class="text-lg-left">
<?php 
	if (isset($arrResult['DEBUG'])) {
		echo  "<pre>";
		print_r($arrResult);
		echo "</pre>"; 
	}
?>						
					</div>
					
					</p>
				</div>
				</form>
			</div>
		</div>
    </div>
</div>

<script lang="javascript">
	
	function changeBGColor(obj) {
		var this_value;
		this_value=$('#'+obj).val();
		$('#'+obj).css('background',this_value);
		$('.dvMobileThemeHeader').css('background',this_value);
		$('.dvMobileThemeFooter').css('background',this_value);
//		$('#FormThemeBGColor').css(prop,this_value);
//		alert(this_value);
	}

	function changeFontColor(obj) {
		var this_value;
		this_value=$('#'+obj).val();
		$('#'+obj).css('background',this_value);
		$('.text-bg').css('color',this_value);
		$('.dvMobileThemeFooter div.top10').css('border-left-color',this_value);
		$('.dvMobileThemeFooter div.top10').css('border-right-color',this_value);
						
//		$('#FormThemeBGColor').css(prop,this_value);
//		alert(this_value);
	}
	$('#dvThemeDisplay').tab('show');
</script>

