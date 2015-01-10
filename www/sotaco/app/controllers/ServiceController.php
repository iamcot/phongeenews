<?php

class ServiceController extends BaseController {

    protected $data = array();
    public function getIndex(){
        $articles = Article::orderBy('type')->get();
        $this->data['services'] = array();
        $type = '';
        foreach($articles as $article) {
            if($type != $article->type) {
                $type = $article->type;
                $this->data['services'][$type][] = $article;
            }
        }
        return View::make(Config::get('site.theme').'.service.service',$this->data);
    }

    public function getList($url,$id){
        $article = Article::find($id);
        if($article){
            $this->data['article'] = $article;
            $this->data['images'] = Image::where('fk_articles',$article->id)->get();
            $this->data['contracts'] = ArticleContract::where('fk_articles',$article->id)->get();
            return View::make(Config::get('site.theme').'.service.detail',$this->data);
        }
        return Redirect::to('/dich-vu.html');
    }
}