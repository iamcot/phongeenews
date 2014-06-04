<?php
class Vproduct extends Eloquent{
    protected $table = 'v_products';
    public static function getNewsNoibat(){
        return Vproduct::where('cat1url','tin-noi-bat')
            ->paginate(4);
    }
    public static function getNewsBottom(){
        return Vproduct::where('cat1url','tin-cong-ty')
            ->paginate(8);
    }
}