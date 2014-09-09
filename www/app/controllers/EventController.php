<?php
class EventController extends BaseController
{
    private $data = array(
        'typeEnd' => 'event',
        'haveHeader'=> 1,
        'title'=> 'Thái Boutique',
        'sidebartype' => 'none',  //sright - sleft - none

    );
    function __construct(){

    }
    public function getIndex($eventurl = ""){
        if($eventurl==''){
            $event = ShopEvent::where('laactive','1')->orderby('id','DESC')->first();
        }
        else{
            $event = ShopEvent::where('laurl',$eventurl)->first();
        }
        if($event){
            $this->data['event'] = $event;
        }
        else{
            $this->data['event'] = null;
        }
        return View::make(Config::get('shop.theme').'.event.index',$this->data);
    }
}