<?php
class Image extends Eloquent
{
    protected $table = 'laimages';
    protected $fillable = array('lapic','latitle','laproduct_id','laevent');
}