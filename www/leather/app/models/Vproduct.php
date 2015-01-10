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
        return Vproduct::where('isnews','1')
            ->where('cat1url','!=','tin-tuc')
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
            ->where('cat1url','!=','tin-tuc')
            ->orderby('laview','desc')
            ->take(5)->get();

    }
    public static function getNewsArchive(){
        return DB::table('v_products')
            ->where('v_products.layear','!=','')
            ->where('v_products.isnews','=','1')
            ->groupby('v_products.layear')
            ->groupby('v_products.lamonth')
            ->orderby('v_products.layear','DESC')
            ->orderby('v_products.lamonth','DESC')
            ->select('v_products.layear','v_products.lamonth',
                DB::raw(' (SELECT COUNT(id) FROM v_products WHERE layear=v_products.layear AND lamonth = v_products.lamonth) AS countmonth'),
                DB::raw(' (SELECT COUNT(id) FROM v_products WHERE layear=v_products.layear ) AS countyear')
            )
            ->get();
    }

}