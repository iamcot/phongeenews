<?php
use Myhelper\UploadHandler;
class UploadController extends  BaseController{


    public function anyCalljupload($cat="")
    {
        $configs = array();
        $configs['upload_dir'] = base_path().'/uploads/'.$cat.'/';
        $configs['upload_url'] = URL::to('/') . '/uploads/'.$cat.'/';
        $configs['no_cache'] = true;
        $configs['image_versions']['medium'] = array(
            'upload_dir' => base_path().'/uploads/medium/'.$cat.'/',
            'upload_url' => URL::to('/') . '/uploads/medium/'.$cat.'/',
            'max_width' => 300,
            'max_height' => 200,
            'crop' => false
        );
        $configs['image_versions']['thumbnail'] = array(
            'upload_dir' => base_path().'/uploads/thumbnails/'.$cat.'/',
            'upload_url' => URL::to('/') . '/uploads/thumbnails/'.$cat.'/',
            'max_width' => 200,
            'max_height' => 200,
            'crop' => false
        );

        $upload_handler = new UploadHandler\UploadHandler($configs,false);
       $content = $upload_handler->uploadpost();
        return Response::json($content);
    }
    public function anyDelpic($cat,$filename,$id=""){
        try{
            if($id!='') {
                $thumbnails = 'uploads/thumbnails/'.$cat.'/' . $id .'/'.$filename;
                $destinationPath = 'uploads/'.$cat.'/' . $id .'/'.$filename;
            }
            else{
                $destinationPath = 'uploads/'.$cat.'/'.$filename;
                $thumbnails = 'uploads/thumbnails/'.$cat.'/'.$filename;
                $medium = 'uploads/medium/'.$cat.'/'.$filename;
            }
            if (file_exists($destinationPath))
                unlink($destinationPath );
            if (file_exists($thumbnails))
                unlink($thumbnails );
            if (file_exists($medium))
                unlink($medium );
            Image::where('lapic','=',$filename)->delete();
            echo '1';
            return;
        }
        catch(\Exception $e){
            echo '0';
            return;
        }

    }
}
