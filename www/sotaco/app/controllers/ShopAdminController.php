<?php
use Myhelper\UploadHandler;

class ShopAdminController extends BaseController
{
    private $data = array(
        'typeEnd' => 'admin',
    );

    public function __construct()
    {
        $this->beforeFilter('isadmin');
        $this->beforeFilter('csrf', array('on' => 'post'));
    }

    public function getIndex()
    {
        $this->data['actCat'] = 'home';
        return View::make('admin.start', $this->data);
    }

    public function getArticle(){
        $this->data['actCat'] = 'article';

        $this->data['articles'] = Article::orderby('id','desc')->paginate(20);
        return View::make('admin.article',$this->data);
    }
    public function getDeletearticle($id){
        $article = Article::find($id);
        if($article){
            Image::where('fk_articles',$id)->delete();
            ArticleContract::where('fk_articles',$id)->delete();
            $article->delete();
        }
        return Redirect::to('admin/article');
    }
    public function anyEditarticle($id=0){
        $this->data['actCat'] = 'article';

        if(Input::get('save')){
            try {
                $param = array(
                    'title' => trim(Input::get('title')),
                    'url' => trim(Input::get('url')),
                    'size' => trim(Input::get('size')),
                    'type' => Input::get('type'),
                    'fk_project_categories' => Input::get('fk_categories'),
                    'desc' => trim(Input::get('desc')),
                    'address' => trim(Input::get('address')),
                    'image' => '',
                );
                $images = array();
                if (Input::get('images')) {
                    $images = explode("\n", Input::get('images'));
                    if (count($images) > 0) {
                        $param['image'] = trim($images[0]);
                    }
                }
                if(Input::get('id')){
                    $article = Article::find(Input::get('id'));
                }
                else{
                    $article = Article::where('url',$param['url'])
                        ->where('fk_project_categories',$param['fk_project_categories']);
                }


                if($article->count() == 0) {
                    $article = Article::create($param);
                }
                else{
                    $article->update($param);
                    $article = $article->first();
                }
                if ($article) {
                    Image::where('fk_articles',$article->id)->delete();
                    ArticleContract::where('fk_articles',$article->id)->delete();
                    foreach ($images as $image) {
                        if (trim($image) != '') {
                            Image::create(array(
                                'url' => trim($image),
                                'title' => '',
                                'fk_articles' => $article->id
                            ));
                        }

                    }
                    $contract = Input::get('contract');
                    if(is_array($contract)){
                        foreach ($contract as $cont) {
                            ArticleContract::create(array(
                                'fk_articles' => $article->id,
                                'fk_contract_type' => $cont,
                            ));
                        }
                    }

                    return Redirect::to('admin/article');
                }
            }catch (Exception $ex){
                $this->data['message'] = $ex;
            }
        }
        $this->data['article'] = null;
        $this->data['images'] = array();
        $this->data['contracts'] = array();
        if($id!=0){
            $this->data['article'] = Article::find($id);
            if($this->data['article']) {
                $images = Image::where('fk_articles',$id)->get();
                if($images) {
                    foreach($images as $image) {
                        $this->data['images'][] = $image->url;
                    }
                }
                $contracts = ArticleContract::where('fk_articles',$id)->get();
                if($contracts) {
                    foreach($contracts as $contract){
                        $this->data['contracts'][] = $contract->fk_contract_type;
                    }
                }
            }
        }

        return View::make('admin.edit_article',$this->data);
    }

}