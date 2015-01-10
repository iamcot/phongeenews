<?php
class Product extends Eloquent
{
    protected $table = 'laproducts';

    public static function adminViewProduct($input)
    {
        $products = DB::table('v_productsadmin')
            ->leftJoin('lacategories', 'lacategories.id', '=', 'v_productsadmin.lacategory_id')
            ->leftJoin('lamanufactors', 'v_productsadmin.lamanufactor_id', '=', 'lamanufactors.id')
            ->select('v_productsadmin.*', 'lacategories.latitle as catname', 'lamanufactors.latitle as factorname');
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

    public static function createProductsCsv($file,$products){
        $path =  base_path().'/uploads/csv/reportProduct'.$file.'-'.date('Y-m-d').'.csv';
        $file = fopen($path, 'w');
        header("Content-Type: text/csv; charset=UTF-8");
        fputcsv($file,array('ID','Title','URL','Price','Shortinfo','Variant','View'));
        foreach ($products as $row) {
            $array = array(
                $row->id,
                $row->latitle,
                $row->laurl,
                $row->laprice,
                $row->lashortinfo,
                $row->lavariant_id,
                $row->laview,
            );
            header("Content-Type: text/csv; charset=UTF-8");
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