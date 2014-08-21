<?php
class AjaxController extends BaseController{
    public function anyGetvariant($id){
        $variants = Product::find($id);
        $otherpics = Image::where('laproduct_id','=',$id)
            ->where('lapic','!=',$variants->laimage)
            ->take(1)
            ->get();
        if(count($otherpics)>0){
            $otherpic = $otherpics[0];
            $variants['lapic'] = $otherpic->lapic;
        }
          else $variants['lapic'] = $variants->laimage;
        return Response::json($variants);
    }

    public function getListitemjs(){
        return View::make(Config::get('shop.theme') . "/list/listitemjs");
    }

    public function getStartwidget($type, $page = 1, $pp = 4, $news = false)
    {
        $lists = Vproduct::where('ladeleted', '0');
        if (!$news) $lists = $lists->where('isnews', 0);
        else $lists = $lists->where('isnews', 1);

        if ($type == 'bestsell')
            $lists = $lists->orderby('laview', 'desc');
        else if ($type == 'new')
            $lists = $lists->orderby('id', 'desc');
        return $lists = $lists->take($pp)
            ->get()
            ->tojson();
    }
}