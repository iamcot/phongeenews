<?php
class Vproduct extends Eloquent{
    protected $table = 'v_products';
    public static function getNewsNoibat(){
        return Vproduct::where('cat1url','tin-noi-bat')
            ->take(3)->get();
    }
    public static function getNewsBottom(){
        return Vproduct::where('isnews','0')
        ->orderby('laview','desc')
            ->take(8)->get();
    }
    public static function getLastestTincongty(){
        return Vproduct::where('cat1url','tin-cong-ty')
            ->orderby('id','desc')
            ->take(8)->get();
    }
    public static function getLastestTinKhuyenMai(){
        return Vproduct::where('cat1url','tin-khuyen-mai')
            ->orderby('id','desc')
            ->take(4)->get();

    }
    public static function getHotNews(){
        return Vproduct::where('isnews','1')
            ->orderby('laview','desc')
            ->take(5)->get();

    }

}