<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Announcement_model extends CI_Model
{
	public function get_announcement($keyword = null)
	{
		$this->db->select('*');
		$this->db->from('student');
		$this->db->where('nik',$keyword);
		$this->db->or_where('number',$keyword);
		return $this->db->get()->result();
	}
}
