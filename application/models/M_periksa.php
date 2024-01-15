<?php 

/**
* 
*/
class M_periksa extends CI_model
{

private $table = 'tb_periksa';
private $table2 = 'tb_pasien';

//View
public function view($value='')
{
  $this->db->select ('*');
  $this->db->from ($this->table);
  $this->db->join($this->table2, 'tb_pasien.id_pasien = tb_periksa.id_pasien');
  $this->db->order_by('id_periksa', 'ASC');
  return $this->db->get();
}

public function view_sdh($value='')
{
  $this->db->select ('*');
  $this->db->from ($this->table);
  $this->db->join($this->table2, 'tb_pasien.id_pasien = tb_periksa.id_pasien');
  $this->db->where('status', 'S');
  $this->db->order_by('id_periksa', 'ASC');
  return $this->db->get();
}

public function view_blm($value='')
{
  $this->db->select ('*');
  $this->db->from ($this->table);
  $this->db->join($this->table2, 'tb_pasien.id_pasien = tb_periksa.id_pasien');
  $this->db->where('status', 'BL');
  $this->db->order_by('id_periksa', 'ASC');
  return $this->db->get();
}

public function view_btl($value='')
{
  $this->db->select ('*');
  $this->db->from ($this->table);
  $this->db->join($this->table2, 'tb_pasien.id_pasien = tb_periksa.id_pasien');
  $this->db->where('status', 'BTL');
  $this->db->order_by('id_periksa', 'ASC');
  return $this->db->get();
}


public function view_id($id='')
{
 return $this->db->select ('*')->from ($this->table)->where ('id_periksa', $id)->get ();
}

//mengambil id urut terakhir
public function id_urut($value='')
{ 
  $this->db->select_max('id_periksa');
  $this->db->from ($this->table);
}

public function add($SQLinsert){
  return $this -> db -> insert($this->table, $SQLinsert);
}

public function update($id='',$SQLupdate){
  $this->db->where('id_periksa', $id);
  return $this->db-> update($this->table, $SQLupdate);
}

public function delete($id=''){
  $this->db->where('id_periksa', $id);
  return $this->db-> delete($this->table);
}

}