<?php
class Product extends Eloquent
{
    protected $table = 'laproducts';

    public static function adminViewProduct($input)
    {
        $products = DB::table('v_productsadmin')
            ->leftJoin('lacategories', 'lacategories.id', '=', 'v_productsadmin.lacategory_id')
            ->leftJoin('lamanufactors', 'v_productsadmin.lamanufactor_id', '=', 'lamanufactors.id')
            ->select('v_productsadmin.*', 'lacategories.latitle as catname', 'lamanufactors.latitle as factorname',
                DB::raw('(SELECT COUNT(image.id) from pl_laimages as image where image.laproduct_id = pl_v_productsadmin.id) as countimage'));
        if (isset($input['filter']))
            $products = $products->where('v_productsadmin.latitle', 'like', '%'.$input['filter'].'%');
        if(isset($input['filtercat']) && $input['filtercat']!='all')
            $products = $products->where(function($query) use ($input){
                $query->where('v_productsadmin.cat1id','=', $input['filtercat'])
                ->orwhere('v_productsadmin.cat2id','=', $input['filtercat'])
                ->orwhere('v_productsadmin.cat3id','=', $input['filtercat']);
            });
        $products = $products->orderBy('v_productsadmin.id', 'DESC');
        if(!isset($input['export'])) {
            $products = $products->paginate(Config::get('shop.tablepp'));
        }
        else {
            $products = $products->get();
        }
        return $products;
    }

    public static function removesign($str)
    {
        $coDau=array("à","á","ạ","ả","ã","â","ầ","ấ","ậ","ẩ","ẫ","ă","ằ","ắ"
        ,"ặ","ẳ","ẵ","è","é","ẹ","ẻ","ẽ","ê","ề","ế","ệ","ể","ễ","ì","í","ị","ỉ","ĩ",
            "ò","ó","ọ","ỏ","õ","ô","ồ","ố","ộ","ổ","ỗ","ơ"
        ,"ờ","ớ","ợ","ở","ỡ",
            "ù","ú","ụ","ủ","ũ","ư","ừ","ứ","ự","ử","ữ",
            "ỳ","ý","ỵ","ỷ","ỹ",
            "đ",
            "À","Á","Ạ","Ả","Ã","Â","Ầ","Ấ","Ậ","Ẩ","Ẫ","Ă"
        ,"Ằ","Ắ","Ặ","Ẳ","Ẵ",
            "È","É","Ẹ","Ẻ","Ẽ","Ê","Ề","Ế","Ệ","Ể","Ễ",
            "Ì","Í","Ị","Ỉ","Ĩ",
            "Ò","Ó","Ọ","Ỏ","Õ","Ô","Ồ","Ố","Ộ","Ổ","Ỗ","Ơ"
        ,"Ờ","Ớ","Ợ","Ở","Ỡ",
            "Ù","Ú","Ụ","Ủ","Ũ","Ư","Ừ","Ứ","Ự","Ử","Ữ",
            "Ỳ","Ý","Ỵ","Ỷ","Ỹ",
            "Đ","ê","ù","à");
        $khongDau=array("a","a","a","a","a","a","a","a","a","a","a"
        ,"a","a","a","a","a","a",
            "e","e","e","e","e","e","e","e","e","e","e",
            "i","i","i","i","i",
            "o","o","o","o","o","o","o","o","o","o","o","o"
        ,"o","o","o","o","o",
            "u","u","u","u","u","u","u","u","u","u","u",
            "y","y","y","y","y",
            "d",
            "A","A","A","A","A","A","A","A","A","A","A","A"
        ,"A","A","A","A","A",
            "E","E","E","E","E","E","E","E","E","E","E",
            "I","I","I","I","I",
            "O","O","O","O","O","O","O","O","O","O","O","O"
        ,"O","O","O","O","O",
            "U","U","U","U","U","U","U","U","U","U","U",
            "Y","Y","Y","Y","Y",
            "D","e","u","a");
        return str_replace($coDau,$khongDau,$str);
    }

    public static function createProductsCsv($file,$products){
        $path =  base_path().'/uploads/csv/reportProduct'.$file.'-'.date('Y-m-d').'.csv';
        $file = fopen($path, 'w');
        fputcsv($file,array('ID','Title','URL','Price','Shortinfo','Variant','View','Images Num','Created at'));
        foreach ($products as $row) {
            $array = array(
                $row->id,
                self::removesign($row->latitle),
                $row->laurl,
                $row->laprice,
                self::removesign($row->lashortinfo),
                $row->lavariant_id,
                $row->laview,
                $row->countimage,
                $row->created_at,
            );
            fputcsv($file, $array);
        }
        fclose($file);

        return $path;
    }

    public function validate($input)
    {

        $rules = array(
            'latitle' => 'Required|Min:3|Max:100',
            'laurl' => 'Required|Unique:laproducts',
        );

        return Validator::make($input, $rules);
    }

    public static function getVariants($id)
    {
        return Product::where("lavariant_id", "=", $id)
            ->where("ladeleted", '!=', '1')
            ->get();
    }

    public static function getProductNews($id)
    {
        return Product::where('laproduct_id', 'like', $id . ',%')
            ->orwhere('laproduct_id', 'like', '%,' . $id . ',%')
            ->orwhere('laproduct_id', '=', 'all')
            ->orwhere('laproduct_id', 'like', '%,' . $id)->get();
    }

}