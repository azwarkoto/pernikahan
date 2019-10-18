<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboardadmin extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model(array('WargaModel','PernikahanModel','PencarianModel','TanggapanModel','UserModel'));
		if($this->session->userdata('status') != "login"){
		    echo '<script>alert("Maaf, anda harus login terlebih dahulu");window.location = "'.base_url().'login";</script>';
		}else{
	       $iduser = $this->session->userdata('iduser');
	       $where=array('id_user'=>$iduser);
	       $cek=$this->UserModel->cek_login($where)->num_rows(); 
	       if($cek == 0){
	           echo '<script>alert("User tidak ditemukan di database");window.location = "'.base_url().'login";</script>';
	       }
		}  
        
	}
	public function index()
	{
		$data=array(
			'page'=>'admin/beranda',
			'link'=>'dashboard',
			'warga'=>$this->WargaModel->getCount()->result(),
			'pernikahan'=>$this->PernikahanModel->getCount()->result(),
			'pencarian'=>$this->PencarianModel->getCount()->result(),
			'tanggapan'=>$this->TanggapanModel->getCount()->result()
		);
		$this->load->view('admintemplate/wrapper',$data);
	}
}