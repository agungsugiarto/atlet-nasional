<?php
/**
 * PHP Access
 *
 * LICENSE
 *
 * Atlet Nasional is released with licensing, using MIT license (license.txt).
 * You don't have to do anything special to choose one license or the other and you don't have to notify anyone which license you are using.
 * Please see the corresponding license file for details of these licenses.
 * You are free to use, modify and distribute this software, but all copyright information must remain.
 *
 * @package     Access Controller
 * @copyright   Copyright (c) 2016, Agung Sugiarto
 * @license		  MIT
 * @version     1.0.0
 * @author      Agung Sugiarto <sugiartoagung92@gmail.com>
 *
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class Access extends CI_Controller {
	/**
	 * [__construct description load helper and library]
	 */
	public function __construct() {
		parent::__construct();
		$this->load->helper('form');
		$this->load->library('form_validation');
	}
	/**
	 * [index description]
	 * @return [type] [description]
	 */
	public function index() {

		$logged_in = $this->session->userdata('logged_in');
		if($logged_in) {
			redirect('dev/dashboard');
		} else {
			$this->load->view('dev/login_view');
		}
	}
	/**
	 * [validasi description]
	 * @return [type] [description]
	 */
	public function validasi() {

		$usermail = $this->input->post('usermail');
		$userpass = md5($this->input->post('userpass'));

		$this->load->helper('security');
		$this->form_validation->set_rules('usermail', 'Email', 'required|valid_email|xss_clean');
		$this->form_validation->set_rules('userpass', 'Password', 'required|xss_clean');

		if($this->form_validation->run() == FALSE) {

			$this->load->view('dev/login_view');

		} else {
			$this->load->model('dev/get_admin');
			$res = $this->get_admin->ceklogin($usermail,$userpass);
			if($res){
				foreach ($res as $datalogin) {
					$usermail = $datalogin['usermail'];
          $userpass = $datalogin['userpass'];
      	}
        $data = array(
					'usermail'  => $usermail,
          'userpass'  => $userpass,
          'logged_in' => TRUE
        );
				$this->session->set_userdata($data);
        redirect('dev/dashboard');

      }else{
		// jika tidak valid redirect ke login
        $this->session->set_flashdata(
					'msg', '<div class="alert alert-danger text-center"><button class="close" data-dismiss="alert" type="button">×</button>Email atau Password Salah!</div>'
				);
        redirect('dev/access');
      }
		}
	}
	/**
	 * [logout description]
	 * @return [type] [description]
	 */
	public function logout() {
		$this->session->sess_destroy();
		redirect('/');
	}
}
