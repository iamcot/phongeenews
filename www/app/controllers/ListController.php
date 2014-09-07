<?php
class ListController extends  BaseController
{
    private $data = array(
        'typeEnd' => 'list',
        'haveHeader'=> 1,
        'title'=> 'Thái Boutique',
        'sidebartype' => 'sleft',  //sright - sleft - none

    );
    function __construct(){

    }
    public function showList($cat="",$year='',$month=''){
        $this->data['caturl'] = $cat;
        $this->data['lists'] = null;
        $actCat = Category::where("laurl",'=',$cat)->get();

        $this->data['rootcat'] = true;
        if($actCat->count()==1){
            $this->data['actCat'] = $actCat[0];
            if($actCat[0]->isnews==3) return Redirect::to($actCat[0]->lainfo);
            $this->data['title'] =  $actCat[0]->latitle;
            $this->data['description']=$actCat[0]->lainfo;
            if($actCat[0]->laparent_id>0){

                $lists = Vproduct::where('ladeleted','!=','1')
                    ->Where('cat1url','=',$cat)
                    ->orWhere('cat2url','=',$cat);
                $input = Input::all();
                if (isset($input['listorder'])) {
                    if($input['listorder'] == 'giatang')
                        $lists->orderBy('laprice');
                    else if($input['listorder'] == 'giagiam')
                        $lists->orderBy('laprice','DESC');
                    else if($input['listorder'] == 'tentang')
                        $lists->orderBy('latitle');
                    else if($input['listorder'] == 'tengiam')
                        $lists->orderBy('latitle','DESC');
                    else if($input['listorder'] == 'banchay')
                        $lists->orderBy('laview','DESC');
                }
                else{
                    $lists->orderBy('latitle');
                }
//                $lists->orderBy('order3');
//                $lists->orderBy('order2');
//                $lists->orderBy('order1');

                $lists = $lists->paginate(Config::get('shop.tablepp'));
                $this->data['lists'] = $lists;
                $this->data['rootcat'] = false;
            }
            else {
                $catchildren = Category::where('laparent_id','=',$actCat[0]->id)
                    ->orderBy('latitle')
                    ->get();
                $this->data['catchildren'] = $catchildren;
                $this->data['oActCat'] =$actCat[0];
                $ranproduct = DB::table('v_products')
                    ->where('ladeleted', '!=', '1')
                    ->where(function ($query) use ($actCat) {
                        $query->where('cat1id', '=', $actCat[0]->id)
                            ->orwhere('cat2id', '=', $actCat[0]->id)
                            ->orwhere('cat3id', '=', $actCat[0]->id);
                    });
                if($year!='')
                    $ranproduct = $ranproduct->where('layear','=',$year);
                if($month!='')
                    $ranproduct = $ranproduct->where('lamonth','=',$month);

                $input = Input::all();
                if (isset($input['listorder'])) {
                    if($input['listorder'] == 'giatang')
                        $ranproduct->orderBy('laprice');
                    else if($input['listorder'] == 'giagiam')
                        $ranproduct->orderBy('laprice','DESC');
                    else if($input['listorder'] == 'tentang')
                        $ranproduct->orderBy('latitle');
                    else if($input['listorder'] == 'tengiam')
                        $ranproduct->orderBy('latitle','DESC');
                    else if($input['listorder'] == 'banchay')
                        $ranproduct->orderBy('laview','DESC');
                }
                else{
                    $ranproduct->orderBy('latitle');
                }
//                $ranproduct->orderBy('order3');
//                $ranproduct->orderBy('order2');
//                $ranproduct->orderBy('order1');

                $ranproduct = $ranproduct->paginate(Config::get('shop.tablepp'));
                $this->data['lists'] = $ranproduct;
            }

        }
        else{
            App::abort(404);
        }

        return View::make(Config::get('shop.theme')."/list/list",$this->data);
    }
    public function showsearch(){
        $searchkey = Input::get('search');
        $lists = Vproduct::where('latitle','like','%'.$searchkey.'%')
            ->orwhere('laurl','like','%'.$searchkey.'%')
            ->orwhere('lakeyword','like','%'.$searchkey.'%')
            ->orwhere('cat1name','like','%'.$searchkey.'%')
            ->orwhere('cat1url','like','%'.$searchkey.'%')
            ->orderBy('latitle')
            ->paginate(Config::get('shop.tablepp'));
        $this->data['title'] = 'Tìm kiếm '.$searchkey;
        $this->data['actCat'] = 'search';
        $this->data['caturl'] = 'search';
        $this->data['lists'] = $lists;
        $this->data['rootcat'] = false;
        $this->data['issearch'] = true;
        return View::make(Config::get('shop.theme')."/list/list",$this->data);
    }
    public function showtag($tag){
        $lists = Vproduct::where('factorurl','=',$tag)
            ->orwhere('lachucnang','like','%'.$tag.'%')
            ->orwhere('lakeyword','like','%'.$tag.'%')
            ->orderBy('latitle')
            ->paginate(Config::get('shop.tablepp'));
        $this->data['title'] = 'Tìm kiếm '.$tag;
        $this->data['actCat'] = 'search';
        $this->data['caturl'] = 'search';
        $this->data['lists'] = $lists;
        $this->data['rootcat'] = false;
        $this->data['issearch'] = true;
        return View::make(Config::get('shop.theme')."/list/list",$this->data);
    }
    public function showfav($type){
        if($type == 'moi-ve'){
            $lists = Vproduct::where('cat1url','!=','tin-tuc')
                ->where('ladatenew','>',time())
                ->orderBy('ladatenew','DESC')
                ->paginate(Config::get('shop.tablepp'));
        }
        else if($type == 'dang-hot'){
            $lists = Vproduct::where('cat1url','!=','tin-tuc')
                ->orderBy('numorder','DESC')
                ->orderBy('laview','DESC')
                ->paginate(Config::get('shop.tablepp'));
        }
        else if($type == 'dang-sale'){
            $lists = Vproduct::where('cat1url','!=','tin-tuc')
                ->where('pricechange','>','0')
                ->orderBy('pricechange','DESC')
                ->paginate(Config::get('shop.tablepp'));
        }
        else{
            App::abort(404);
        }
        $this->data['title'] = trans('common.'.$type);
        $this->data['actCat'] = $type;
        $this->data['caturl'] = $type;
        $this->data['lists'] = $lists;
        $this->data['rootcat'] = false;
        $this->data['issearch'] = true;
        return View::make(Config::get('shop.theme')."/list/list",$this->data);
    }
}