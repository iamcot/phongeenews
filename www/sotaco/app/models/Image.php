<?php

class Image extends Eloquent {
    protected $table = 'images';
    protected $fillable = array('fk_articles','url','title');
}