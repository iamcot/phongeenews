<?php
class Orders extends Eloquent{
    protected $table = 'laorders';
    protected $fillable = array('uid','user_id','requireinvole','labillid','lashipping', 'lapayment', 'lasumkhoiluong','lafeeshipping','laordername','laordertel','laorderemail','laorderaddr','laorderprovince','laorderdistrict','sumsanpham','giamvoucher','voucher','laordernote');

    public static function getSumCartItem(){
        $sum = 0;
        if(Session::has('cart')){
            $cart = Session::get('cart');
            foreach($cart as $item){
                $sum += $item['amount'];
            }
        }
            return $sum;
    }
    public static function getSumPriceCart(){
        $sum = 0;
        if(Session::has('cart')){
            $cart = Session::get('cart');
            foreach($cart as $item){
                $sum += $item['laprice']*$item['amount'];
            }
        }
            return $sum;
    }
    public static function save1($array){
        return DB::table('laorders')->insertGetId($array);
    }

    public static function createOrdersCsv($oders){
        $filename = 'reportOrders'.'-'.date('Y-m-d').'.csv';
        $path =  base_path().'/uploads/csv/'.$filename;
        $file = fopen($path, 'w');
        fputcsv($file,array('ID','Date Order','Total','Customer','Tel','Address','Payment','Type','Status','Note','Updated_at'));
        foreach ($oders as $order) {
            $oShipping = Config::get('shop.shipping.'.$order->lashipping);
            $oPayment = Config::get('shop.payment.'.$order->lapayment);
            $oProvince = Config::get('shop.province.'.$order->laorderprovince);
            $oDistrict = Config::get('shop.hcm_district.'.$order->laorderdistrict);
            $array = array(
                $order->id,
                $order->created_at,
                ($order->sumsanpham - $order->giamvoucher + $order->lafeeshipping),
                Product::removesign($order->laordername),
                $order->laordertel,
                Product::removesign($order->laorderaddr.(($oDistrict!=null)?', '.$oDistrict['title'].',':'').$oProvince['title']),
                Product::removesign($oPayment['value']),
                Product::removesign(Config::get('shop.loaihang.'.$order['loaihang'])),
                Product::removesign(Config::get('shop.orderstatus.'.$order->order_status.'.value')),
                Product::removesign($order->laordernote),
                $order->updated_at,
            );
            fputcsv($file, $array);
        }
        fclose($file);

        return $filename;
    }
}