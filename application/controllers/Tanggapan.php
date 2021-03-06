<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tanggapan extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model(array('TanggapanModel'));
	}
	
	public function index() {
		$data=array(
			'page'=>'umumtemplate/tanggapan',
			'link'=>'/tanggapan',
			'link2'=>'tanggapan'
		);
		$this->load->view('umumtemplate/tanggapan',$data);
	}  
	
	public function simpan() {
    $simpan = $this->TanggapanModel->simpan();
    
		if($simpan){
			echo '<script>alert("Tanggapan Berhasil Dikirim. Terima Kasih");window.location = "'.base_url().'tanggapan";</script>';
		}	
		else{
			echo '<script>alert("Tanggapan Gagal Dikirim");window.location = "'.base_url().'tanggapan";</script>';
		}
  }
  
	public function warga(){
		$data=array(
			'page'=>'admin/tanggapan/listtanggapan',
			'link'=>'tanggapan/warga',
			'isi'=>$this->TanggapanModel->listall()->result(),
		);
		$this->load->view('admintemplate/wrapper',$data);
	}
}
