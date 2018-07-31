<?php
/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */
App::uses('AppController', 'Controller');
App::uses('CakeEmail', 'Network/Email');

/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class PagesController extends AppController {

/**
 * Controller name
 *
 * @var string
 */
	public $name = 'Pages';
	
	public function beforeFilter() {
	    parent::beforeFilter();
		
		$this->loadModel('PageContent');
				
	    $this->Auth->allow();
		$this->loadModel('Banner');
	
		$mobile_detect = false;
		
		if($this->RequestHandler->isMobile()) {
			$mobile_detect = true;
		}
		
		$about_us = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>1)));
		$projects = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>2)));
		$sponsorships = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>3)));
				
		$this->set(compact('mobile_detect', 'about_us', 'projects', 'sponsorships'));
	}

/**
 * This controller does not use a model
 *
 * @var array
 */
	public $uses = array();
	
	public function index(){
		$title_for_layout = "home";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>1)));
		$this->set(compact('title_for_layout', 'banner'));
	}
	
	public function about_us(){
		$title_for_layout = "about us";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>2)));
		$content = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>1)));
		$this->set(compact('title_for_layout', 'banner', 'content'));
	}
	
	public function projects(){
		$title_for_layout = "projects";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>3)));
		$content = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>2)));
		$this->set(compact('title_for_layout', 'banner', 'content'));
	}
	
	public function sponsorship(){
		$title_for_layout = "sponsorship";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>4)));
		$sponsorship = $this->PageContent->find('first', array('conditions'=>array('PageContent.id'=>3)));
		$content = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>3)));
		$this->set(compact('title_for_layout', 'banner', 'sponsorship', 'content'));
	}
	
	public function gallery($id=null){
		$title_for_layout = "gallery";
		$this->loadModel('Gallery');
		$this->loadModel('Image');
		$this->loadModel('Banner');
		
		$gallery = null;
				
		if($id){
			$gallery = $this->Gallery->find('first', array('conditions'=>array('Gallery.slug'=>$id)));
			$this->paginate = array('conditions'=>array('Image.gallery_id'=>$gallery['Gallery']['id']), 'order'=>array('Image.id' => 'DESC'), 'limit' => 24);
			$this->Image->recursive = 0;
			$images = $this->paginate('Image');
			
		}else{
			$galleries = $this->Gallery->find('all');
			$this->paginate = array('order'=>array('Gallery.id' => 'DESC'), 'limit' => 24);
			$this->Gallery->recursive = 0;
			$galleries = $this->paginate('Gallery');
		}
		
		$this->set(compact('title_for_layout', 'galleries', 'gallery', 'images'));
	}
	
	public function news(){
		$title_for_layout = "news";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>5)));
		$newsletter = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>35)));
		$books = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>36)));
		$this->set(compact('title_for_layout', 'books', 'banner', 'newsletter'));
	}
	
	public function contact(){
		$title_for_layout = "contact";
		$contact = $this->PageContent->find('first', array('conditions'=>array('PageContent.category'=>41)));
		$this->set(compact('title_for_layout', 'contact'));
	}
	
	public function get_involved(){
		$title_for_layout = "sponsorship";
		$banner = $this->Banner->find('first', array('conditions'=>array('Banner.id'=>5)));
		$sponsorship = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>3)));
		$get_involved = $this->PageContent->find('first', array('conditions'=>array('PageContent.id'=>4)));
		$content = $this->PageContent->find('all', array('conditions'=>array('PageContent.category'=>4)));
		$this->set(compact('title_for_layout', 'banner', 'sponsorship', 'content', 'get_involved'));
	}
	
	public function process(){

		$this->layout = 'blank';

		if(!empty($this->request->data)):
			
		$email = new CakeEmail('smtp');
		//$email->from(array($this->request->data['Contact']['email'] => $this->request->data['Contact']['name']));
		
		$email->to('oribritta@gmail.com');
		//$email->cc(array('Hanni@safghana.org', 'AliceAn2@stlghana.com'));
		$email->subject('Gye Nyame Mobile Clinic - '.$this->request->data['Contact']['subject']);
		$email->replyTo($this->request->data['Contact']['email']);
		$email->sender('no-reply@safghana.com', 'Gye Nyame Mobile Clinic');
		$email->emailFormat('html');
		$email->template('contact');
		$email->viewVars(array(
	                'name' => $this->request->data['Contact']['name'],
	                'email' => $this->request->data['Contact']['email'],
					'tel' => $this->request->data['Contact']['tel'],
					'message' => $this->request->data['Contact']['message']
				)
			);

			if($email->send()):
				echo '<div class="alert-box primary">Thank you for contacting Gye Nyame Mobile Clinic<a href="" class="close">&times;</a></div>';
			else:
            	echo '<div class="alert-box alert">email error<a href="" class="close">&times;</a></div>';
			endif;
    else:
         $this->flash('Form field cannot be empty<a href="" class="close">&times;</a>', 'default', array('class' => 'alert-box alert'));
	endif;

	}
	
	public function newsletter(){

		$this->layout = 'blank';

		if(!empty($this->request->data)):
			
		$email = new CakeEmail('smtp');
		//$email->from(array($this->request->data['Contact']['email'] => $this->request->data['Contact']['name']));
		
		$email->to('oribritta@gmail.com');
		//$email->cc(array('Hanni@safghana.org', 'AliceAn2@stlghana.com'));
		$email->subject('Gye Nyame Mobile Clinic Newsletter Subscriber');
		$email->replyTo($this->request->data['Contact']['email']);
		$email->sender('no-reply@safghana.com', 'Gye Nyame Mobile Clinic');
		$email->emailFormat('html');
		$email->template('newsletter');
		$email->viewVars(array(
	                'email' => $this->request->data['Newsletter']['email']
				)
			);

			if($email->send()):
				echo '<div class="alert-box primary">Thank you for contacting Gye Nyame Mobile Clinic<a href="" class="close">&times;</a></div>';
			else:
            	echo '<div class="alert-box alert">email error<a href="" class="close">&times;</a></div>';
			endif;
    else:
         $this->flash('Form field cannot be empty<a href="" class="close">&times;</a>', 'default', array('class' => 'alert-box alert'));
	endif;

	}
	
	public function download($file_name = null, $file_dir = null){
        $this->layout = 'blank';
		
		if(!$file_dir){
			$file_dir = 'downloads';
		}
		

        if(!$file_name) {
            $this->Session->setFlash('You have not specified a file to download');
            //$this->redirect(array('action' => 'index'));
        }

        $file = $file_name;

        if($file) {
		    $this->response->file(WWW_ROOT .'files' . DS . $file_dir . DS . $file);
		    $this->response->header('Content-Disposition', 'inline');
		    return $this->response;
        } else {
            $this->Session->setFlash('The file you are trying to view does not exist, please try again');
            //$this->redirect(array('action' => 'index'));
        }
	    
	}
	
	public function search(){
		$this->layout = 'ajax';
		$this->loadModel('PageContent');
		
		if($this->request->is('post')){
			$keywords = $this->request->data['query'];
			$num_of_rows = 0;
			
			//All misc search results
			$all_results = $this->PageContent->find('all', array('conditions'=>array('NOT'=>array(), 'OR'=>array("PageContent.title LIKE" =>"%$keywords%", "PageContent.content LIKE" =>"%$keywords%")), 'group' => array('PageContent.id'), 'limit'=>6));
			
			$num_of_rows = $this->PageContent->find('count', array('conditions'=>array('NOT'=>array(), 'OR'=>array("PageContent.title LIKE" =>"%$keywords%", "PageContent.content LIKE" =>"%$keywords%")), 'group' => array('PageContent.id')));
						
			$all_search = array('misc'=>$all_results);
										
			//Merging search results
			$search_results = array_merge($all_search);
					
		}else{
			$search_results = null;
		}
								
		$this->set(compact('search_results', 'keywords', 'num_of_rows'));
	}
	
	public function ajax_search(){
		$this->layout = 'ajax';
		$this->loadModel('PageContent');
		
		if($this->request->is('post')){
			$keywords = $this->request->data['query'];
			$num_of_rows = 0;
			
			//All misc search results
			$all_results = $this->PageContent->find('all', array('conditions'=>array('NOT'=>array(), 'OR'=>array("PageContent.title LIKE" =>"%$keywords%", "PageContent.content LIKE" =>"%$keywords%")), 'group' => array('PageContent.id')));
			
			$num_of_rows = $this->PageContent->find('count', array('conditions'=>array('NOT'=>array(), 'OR'=>array("PageContent.title LIKE" =>"%$keywords%", "PageContent.content LIKE" =>"%$keywords%")), 'group' => array('PageContent.id')));
						
			$all_search = array('misc'=>$all_results);
										
			//Merging search results
			$search_results = array_merge($all_search);
					
		}else{
			$search_results = null;
		}
								
		$this->set(compact('search_results', 'keywords', 'num_of_rows'));
	}
	
	public function more_search($keywords=null){
		$title_for_layout = "Search";
		$this->loadModel('PageContent');
		
		if($keywords){			
			$num_of_rows = 0;
			
			//All misc search results
			$all_results = $this->PageContent->find('all', array('conditions'=>array('NOT'=>array(), 'OR'=>array("PageContent.title LIKE" =>"%$keywords%", "PageContent.content LIKE" =>"%$keywords%")), 'group' => array('PageContent.id')));
			
			$num_of_rows = $this->PageContent->find('count', array('conditions'=>array('NOT'=>array(), 'OR'=>array("PageContent.title LIKE" =>"%$keywords%", "PageContent.content LIKE" =>"%$keywords%")), 'group' => array('PageContent.id')));
						
			$all_search = array('misc'=>$all_results);
										
			//Merging search results
			$search_results = array_merge($all_search);
			
		}elseif($this->request->is('post')){
			$keywords = $this->request->data['query'];
			
			$num_of_rows = 0;
			
			//All misc search results
			$all_results = $this->PageContent->find('all', array('conditions'=>array('NOT'=>array(), 'OR'=>array("PageContent.title LIKE" =>"%$keywords%", "PageContent.content LIKE" =>"%$keywords%")), 'group' => array('PageContent.id')));
			
			$num_of_rows = $this->PageContent->find('count', array('conditions'=>array('NOT'=>array(), 'OR'=>array("PageContent.title LIKE" =>"%$keywords%", "PageContent.content LIKE" =>"%$keywords%")), 'group' => array('PageContent.id')));
						
			$all_search = array('misc'=>$all_results);
										
			//Merging search results
			$search_results = array_merge($all_search);
					
		}else{
			$search_results = null;
		}
								
		$this->set(compact('title_for_layout', 'search_results', 'keywords', 'num_of_rows'));
	}
}
