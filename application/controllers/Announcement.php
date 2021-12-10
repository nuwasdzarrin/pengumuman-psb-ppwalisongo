<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Announcement extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	function __construct(){
		parent::__construct();
		$this->load->model('Announcement_model');
	}

	public function index()
	{
		$this->load->model('Announcement_model');
		$keyword = $this->input->get('keyword');
		$data['data']=$this->Announcement_model->get_announcement($keyword);
		$this->load->view('v_announcement', $data);
	}
}
