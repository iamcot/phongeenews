<?php
class ShopEvent extends Eloquent{
    protected $table = 'laevent';
    protected $fillable = array('latitle','laurl','lainfo','laactive','lanews','laproduct');
}