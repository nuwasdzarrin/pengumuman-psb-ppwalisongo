<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Announcement_model extends CI_Model
{
	public function get_announcement($keyword = null)
	{
		$this->db->select('name, status_selection, number, password, virtual_account');
		$this->db->from('student');
		$this->db->where('nik',$keyword);
		$this->db->or_where('number',$keyword);
		return $this->db->limit(1)->get()->result();
	}

	public function get_setting() {
		return $this->db->select('*')->from('announcement_setting')->limit(1)->get()->result();
	}
}
