<?php
use Myhelper\UploadHandler;

class ShopAdminController extends BaseController
{
    private $data = array(
        'typeEnd' => 'admin',
    );

    public function __construct()
    {
        $this->beforeFilter('isadmin');
        $this->beforeFilter('csrf', array('on' => 'post'));
    }

    public function getIndex()
    {
        $this->data['actCat'] = 'home';
        return View::make('admin/start', $this->data);
    }

    public function anyCat($sidecat = "")
    {
        $this->data['actCat'] = 'cat';
        if ($sidecat != "")
            $this->data['sidecat'] = $sidecat;
        else $this->data['sidecat'] = 'view';
        $flag = $this->data['sidecat'];
        $input = Input::all();
        if (isset($input['_token'])) {
            try {
                if ($input['id'] == '')
                    $dbCat = new Category();
                else {
                    $dbCat = Category::find($input['id']);
                    if ($dbCat == null)
                        return Redirect::to('admin/cat');
                }
                $dbCat->latitle = $input['latitle'];
                $dbCat->laurl = $input['laurl'];
                $dbCat->lainfo = $input['lainfo'];
                $dbCat->laparent_id = $input['laparent_id'];
                $dbCat->laorder = $input['laorder'];
                if (isset($input['ladeleted']) && $input['ladeleted'] == 'on')
                    $dbCat->ladeleted = 0;
                else $dbCat->ladeleted = 1;
                if (isset($input['isnews'])){
                    $dbCat->isnews = $input['isnews'];
                }
                else $dbCat->isnews = 0;
                $dbCat->save();

                $id = $dbCat->id;
                $flag = 'view';
                if ($id > 0) {
                    if (Input::hasFile('laimage')) {
                        $file = Input::file('laimage');
                        $destinationPath = 'uploads/cat/' . $id;

                        if (!file_exists($destinationPath)) {
                            mkdir($destinationPath, 0777, true);
                        }
                        $ext = strtolower($file->getClientOriginalExtension());
                        if ($input['id'] > 0) {
                            if (file_exists($destinationPath . '/' . $dbCat->laimage))
                                try {
                                    unlink($destinationPath . '/' . $dbCat->laimage);
                                }
                                catch (Exception $ex) {
                                }
                        }
                        $filename = trim(str_random(32) . '.' . ($ext));
                        $pathupload = $file->move($destinationPath, $filename);
                        if ($pathupload) {
                            $dbCat->find($id);
                            $dbCat->laimage = $filename;
                            $dbCat->save();
                            $flag = 'view';
                        }
                        else {
                            $flag = 'create';
                        }
                    }
                }
                else {
                    $flag = 'create';
                }
            }
            catch (Exception $ex) {
                echo $ex;
            }
        }
        $cats = Category::getCategoriesTree();
        if ($flag == 'view') {
            $this->data['cats'] = Category::adminListCat($cats);
        }
        else {
            $this->data['cats'] = Category::adminSelectCat($cats, false, 0);
        }
        return View::make('admin/cat', $this->data);
    }

    public function getDelcat($id){
        $dbCat = Category::find($id);
        $dbCat->delete();
        return Redirect::to('admin/cat');
    }
    public function getEditcat($id)
    {
        $dbCat = Category::find($id);
        $this->data['actCat'] = 'cat';
        $this->data['sidecat'] = 'create';
        $cats = Category::getCategoriesTree();
        if ($dbCat != null) {
            $this->data['catedit'] = $dbCat;
            $this->data['cats'] = Category::adminSelectCat($cats, false, $dbCat->laparent_id);
        }
        else {
            $this->data['catedit'] = null;
            $this->data['cats'] = Category::adminSelectCat($cats, false, 0);
        }
        return View::make('admin/cat', $this->data);
    }

    public function anyFactor($sidecat = "")
    {
        $this->data['actCat'] = 'factor';
        if ($sidecat != "")
            $this->data['sidecat'] = $sidecat;
        else $this->data['sidecat'] = 'view';
        $flag = $this->data['sidecat'];
        $input = Input::all();
        if (isset($input['_token'])) {
            try {
                if ($input['id'] == '')
                    $dbCat = new Factory();
                else {
                    $dbCat = Factory::find($input['id']);
                    if ($dbCat == null)
                        return Redirect::to('admin/factor');
                }
                $dbCat->latitle = $input['latitle'];
                $dbCat->laurl = $input['laurl'];
                $dbCat->lainfo = $input['lainfo'];
                $dbCat->laorder = $input['laorder'];
                $dbCat->save();

                $id = $dbCat->id;
                $flag = 'view';
                if ($id > 0) {
                    if (Input::hasFile('laimage')) {
                        $file = Input::file('laimage');
                        $destinationPath = 'uploads/factor/' . $id;

                        if (!file_exists($destinationPath)) {
                            mkdir($destinationPath, 0777, true);
                        }
                        $ext = strtolower($file->getClientOriginalExtension());
                        if ($input['id'] > 0 && $dbCat->laimage != '') {
                            if (file_exists($destinationPath . '/' . $dbCat->laimage))
                                unlink($destinationPath . '/' . $dbCat->laimage);
                        }
                        $filename = trim(str_random(32) . '.' . ($ext));
                        $pathupload = $file->move($destinationPath, $filename);
                        if ($pathupload) {
                            $dbCat->find($id);
                            $dbCat->laimage = $filename;
                            $dbCat->save();
                            $flag = 'view';
                        }
                        else {
                            $flag = 'create';
                        }
                    }
                }
                else {
                    $flag = 'create';
                }
            }
            catch (Exception $ex) {
                echo $ex;
            }
        }

        if ($flag == 'view') {
            $cats = Factory::all();
            $this->data['cats'] = $cats;
        }
        else {
        }
        return View::make('admin/factor', $this->data);
    }

    public function getEditfactor($id)
    {
        $dbCat = Factory::find($id);
        $this->data['actCat'] = 'factor';
        $this->data['sidecat'] = 'create';
        if ($dbCat != null) {
            $this->data['catedit'] = $dbCat;
        }
        else {
            $this->data['catedit'] = null;
        }
        return View::make('admin/factor', $this->data);
    }


    public function anyProduct($sidecat = "")
    {
        $this->data['actCat'] = 'product';
        if ($sidecat == '') $sidecat = 'view';
        $flag = $sidecat;
        $input = Input::all();

        if (count($input) > 0 && isset($input['_token']) && !isset($input['filter'])) {

            if ($input['id'] == '') {
                $dbCat = new Product();
                $dbCat->layear = date("Y");
                $dbCat->lamonth = date("m");
            }


            else {
                $dbCat = Product::find($input['id']);
                if ($dbCat == null)
                    return Redirect::to('admin/product');
            }
            $dbCat->latitle = $input['latitle'];
            $dbCat->laurl = $input['laurl'];
            $dbCat->lakeyword = $input['lakeyword'];
            $dbCat->lashortinfo = $input['lashortinfo'];
            $dbCat->lauseguide = $input['lauseguide'];
            $dbCat->laoldprice = $input['laoldprice'];
            $dbCat->laprice = $input['laprice'];
            $dbCat->laamount = $input['laamount'];
            $dbCat->ladatenew = strtotime($input['ladatenew']);
            $dbCat->lainfo = $input['lainfo'];
            $dbCat->lacategory_id = $input['lacategory_id'];
            $dbCat->lakhoiluong = $input['lakhoiluong'];
            $dbCat->ladungtich = $input['ladungtich'];
            $dbCat->lachucnang = $input['lachucnang'];
            $dbCat->lavariant_id = $input['lavariant_id'];
            $dbCat->laproduct_id = $input['laproduct_id'];
            $dbCat->youtubeid = $input['youtubeid'];
            $dbCat->lamanufactor_id = $input['lamanufactor_id'];
            if (isset($input['ladeleted']) && $input['ladeleted'] == 'on')
                $dbCat->ladeleted = 0;
            else $dbCat->ladeleted = 1;
            if ($input['latitle'] != '') {
                $dbCat->save();

                $id = $dbCat->id;
                $flag = 'view';
                if ($id > 0) {
                    $dbCat->find($id);
                    if (isset($input['laimage']))
                        $dbCat->laimage = $input['laimage'];
                    else $dbCat->laimage="";
                    if (isset($input['laimage2']))
                        $dbCat->laimage2 = $input['laimage2'];
                    else $dbCat->laimage2="";
                    $dbCat->save();
                    for ($i = 0; $i < $input['currmorepic']; $i++) {
                        if (isset($input['morepic' . $i]) && $input['morepic' . $i] != '' && $input['mprepictype' . $i] == 'new') {
                            $dbImg = new Image();
                            $dbImg->latitle = $input['morepictext' . $i];
                            $dbImg->lapic = $input['morepic' . $i];
                            if(isset($input['morepicorder'.$i]))
                                $dbImg->laorder = $input['morepicorder'.$i];
                            $dbImg->laproduct_id = $id;
                            $dbImg->save();
                        }
                        else if(isset($input['morepic' . $i]) && $input['mprepictype' . $i] == 'old' && isset($input['morepicorder'.$i])){
                            $dbImg = Image::where('lapic',$input['morepic' . $i])->update(array('laorder'=>$input['morepicorder'.$i]));
                        }
                    }
                    $flag = 'view';
                }
            }
            else {
                $this->data['notice'] = 'Lỗi nhập liệu';
                $flag = 'create';
            }

        }
        $cats = Category::getCategoriesTree();
        $this->data['factors'] = Factory::adminSelectFactor();
        if ($flag == 'view') {
            if(!isset($input['filtercat']))  $input['filtercat'] = 'all';
            $this->data['cats'] = Category::adminSelectCat($cats, true,$input['filtercat']);
            $this->data['products'] = Product::adminViewProduct($input);
        }
        else {
//            $upload_handler = new UploadHandler\UploadHandler();
            $this->data['cats'] = Category::adminSelectCat($cats, true);
        }
        $this->data['sidecat'] = $flag;
        $this->data['variant'] = 0;
        if(isset($input['export'])) {
            $filter = (isset($input['filtercat'])?'-cat-'.$input['filtercat']:'').(isset($input['filter'])?'-filter-'.$input['filter']:'');
            return Response::download(Product::createProductsCsv($filter,$this->data['products']));
        }
        else{
            return View::make('admin/product', $this->data);
        }
    }

    public function getEditproduct($id, $variant = 0)
    {
        if ($variant == 0)
        {
            $dbCat = Product::find($id);
        }
        else if ($variant == 1)
        {
            $dbCat = Vproduct::find($id);
        }
        $this->data['actCat'] = 'product';
        $this->data['sidecat'] = 'create';
        $this->data['variant'] = $variant;
        $cats = Category::getCategoriesTree();
        if ($dbCat != null) {
            $this->data['catedit'] = $dbCat;
//            $dbCat->ladatenew = date("d/m/Y", $dbCat->ladatenew);
            $this->data['cats'] = Category::adminSelectCat($cats, true, $dbCat->lacategory_id);
            $this->data['factors'] = Factory::adminSelectFactor($dbCat->lamanufactor_id);
            $this->data['morepics'] = Image::where('laproduct_id', '=', $dbCat->id)->get();
        }
        else {
            $this->data['catedit'] = null;
            $this->data['cats'] = Category::adminSelectCat($cats, true, 0);
            $this->data['factors'] = Factory::adminSelectFactor(0);

        }
        return View::make('admin/product', $this->data);
    }


    public function anyOrder()
    {
        $this->data['actCat'] = 'order';
        $this->data['oOrders'] = Orders::orderBy('order_status')->orderBy('id', 'desc')->paginate(Config::get('shop.tablepp'));
        return View::make('admin/order', $this->data);
    }

    public function getSavetrackid($orderid, $val)
    {
        $order = Orders::find($orderid);
        $order->latrackid = $val;
        echo $order->save();
    }

    public function getChangeorderstatus($orderid, $status)
    {
        $order = Orders::find($orderid);
        $order->order_status = $status;
        $order->save();
        echo '<span class="label label-' . Config::get('shop.orderstatus.' . $status . '.color') . '">' . Config::get('shop.orderstatus.' . $order->order_status . '.value') . '</span>';
    }

    public function getVieworderdetails($orderid)
    {
        $data['orderitems'] = Orderitem::where('order_id', $orderid)->get();
        return Response::view('admin/orderitems', $data);
    }

    public function anyUser()
    {
        $this->data['actCat'] = 'user';
        $this->data['aUsers'] = User::paginate(Config::get('shop.tablepp'));
        return View::make('admin/user', $this->data);
    }

    public function anyFanpage($id = '')
    {
        $this->data['actCat'] = 'fanpage';
        if ($id != '') {
            $input = Input::all();
            if (count($input)) {
                if (isset($input['getmore'])) {
                    $url = 'https://www.facebook.com/plugins/fan.php?connections=100&id=' . $id;
                    $context = stream_context_create(array('http' => array('header' => 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:22.0) Gecko/20100101 Firefox/22.0')));
                    $like_html = file_get_contents($url, false, $context);
                    preg_match_all('{href="https://www\.facebook\.com/([a-zA-Z0-9._-]+)" data-jsid="anchor" target="_blank"}', $like_html, $matches);
                    if (empty($matches[1])) {
                    }
                    else {
                        foreach ($matches[1] as $info) {
                            try {
                                $db = Facebookuser::where("username", $info)->where("fanpage_id", $id)->get();
                                if (count($db) <= 0) {
                                    $user_data = json_decode(file_get_contents('https://graph.facebook.com/' . $info), true);
                                    if (isset($user_data['id']) && $user_data['id'] != '') {
                                        $arr = array(
                                            'facebookname' => $user_data['name'],
                                            'facebookid' => $user_data['id'],
                                            'gender' => $user_data['gender'],
                                            'locale' => $user_data['locale'],
                                            'username' => $user_data['username'],
                                            'fanpage_id' => $id,
                                        );
                                        Facebookuser::create($arr);
                                    }
                                }
                            }
                            catch (\Exception $e) {

                            }
                        }
                    }
                }
            }
            $fanpage = Fanpage::where("pageid", $id)->get();
            $this->data['fanpage'] = $fanpage[0];
            $this->data['sumfan'] = Facebookuser::where('fanpage_id', $id)->count();
            $this->data['users'] = Facebookuser::where('fanpage_id', $id)->orderBy('id', 'DESC')->paginate(Config::get('shop.tablepp'));

        }
        else {
            $this->data['sumfan'] = 0;
            $this->data['fanpage'] = null;
            $this->data['users'] = array();
        }

        return View::make('admin/fanpage', $this->data);
    }

    public function anyGetfanmember()
    {
        /*
         $matches = array();
    $url = 'http://www.facebook.com/plugins/fan.php?connections=100&id=' . $fanpage_data['id'];
    $context = stream_context_create(array('http' => array('header' => 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:22.0) Gecko/20100101 Firefox/22.0')));
    for($a = 0; $a < $no_of_retries; $a++){
        $like_html = file_get_contents($url, false, $context);
        preg_match_all('{href="http://www\.facebook\.com/([a-zA-Z0-9._-]+)" data-jsid="anchor" target="_blank"}', $like_html, $matches);
        if(empty($matches[1])){
            // failed to fetch any fans - convert returning array, cause it might be not empty
            return array_keys($ret);
        }else{
            // merge profiles as array keys so they will stay unique
            $ret = array_merge($ret, array_flip($matches[1]));
        }
        // don't get banned as flooder
        usleep($pause);
    }
         */
    }

    public function anySavefanpage($pageusername)
    {
        $fanpage_data = json_decode(file_get_contents('https://graph.facebook.com/' . $pageusername), true);
        if (empty($fanpage_data['id'])) {
            echo -1;
        }
        else {
            $page = Fanpage::where("pageid", $fanpage_data['id'])->get();
            if (count($page) > 0) {
                $find = Fanpage::find($page[0]->id);
                $find->likes = $fanpage_data['likes'];
                echo $find->save();
                return;
            }
            else {
                $arr = array(
                    'pageid' => $fanpage_data['id'],
                    'pageusername' => $fanpage_data['username'],
                    'pagename' => $fanpage_data['name'],
                    'likes' => $fanpage_data['likes'],
                    'category' => $fanpage_data['category'],
                    'about' => $fanpage_data['about'],
                );
                $fanpage = Fanpage::create($arr);
                echo $fanpage->id;
            }

        }
    }

    public function anyLoadfanpage()
    {
        $data['fanpage'] = Fanpage::all();
        return Response::view('admin/fanpagelist', $data);
    }

    public function getChangepass($id)
    {
        $user = User::find($id);
        if ($user != null) {
            $user->password = Hash::make('' . Input::get('password'));
            $user->save();
            echo 1;
        }
        else echo 0;
    }

    public function getCreateuser()
    {
        $user = new User();
        $user->username = Input::get('username');
        $user->password = Hash::make('' . Input::get('username'));
        $user->larole = Input::get('larole');
        $user->lafullname = Input::get('lafullname');
        $user->laemail = Input::get('laemail');
        echo $user->save();
    }

    public function anyConfig()
    {
        $this->data['actCat'] = 'config';
        $input = Input::all();
        if (count($input) > 0 && isset($input['_token'])) {
            //save slider id
            $db = Myconfig::where('lavar', '=', 'sliderid')->get();
            $count = $db->count();
            if ($count == 0) {
                $db = new Myconfig();
                $db->lavar = 'sliderid';
            }
            else {
                $first = $db[0];
                $db = Myconfig::find($first->id);
            }
            $db->lavalue = $input['sliderid'];
            $db->save();
            //save sliderorder
            $db = Myconfig::where('lavar', '=', 'sliderorder')->get();
            $count = $db->count();
            if ($count == 0) {
                $db = new Myconfig();
                $db->lavar = 'sliderorder';
            }
            else {
                $first = $db[0];
                $db = Myconfig::find($first->id);
            }
            $db->lavalue = $input['sliderorder'];
            $db->save();
            //save stores
            $db = Myconfig::where('lavar', '=', 'store')->get();
            $count = $db->count();
            if ($count == 0) {
                $db = new Myconfig();
                $db->lavar = 'store';
            }
            else {
                $first = $db[0];
                $db = Myconfig::find($first->id);
            }
            $db->lavalue = $input['liststore'];
            $db->save();

        }
        $this->data['sliderid'] = Myconfig::where('lavar', '=', 'sliderid')->first();
        $this->data['sliderorder'] = Myconfig::where('lavar', '=', 'sliderorder')->first();
        $this->data['stores'] = Myconfig::where('lavar', '=', 'store')->first();
        return View::make('admin/config', $this->data);
    }

    public function anyComment()
    {
        $this->data['actCat'] = 'comment';
        $this->data['aComments'] = Facebookcomment::orderBy('id', 'desc')->paginate(Config::get('shop.tablepp'));
        return View::make('admin/comment', $this->data);
    }
    public function anyEvent()
    {
        $this->data['actCat'] = 'event';
        $this->data['aComments'] = ShopEvent::all();
        return View::make('admin/event', $this->data);
    }
    public function getLoadevent(){
        return ShopEvent::all()->tojson();
    }
    public function getLoadeventpic($eventid){
        return Image::where('laevent',$eventid)->get()->toJson();
    }
    public function postSaveevent(){
        $event = Input::get('event');
        $piclist = Input::get('pic');

        if($event['laactive']){
            ShopEvent::where('laactive','1')->update(array('laactive'=>'0'));
        }
        if($event['id'] > 0){
            echo ShopEvent::find($event['id'])->update($event);
        }
        else{
            $newevent = ShopEvent::create($event);
            echo $newevent->id;
            $event['id'] = $newevent->id;
        }
        if($event['id']>0){
            foreach($piclist as $pic) {
                $img = Image::where('lapic',$pic['name'])->first();
                if(count($img)==0){
                    if(!isset($pic['latitle'])) $pic['latitle'] = '';
                    Image::create(array('lapic'=>$pic['name'],'laevent'=>$event['id'],'latitle'=>$pic['latitle']));
                }
            }

        }

    }
    public function anySearchproduct(){
        $key = Input::get('search');
        $product = Product::where('latitle','like','%'.$key.'%')->limit(10)->get();
        if(count($product) > 0) return $product->toJson();
        else return null;
    }
    public function postSaveorder(){
        $input = Input::get('order');
        if($input){
            $orderinfo = array(
                'laordername' => $input['name'],
                'laordertel' => $input['sdt'],
                'laorderaddr' => $input['address'],
                'lapayment' => $input['lapayment'],
                'loaihang' => $input['loaihang'],
                'sumsanpham' => $input['sum'],
                'laordernote' => 'from_admin',
                'user_id' => Auth::user()->id,
            );

            $editorder = false;
            if(isset($input['id']) && $input['id']!=''){
                $order = Orders::find($input['id']);
                $order->update($orderinfo);
                $editorder = true;
            }
            else{
                $order = Orders::create($orderinfo);
            }
            if($order){
                //delete all order item if edit
                if($editorder){
                    Orderitem::where('order_id',$order->id)->delete();
                }
                $rs = 0;
                foreach($input['orderitems'] as $item){
                    $cart = array(
                        'product_id' => $item['id'],
                        'latitle' => $item['title'],
                        'amount' => $item['amount'],
                        'laprice' => $item['price'],
                        'variantname' => $item['varname'],
//                        'caturl' => $input['caturl'],
                        'producturl' => $item['url'],
//                        'variantid' => $product->lavariant_id,
                        'laimage' => $item['image'],
                        'order_id' => $order->id,
                    );
                    $cartitem = Orderitem::create($cart);
                    if($cartitem) $rs++;
                }
                if ($rs == count($input['orderitems'])) echo 1;
                else echo -2;
            }
            else{
                echo -1;
            }
        }
        else echo 0;
    }
    public function getOrderjx($id){
        $order = Orders::find($id)->toArray();;
        $data = array();
        if($order){
            $data['order'] = $order;
            $orderitems = Orderitem::where('order_id',$id)->get()->toArray();
            $data['orderitem'] = $orderitems;
        }
        return Response::json($data);
    }
}