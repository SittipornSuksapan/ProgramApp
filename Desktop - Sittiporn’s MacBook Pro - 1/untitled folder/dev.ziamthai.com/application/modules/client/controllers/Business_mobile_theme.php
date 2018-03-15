<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Business_mobile_theme extends CI_Controller {

	private $access_module = 'client';
	private $access_client, $access_workspace, $access_lang;
	private $arrColor;
	private $arrResult;


	public function __construct() {
		parent:: __construct();

		$this->access_lang = get_language();
		$this->access_module = $this->router->fetch_module();

		//-- get client user & workspace
		$this->load->model($this->access_module . '/customer/Login_model');
		$this->access_client = $this->Login_model->valid_client();
		$this->access_workspace = $this->Login_model->valid_workspace();
		$this->access_menu = $this->Login_model->valid_role();

		//-- template setup
		$this->template->language($this->access_lang);

		$this->template->set('access_client', $this->access_client);
		$this->template->set('access_workspace', $this->access_workspace);
		$this->template->set('access_module', $this->access_module);
		$this->template->set('access_lang', $this->access_lang);
		$this->template->set('access_menu', $this->access_menu);

		$this->template->load($this->access_module . '/templates/default');
		 
		$this->load->model($this->access_module . '/business/Theme_model');
	}

	public function index() {
		if (empty($this->access_client['id']) || empty($this->access_workspace['id'])) {
			redirect($this->access_module . '/login');
			exit();
		}
		$shopID=$this->access_workspace['id'];
		$ThemeFolder=sprintf('%s/uploads/themes/%d',ROOT_PATH,$shopID);
		if (! is_dir($ThemeFolder)) {
			$this->Theme_model->gen_theme_folder($shopID);
		}

		$this->template->set('title', $this->lang->line('page_title'));
		$this->template->set('sidebar_mnu_active', 'business_mobile_theme');
	//		$data=null;
		$arrTheme=null;
//		$file_theme=sprintf("%s/%s%s.php",ROOT_PATH,$this->access_module,'/business/theme_index');
//		echo $file_theme;

		$arrMesg=array();
		$arrColor['All']=$this->genThemeColor();
		$arrColor['BrightBG']=$this->genBrightBG();

//		$arrData['font_color']='#FFFFFF';
//		$arrData['back_color']='##785447';

		$arrResult=array('result'=>FALSE);
		if (isset($_REQUEST['btnSave'])) {
			$shopID=$this->access_workspace["id"];
//			$arrMesg[]=sprintf('Save %s',date('Y-m-d H:i:s'));
//			$arrMesg[]=sprintf('selBGColor : %s',$_REQUEST['selBGColor']);
//			$arrMesg[]=sprintf('selFontColor : %s',$_REQUEST['selFontColor']);
			
			$arrResult=$this->Theme_model->update_theme($shopID,$_REQUEST['selBGColor'],$_REQUEST['selFontColor'],$_FILES);
			if ($arrResult['result']==FALSE) {
				$arrMesg[]='Updated Failed';
				if (isset($arrResult['mesg'])) {
					foreach($arrResult['mesg'] as $sMesg) {
						$arrMesg[]=$sMesg;
					}
				}
			} else {
				$arrMesg[]='Updated SuccessFul';
			}
		}

		$arrTheme=$this->Theme_model->get_theme($this->access_workspace['id']);


//		if (file_exists(ROOT_PATH.$this->access_module . '/business/theme_index.php')) {
			$this->template->view($this->access_module . '/business/theme_index', array(
				'access_client' => $this->access_client,
				'access_workspace' => $this->access_workspace,
				'access_module' => $this->access_module,
				'access_lang' => $this->access_lang,
				'arrData' => $arrTheme[0],
				'arrColor'=> $arrColor,
				'arrMesg'=>$arrMesg,
				'arrFiles'=>$_FILES,
				'arrResult'=>$arrResult,
			));
/*
 * 		} else {
			$this->template->view($this->access_module . '/default', array(
				'access_client' => $this->access_client,
				'access_workspace' => $this->access_workspace,
				'access_module' => $this->access_module,
				'access_lang' => $this->access_lang
			));
 		}
 * 
 */
	}
	public function genBrightBG() {
		return array("azure","aliceblue","cornsilk","honeydew","lavender","lavenderblush",
			"gainsboro","lightyellow","mintcream","oldlace","mistyrose","papayawhip","lightgoldenrodyellow",
			"snow","seashell","linen","floralwhite","ghostwhite","ivory","grey","white","whitesmoke");	
	}

	public function genThemeColor() {
		 return array(
			'AliceBlue'=>'#F0F8FF',
			'AntiqueWhite'=>'#FAEBD7',
			'Aqua'=>'#00FFFF',
			'Aquamarine'=>'#7FFFD4',
			'Azure'=>'#F0FFFF',
			'Beige'=>'#F5F5DC',
			'Bisque'=>'#FFE4C4',
			'Black'=>'#000000',
			'BlanchedAlmond'=>'#FFEBCD',
			'Blue'=>'#0000FF',
			'BlueViolet'=>'#8A2BE2',
			'Brown'=>'#A52A2A',
			'BurlyWood'=>'#DEB887',
			'CadetBlue'=>'#5F9EA0',
			'Chartreuse'=>'#7FFF00',
			'Chocolate'=>'#D2691E',
			'Coral'=>'#FF7F50',
			'CornflowerBlue'=>'#6495ED',
			'Cornsilk'=>'#FFF8DC',
			'Crimson'=>'#DC143C',
			'Cyan'=>'#00FFFF',
			'DarkBlue'=>'#00008B',
			'DarkCyan'=>'#008B8B',
			'DarkGoldenRod'=>'#B8860B',
			'DarkGray'=>'#A9A9A9',
			'DarkGrey'=>'#A9A9A9',
			'DarkGreen'=>'#006400',
			'DarkKhaki'=>'#BDB76B',
			'DarkMagenta'=>'#8B008B',
			'DarkOliveGreen'=>'#556B2F',
			'DarkOrange'=>'#FF8C00',
			'DarkOrchid'=>'#9932CC',
			'DarkRed'=>'#8B0000',
			'DarkSalmon'=>'#E9967A',
			'DarkSeaGreen'=>'#8FBC8F',
			'DarkSlateBlue'=>'#483D8B',
			'DarkSlateGray'=>'#2F4F4F',
			'DarkSlateGrey'=>'#2F4F4F',
			'DarkTurquoise'=>'#00CED1',
			'DarkViolet'=>'#9400D3',
			'DeepPink'=>'#FF1493',
			'DeepSkyBlue'=>'#00BFFF',
			'DimGray'=>'#696969',
			'DimGrey'=>'#696969',
			'DodgerBlue'=>'#1E90FF',
			'FireBrick'=>'#B22222',
			'FloralWhite'=>'#FFFAF0',
			'ForestGreen'=>'#228B22',
			'Fuchsia'=>'#FF00FF',
			'Gainsboro'=>'#DCDCDC',
			'GhostWhite'=>'#F8F8FF',
			'Gold'=>'#FFD700',
			'GoldenRod'=>'#DAA520',
			'Gray'=>'#808080',
			'Grey'=>'#808080',
			'Green'=>'#008000',
			'GreenYellow'=>'#ADFF2F',
			'HoneyDew'=>'#F0FFF0',
			'HotPink'=>'#FF69B4',
			'IndianRed'=>'#CD5C5C',
			'Indigo'=>'#4B0082',
			'Ivory'=>'#FFFFF0',
			'Khaki'=>'#F0E68C',
			'Lavender'=>'#E6E6FA',
			'LavenderBlush'=>'#FFF0F5',
			'LawnGreen'=>'#7CFC00',
			'LemonChiffon'=>'#FFFACD',
			'LightBlue'=>'#ADD8E6',
			'LightCoral'=>'#F08080',
			'LightCyan'=>'#E0FFFF',
			'LightGoldenRodYellow'=>'#FAFAD2',
			'LightGray'=>'#D3D3D3',
			'LightGrey'=>'#D3D3D3',
			'LightGreen'=>'#90EE90',
			'LightPink'=>'#FFB6C1',
			'LightSalmon'=>'#FFA07A',
			'LightSeaGreen'=>'#20B2AA',
			'LightSkyBlue'=>'#87CEFA',
			'LightSlateGray'=>'#778899',
			'LightSlateGrey'=>'#778899',
			'LightSteelBlue'=>'#B0C4DE',
			'LightYellow'=>'#FFFFE0',
			'Lime'=>'#00FF00',
			'LimeGreen'=>'#32CD32',
			'Linen'=>'#FAF0E6',
			'Magenta'=>'#FF00FF',
			'Maroon'=>'#800000',
			'MediumAquaMarine'=>'#66CDAA',
			'MediumBlue'=>'#0000CD',
			'MediumOrchid'=>'#BA55D3',
			'MediumPurple'=>'#9370DB',
			'MediumSeaGreen'=>'#3CB371',
			'MediumSlateBlue'=>'#7B68EE',
			'MediumSpringGreen'=>'#00FA9A',
			'MediumTurquoise'=>'#48D1CC',
			'MediumVioletRed'=>'#C71585',
			'MidnightBlue'=>'#191970',
			'MintCream'=>'#F5FFFA',
			'MistyRose'=>'#FFE4E1',
			'Moccasin'=>'#FFE4B5',
			'NavajoWhite'=>'#FFDEAD',
			'Navy'=>'#000080',
			'OldLace'=>'#FDF5E6',
			'Olive'=>'#808000',
			'OliveDrab'=>'#6B8E23',
			'Orange'=>'#FFA500',
			'OrangeRed'=>'#FF4500',
			'Orchid'=>'#DA70D6',
			'PaleGoldenRod'=>'#EEE8AA',
			'PaleGreen'=>'#98FB98',
			'PaleTurquoise'=>'#AFEEEE',
			'PaleVioletRed'=>'#DB7093',
			'PapayaWhip'=>'#FFEFD5',
			'PeachPuff'=>'#FFDAB9',
			'Peru'=>'#CD853F',
			'Pink'=>'#FFC0CB',
			'Plum'=>'#DDA0DD',
			'PowderBlue'=>'#B0E0E6',
			'Purple'=>'#800080',
			'RebeccaPurple'=>'#663399',
			'Red'=>'#FF0000',
			'RosyBrown'=>'#BC8F8F',
			'RoyalBlue'=>'#4169E1',
			'SaddleBrown'=>'#8B4513',
			'Salmon'=>'#FA8072',
			'SandyBrown'=>'#F4A460',
			'SeaGreen'=>'#2E8B57',
			'SeaShell'=>'#FFF5EE',
			'Sienna'=>'#A0522D',
			'Silver'=>'#C0C0C0',
			'SkyBlue'=>'#87CEEB',
			'SlateBlue'=>'#6A5ACD',
			'SlateGray'=>'#708090',
			'SlateGrey'=>'#708090',
			'Snow'=>'#FFFAFA',
			'SpringGreen'=>'#00FF7F',
			'SteelBlue'=>'#4682B4',
			'Tan'=>'#D2B48C',
			'Teal'=>'#008080',
			'Thistle'=>'#D8BFD8',
			'Tomato'=>'#FF6347',
			'Turquoise'=>'#40E0D0',
			'Violet'=>'#EE82EE',
			'Wheat'=>'#F5DEB3',
			'White'=>'#FFFFFF',
			'WhiteSmoke'=>'#F5F5F5',
			'Yellow'=>'#FFFF00',
			'YellowGreen'=>'#9ACD32',
			);
		
	}
		
}
