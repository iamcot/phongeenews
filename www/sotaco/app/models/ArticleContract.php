<?php

class ArticleContract extends Eloquent {
    protected $table = 'article_contract';
    protected $fillable = array('fk_articles','fk_contract_type');
}