<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminDemoTestController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "title";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "demo_test";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Title","name"=>"title","width"=>"150"];
			$this->col[] = ["label"=>"Description","name"=>"description","width"=>"600","callback_php"=>'str_limit(strip_tags($row->description,150))'];
			# END COLUMNS DO NOT REMOVE THIS LINE

			if(CRUDBooster::isSuperadmin()){
			$this->col[] = ["label"=>"User Name","name"=>"user_id","join" => "cms_users,name","width"=>"150"];
			} 
			 $this->col[] = ["label"=>"Status","name"=>"status","callback" => function($row){
			 	if(CRUDBooster::myPrivilegeId() == 11){ //pc
			 		if($row->status == '1'){
						return '<span class="label label-warning">Pending</span>';
					}elseif($row->status == '99'){
						return '<span class="label label-danger">Rejected</span>';
					}elseif($row->status == '100'){
						return '<span class="label label-primary">Approved</span>';
					}					
			 	}elseif (CRUDBooster::myPrivilegeId() == 10) { //line manger
			 		if($row->status == '1'){
						return '<span class="label label-info">New</span>';
					}elseif($row->status == '2'){
						return '<span class="label label-warning">Pending</span>';
					}elseif($row->status == '100'){
						return '<span class="label label-primary">Approved</span>';
					}
			 	}elseif (CRUDBooster::myPrivilegeId() == 5) { //hopp
			 		if($row->status == '2'){
						return '<span class="label label-info">New</span>';
					}elseif($row->status == '100'){
						return '<span class="label label-primary">Approved</span>';
					}
			 	}else{ //admin and hord
			 		return '<span class="label label-primary">Approved</span>';
			 	} 
			}];

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Title','name'=>'title','type'=>'checkbox','width'=>'col-sm-10','datatable'=>'sss,value'];
			$this->form[] = ['label'=>'Description','name'=>'description','type'=>'wysiwyg','validation'=>'required|min:5|max:5000','width'=>'col-sm-10'];
			// $this->form[] = ['label'=>'Line Manager','name'=>'flow_id','type'=>'select','width'=>'col-sm-10','datatable'=>'cms_users,name','datatable_where'=>'id_cms_privileges=5','datatable_where'=>'id_cms_privileges=6','datatable_format'=>'name,\'-\'email'];
			$custom_element = view('admin.customInputHead')->render();
			$this->form[] = ['label'=>'Head of Dapartment','name'=>'flow_id','type'=>'custom','validation'=>'required|min:1|max:255','width'=>'col-sm-10','html'=>$custom_element];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//// $id = CRUDBooster::getCurrentId();
			//// $row = CRUDBooster::first($this->table,$id);
			//// $custom_element = view('admin.MultitextInput',compact('row'))->render();
			//
			//// $this->form[] = ['label'=>'Title','name'=>'title','type'=>'custom','validation'=>'required|min:1|max:255','width'=>'col-sm-10','html'=>$custom_element];
			//$this->form[] = ['label'=>'Title','name'=>'title','type'=>'checkbox','datatable'=>'sss,value'];
			//$this->form[] = ['label'=>'Description','name'=>'description','type'=>'wysiwyg','validation'=>'required|min:5|max:5000','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Line Manager','name'=>'flow_id','type'=>'select','width'=>'col-sm-10','datatable'=>'cms_users,name','datatable_where'=>'id_cms_privileges=10'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */  
	        //if(CRUDBooster::myPrivilegeId() == 10){
		        $this->addaction = array(
			        	// [
			        	// 	'label' => 'adsf',
			        	// 	'url'	=> '#',//url('/useractive/[id]'),
			        	// 	'icon'=>'fa fa-facebook',
			        	// 	'color'=>'primary',
			        	// 	'showIf'=> '[status] == 0',
			        	// 	'confirmation' => true
			        	// ],
		        	);	
		      // }
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();//['label'=>'Aktifkan','icon'=>'fa fa-check','name'=>'aktifkan']);

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();//["label"=>"Print Report","icon"=>"fa fa-print","url"=>CRUDBooster::mainpath('print-report')];

	        //dd($this->index_button);

	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }

		// public function hook_html_index(&$html_contents) {

		//     // If you want get data from each row, $html_contents['data']

		//     foreach($html_contents['html'] as &$row) {
		//         // In this example, we want to coloring of status if Active then Green, Else then Red
		//         // First you should know where the status columns row locations (index of array) 
		//         $status = $row[3];
		//         if($status == '100') {
		//             $row[3] = "<span class='label label-success'>Active</span>";
		//         }else{
		//             $row[3] = "<span class='label label-danger'>Pending</span>";
		//         }
		//     }
		// }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	        //else{
	        // 	$query->where('demo_test.status','100');
	        // }
	        if(CRUDBooster::isSuperadmin() || CRUDBooster::myPrivilegeId() == 5 || CRUDBooster::myPrivilegeId() == 6){
	        	$query->where('demo_test.status',100);
	        }elseif(!CRUDBooster::isSuperadmin() || CRUDBooster::myPrivilegeId() != 5 || CRUDBooster::myPrivilegeId() != 6){
	        	$query->where('user_id',CRUDBooster::myId())->orwhere('flow_id',CRUDBooster::myId())->where('demo_test.status','!=','99');
	        }

	        // if(CRUDBooster::isSuperadmin()){
	        // 	$query->where('demo_test.status',100);
	        // }
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {   
	    	// $url = url()->current();
	    	// echo $url;
	    	// exit();
	    //dd($postdata);     
	    	// if($postdata['title'] != '2'){
	    	// 	CRUDBooster::redirectBack(
      //          	 'Los comparendos <b>electrónicos automáticos</b>, es decir, '
      //               . 'que son generados por este sistema, <b>no se pueden editar</b>.'
      //    	   );
	    	// }

	        //Your code here
	    	$postdata['user_id'] = CRUDBooster::myId();
	    	if(CRUDBooster::isSuperadmin() || CRUDBooster::myPrivilegeId() == 5){
	    		$postdata['status'] = '100';
	    	}
	    	$flow_id =  $postdata['flow_id']; 
	    	CRUDBooster::sendNotification($config=[
	        	'content' 		=> 'Conducts An Activities',
	        	'to'			=>	CRUDBooster::mainpath(),
	        	'id_cms_users'	=>	[$flow_id],
	        ]);
	        //$data = ['name'=>'John Doe','address'=>'Lorem ipsum dolor...'];
			//CRUDBooster::sendEmail(['to'=>'john@gmail.com','data'=>$data,'template'=>'order_success']);
	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	         // $row = CRUDBooster::first($this->table,$id);
	         // dd($row);
	        //  CRUDBooster::sendNotification($config=[
	        // 	'content' 		=> 'Conducts An Activities',
	        // 	'to'			=>	url("admin/ai_activity_report/detail/$id"),
	        // 	'id_cms_users'	=>	$row->flow_id,
	        // ]);

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here
	        $url = "http://localhost/actionaid/public/admin/demo_test/edit/18";
	        $url = url()->current();
	        $ss = explode('/',$url);
	        if($ss[7] != 'add'){
	        	echo "edit";
	        }else{
	        	echo "add";
	        }
	     //    dd($ss);
	    	// echo $url;
	    	exit();

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 
	        // $row = CRUDBooster::first($this->table,$id);
	        //  dd($row);

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }

	    //By the way, you can still create your own method in here... :) 

	    public function getDetail($id) {
		  //Create an Auth
		  if(!CRUDBooster::isRead() && $this->global_privilege==FALSE || $this->button_edit==FALSE) {    
		    CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));
		  }
		  
		  $data = [];
		  $data['page_title'] = 'Detail Data';
		  $result = DB::table('demo_test')->where('id',$id)->first();
		  $data['row'] = $result;
		  $data['created']	= DB::table('cms_users')->where('id',$result->user_id)->first();
		  	if(!empty($result->rejected_by)){
		  		$data['rejected']	= DB::table('cms_users')->where('id',$result->rejected_by)->first();
			}
		  //Please use cbView method instead view method from laravel
		  $this->cbView('admin.testDeatil',$data);
		}

		public function getIndex() {
		  //First, Add an auth
		   if(!CRUDBooster::isView()) CRUDBooster::denyAccess();
		   
		   //Create your own query 
		   $data = [];
		   $data['page_title'] = 'Products Data';
		   $data['result'] = DB::table('demo_test')->orderby('id','desc')->paginate(10);
		    
		   //Create a view. Please use `cbView` method instead of view method from laravel.
		   $this->cbView('admin.test',$data);
		}

}