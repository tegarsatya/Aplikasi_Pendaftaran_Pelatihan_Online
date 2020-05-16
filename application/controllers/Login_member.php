<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Login_member extends CI_Controller
{

	// load model
	public function __construct()
	{
		parent::__construct();
		$this->load->model('user_model');
	}

	// Login page
	public function index()
	{
		// Validasi input
		$this->form_validation->set_rules(
			'username',
			'Username',
			'required',
			array('required'	=> '%s harus diisi')
		);

		$this->form_validation->set_rules(
			'password',
			'Password',
			'required',
			array('required'	=> '%s harus diisi')
		);

		if ($this->form_validation->run()) {
			$username 	= strip_tags($this->input->post('username'));
			$password 	= strip_tags($this->input->post('password'));
			// Proses ke simple login
			$this->simple_login_user->login($username, $password);
		}
		// End validasi

		$data = array('title'		=> 'Halaman Login member');
		$this->load->view('login_member/list', $data, FALSE);
	}

	// Logout
	public function logout()
	{
		// Panggil library logout
		$this->simple_login_user->logout();
	}
}

/* End of file Login.php */
/* Location: ./application/controllers/Login.php */
