<?php
/**
 * PHP Dashboard
 *
 * LICENSE
 *
 * Atlet Nasional is released with licensing, using MIT license (license.txt).
 * You don't have to do anything special to choose one license or the other and you don't have to notify anyone which license you are using.
 * Please see the corresponding license file for details of these licenses.
 * You are free to use, modify and distribute this software, but all copyright information must remain.
 *
 * @package     Dashboard Controller
 * @copyright   Copyright (c) 2016, Agung Sugiarto
 * @license		  MIT
 * @version     1.0.0
 * @author      Agung Sugiarto <sugiartoagung92@gmail.com>
 *
 */
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* Dashboard
*/
class Dashboard extends CI_Controller {

	public function __construct() {

		parent::__construct();
		$this->load->library('grocery_CRUD');
	}


	public function index() {

		$logged_in = $this->session->userdata('logged_in');

		if($logged_in) {
				$data['judul_besar'] = 'Atlet Nasional';
				$data['judul_kecil'] = 'Version 1.0.0';
				$data['output'] = '<div class="content body">
									<section id="introduction">
									  <h2 class="page-header">Intro</h2>
									  <p class="lead">
									    <b>Atlet Nasional</b> dibuat untuk memenuhi tugas mata kuliah pemrograman web, Framework PHP yang digunakan
									    adalah CodeIgniter dan database yang digunakan MYSQL, untuk operasi CRUD menggunakan library Codeigniter grocery_CRUD sebagai operasi (Create, Read, Update & Delete) pada database.
									    website atletnasional.com menggunakan template AdminLTE, salah satu template gratis sebagai backend admin dan template frontend menggunakan niceride template.
									  </p>
									</section><!-- /#introduction -->
									<!-- ============================================================= -->';
			$this->load->view('dev/dashboard_view.php', $data);

		} else {

			$this->load->view('dev/login_view');
		}
	}
}
