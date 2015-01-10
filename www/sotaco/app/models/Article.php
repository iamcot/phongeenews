<?php

class Article extends Eloquent {
    protected $table = 'articles';
    protected $fillable = array('title','url','fk_project_categories',
        'type','size','address','desc','image');
}