<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* Dashboard
*/
class Dashboard extends CI_Controller {

	public function index() {

		$this->load->view('member/dashboard_view');
	}
}