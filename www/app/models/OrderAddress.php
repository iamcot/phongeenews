<?php
class OrderAddress extends Eloquent{
    protected $table = 'laorderaddress';
    protected $fillable = array('user_id','name','sex','tel','address');
}