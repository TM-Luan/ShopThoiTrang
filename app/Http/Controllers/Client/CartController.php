<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Bill;
use App\Models\Cart;
use App\Models\Category;
use App\Models\Detail_Bill;
use App\Models\Product;
use App\Models\User;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use App\Mail\OrderMail;

class CartController extends Controller
{
    public function index()
    {
        $cart = '';
        if(Auth::user()){
            $cart = Cart::where('id_user', '=', Auth::user()->id)->get();
        }
        return view('client/cart/cart', [
            'cart' => $cart
        ]);
    }

    public function addToCart($id)
    {
        // Lấy size và màu từ request (URL query params)
        $size = request()->input('size', 'M'); // Mặc định là M nếu không chọn
        $color = request()->input('color', 'Mặc định');

        $product = Product::findOrFail($id);
        $price = $product->price;
        if($product->discount > 0){
            $price = $price - (($price * $product->discount) / 100);
        }

        // --- XỬ LÝ DATABASE (NẾU ĐÃ LOGIN) ---
        if(!empty(Auth::user())){
            // Tìm sản phẩm trong giỏ có cùng ID, cùng Size và cùng Màu
            $existingCart = Cart::where('id_user', Auth::user()->id)
                                ->where('id_product', $id)
                                ->where('size', $size)
                                ->where('color', $color)
                                ->first();

            if($existingCart){
                // Nếu đã có -> cộng dồn số lượng
                $existingCart->quantity += 1;
                $existingCart->save();
            } else {
                // Chưa có -> Tạo mới
                Cart::create([
                    'id_product' => $id,
                    'name' => $product->name,
                    'quantity' => 1,
                    'image' => $product->image,
                    'price' => $price,
                    'id_user' => Auth::user()->id,
                    'size' => $size,   // Lưu size
                    'color' => $color  // Lưu màu
                ]);
            }
        }

        // --- XỬ LÝ SESSION (CHO KHÁCH VÃNG LAI HOẶC HIỂN THỊ) ---
        $cart = session()->get('cart', []);
        
        // Tạo Key duy nhất cho sản phẩm + biến thể (Ví dụ: 10_L_Red)
        $cartKey = $id . '_' . $size . '_' . $color;

        if (isset($cart[$cartKey])) {
            $cart[$cartKey]['quantity']++;
        } else {
            $cart[$cartKey] = [
                "id_product" => $id, // Lưu thêm id gốc để dùng khi cần
                "name" => $product->name,
                "quantity" => 1,
                "price" => $price,
                "image" => $product->image,
                "size" => $size,
                "color" => $color
            ];
        }
        session()->put('cart', $cart);
        
        alert()->success('Thông báo!','Thêm sản phẩm vào giỏ hàng thành công!');
        return redirect()->back();
    }

    public function update(Request $request)
    {
        // $request->id bây giờ có thể là cartKey (session) hoặc id trong DB
        if ($request->id && $request->quantity) {
            $cart = session()->get('cart');
            
            // Cập nhật Session
            if (isset($cart[$request->id])) {
                $cart[$request->id]["quantity"] = $request->quantity;
                session()->put('cart', $cart);
            }

            // Cập nhật Database (Nếu login)
            if(!empty(Auth::user())){
                // $request->id ở đây nếu gọi từ view có thể là ID của dòng trong bảng Cart
                // Hoặc chúng ta cần logic tìm kiếm chính xác. 
                // Để đơn giản cho view hiện tại:
                // Nếu User login, view sẽ render ID của bảng Cart vào data-id, nên ta tìm theo ID bảng Cart
                $cartItem = Cart::find($request->id); 
                if ($cartItem && $cartItem->id_user == Auth::user()->id) {
                     $cartItem->quantity = $request->quantity;
                     $cartItem->save();
                }
            }
            alert()->success('Thông báo!','Cập nhật giỏ hàng thành công!');
        }
    }

    public function remove(Request $request)
    {
        if ($request->id) {
            $cart = session()->get('cart');
            // Xóa Session
            if (isset($cart[$request->id])) {
                unset($cart[$request->id]);
                session()->put('cart', $cart);
            }

            // Xóa Database
            if(!empty(Auth::user())){
                // Tìm theo ID chính của bảng cart (được truyền từ view)
                $cartItem = Cart::find($request->id);
                 if ($cartItem && $cartItem->id_user == Auth::user()->id) {
                     $cartItem->forceDelete();
                 }
            }
            alert()->success('Thông báo!','Xóa sản phẩm thành công!');
        }
    }

    public function checkout()
    {
        $user = '';
        if(!empty(Auth::user())){
            $user = User::where('id', '=', Auth::user()->id)->get();
        }
        $categories = new Category();
        $cate = $categories->all(array('name', 'id'));
        $cart = '';
        if(Auth::user()){
            $cart = Cart::where('id_user', '=', Auth::user()->id)->get();
        }
        return view('client/cart/checkout', [
            'user' => $user,
            'cart' => $cart
        ]);
    }
    
    public function addWishlist($id)
    {
        if (!Auth::check()) {
            alert()->error('Thông báo!','Vui lòng đăng nhập để sử dụng tính năng này!');
            return redirect()->back();
        }

        $userId = Auth::id(); 
        $productId = $id;

        $exists = Wishlist::where('id_user', $userId)
                          ->where('id_product', $productId)
                          ->first();

        if ($exists) {
            return redirect()->back()->with('status', 'Sản phẩm đã có trong Wishlist của bạn!');
        }

        Wishlist::create([
            'id_product' => $productId,
            'id_user' => $userId,
        ]);

        session()->put('countW', session('countW') + 1);

        alert()->success('Thông báo!','Thêm sản phẩm vào Wishlist thành công!');
        return redirect()->back();
    }

    public function wishlist(){
        if(Auth::check()){
            $categories = new Category();
            $cate = $categories->all(array('name', 'id'));

            $list = Wishlist::where('id_user', '=', Auth::id())->get();

            $wishlist = [];
            foreach ($list as $item){
                $wishlist[$item->id] = Product::find($item->id_product);
            }

            return view('client/wishlist', [
                'categories' => $cate,
                'wishlist'=>$wishlist
            ]);

        }else{
            alert()->error('Thông báo!','Vui lòng đăng nhập để sử dụng tính năng này!');
            return redirect()->back();
        }
    }

    public function wishlistRemove($id){
        if (Auth::check()) {
            Wishlist::where('id', '=', $id)
                    ->where('id_user', '=', Auth::id())
                    ->forceDelete();
            
            session()->put('countW', session('countW') - 1);
            alert()->success('Thông báo!','Xóa sản phẩm trong wishlist thành công!');
            return redirect()->back();
        }
        return redirect()->back(); 
    }

    public function payment(Request $request){
        $order = session()->get('order', []);
        $order = [
            "name" => $request->input('name'),
            "email" => $request->input('email'),
            "phone" => $request->input('phone'),
            "address" => $request->input('address'),
            "note" => $request->input('note'),
            "count" => $request->input('count'),
            "total" => $request->input('total'),
        ];
        session()->put('order', $order);

        // THANH TOÁN COD
        if($request->input('order') == 1){
            $order = session()->get('order');
            $name = $order['name'];
            $email = $order['email'];
            $phone = $order['phone'];
            $address = $order['address'];
            $note = $order['note'];
            $count = $order['count'];
            $payment_status = 'Chưa thanh toán';
            $delivery_status = 'Chưa giao hàng';
            $price_to_pay = $order['total'];
            $bill = new Bill();
            $max_bill = $bill->max('id');
            $id_order = 'DH'.date("Y").($max_bill+1);
            $id_user = '';
            if(!empty(Auth::user())) {
                $id_user = Auth::user()->id;
            }
                $bill_ID =
                    Bill::create(array(
                            'id_order'=>$id_order,
                            'name'=>$name,
                            'email'=>$email,
                            'phone'=>$phone,
                            'address'=>$address,
                            'note'=>$note,
                            'count'=>$count,
                            'total'=>$price_to_pay,
                            'payment_status'=>$payment_status,
                            'delivery_status'=>$delivery_status,
                            'id_user'=>$id_user,
                        )
                    );
            if ($bill_ID) {
                // Lấy dữ liệu giỏ hàng để lưu chi tiết
                // Ưu tiên lấy từ DB nếu đăng nhập để chính xác nhất
                if(!empty(Auth::user())){
                     $cartItems = Cart::where('id_user', Auth::user()->id)->get();
                     foreach ($cartItems as $item) {
                        Detail_Bill::create(array(
                                'name' => $item->name,
                                'quantity' => $item->quantity,
                                'price' => $item->price,
                                'image' => $item->image,
                                'id_order' => $id_order,
                                'size' => $item->size,   // Lưu size
                                'color' => $item->color  // Lưu color
                            )
                        );
                    }
                    // Xóa giỏ DB
                    Cart::where('id_user', Auth::user()->id)->forceDelete();

                } else {
                    // Lấy từ Session
                    $cart = session()->get('cart', []);
                    foreach ($cart as $item) {
                        Detail_Bill::create(array(
                                'name' => $item['name'],
                                'quantity' => $item['quantity'],
                                'price' => $item['price'],
                                'image' => $item['image'],
                                'id_order' => $id_order,
                                'size' => isset($item['size']) ? $item['size'] : 'N/A',
                                'color' => isset($item['color']) ? $item['color'] : 'N/A'
                            )
                        );
                    }
                }

                // Xóa Session Cart
                session()->forget('cart');

                $data_detail_bill = Detail_Bill::where('id_order', '=', $id_order)->get();
                $data_bill = Bill::where('id_order', '=', $id_order)->get();
                Mail::to($request->input('email'))->send(new OrderMail($data_bill, $data_detail_bill));
                alert()->success('Thông báo!','Đặt hàng thành công!');
                return view('/client/cart/result', [
                    'detail_bill' => $data_detail_bill,
                    'bill' => $data_bill
                ]);
            }
        }else{
            // THANH TOÁN VNPAY (GIỮ NGUYÊN CODE CŨ)
            $total_price = $request->input('total');
            $price_to_pay = $total_price * 10;
            error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
            $vnp_TmnCode = "ZVYN925E"; 
            $vnp_HashSecret = "TJAPLVJKGQGEAKISHNHFBREVGCWMLWCW"; 
            $vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
            $vnp_Returnurl = "http://127.0.0.1:8000/return";
            $vnp_TxnRef = date("YmdHis"); 
            $vnp_OrderInfo = 'Thanh toán đơn hàng';
            $vnp_OrderType = 'billpayment';
            $vnp_Amount = $total_price * 100000;
            $vnp_Locale = 'vn';
            $vnp_BankCode = 'NCB';
            $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];
            $inputData = array(
                "vnp_Version" => "2.0.0",
                "vnp_TmnCode" => $vnp_TmnCode,
                "vnp_Amount" => $vnp_Amount,
                "vnp_Command" => "pay",
                "vnp_CreateDate" => date('YmdHis'),
                "vnp_CurrCode" => "VND",
                "vnp_IpAddr" => $vnp_IpAddr,
                "vnp_Locale" => $vnp_Locale,
                "vnp_OrderInfo" => $vnp_OrderInfo,
                "vnp_OrderType" => $vnp_OrderType,
                "vnp_ReturnUrl" => $vnp_Returnurl,
                "vnp_TxnRef" => $vnp_TxnRef,
            );
            if (isset($vnp_BankCode) && $vnp_BankCode != "") {
                $inputData['vnp_BankCode'] = $vnp_BankCode;
            }
            ksort($inputData);
            $query = "";
            $i = 0;
            $hashdata = "";
            foreach ($inputData as $key => $value) {
                if ($i == 1) {
                    $hashdata .= '&' . $key . "=" . $value;
                } else {
                    $hashdata .= $key . "=" . $value;
                    $i = 1;
                }
                $query .= urlencode($key) . "=" . urlencode($value) . '&';
            }
            $vnp_Url = $vnp_Url . "?" . $query;
            if (isset($vnp_HashSecret)) {
                $vnpSecureHash = hash('sha256', $vnp_HashSecret . $hashdata);
                $vnp_Url .= 'vnp_SecureHashType=SHA256&vnp_SecureHash=' . $vnpSecureHash;
            }
            return redirect($vnp_Url);
        }
    }

    public function return(){
        // XỬ LÝ TRẢ VỀ VNPAY
        // Logic tương tự Payment COD: Cần thêm size/color vào Detail_Bill
        $order = session()->get('order');
        $name = $order['name'];
        $email = $order['email'];
        $phone = $order['phone'];
        $address = $order['address'];
        $note = $order['note'];
        $count = $order['count'];
        $payment_status = 'Đã thanh toán';
        $delivery_status = 'Chưa giao hàng';
        $price_to_pay = $order['total'];
        
        $vnp_ResponseCode = $_GET['vnp_ResponseCode'];
        if ($vnp_ResponseCode == 00) {
            $bill = new Bill();
            $max_bill = $bill->max('id');
            $id_order = 'DH'.date("Y").($max_bill+1);
            $id_user = '';
            if(!empty(Auth::user())) {
                $id_user = Auth::user()->id;
            }
            $bill_ID = Bill::create(array(
                        'id_order'=>$id_order,
                        'name'=>$name,
                        'email'=>$email,
                        'phone'=>$phone,
                        'address'=>$address,
                        'note'=>$note,
                        'count'=>$count,
                        'total'=>$price_to_pay,
                        'payment_status'=>$payment_status,
                        'delivery_status'=>$delivery_status,
                        'id_user'=>$id_user,
                    ));

            if ($bill_ID) {
                // LƯU CHI TIẾT
                if(!empty(Auth::user())){
                     $cartItems = Cart::where('id_user', Auth::user()->id)->get();
                     foreach ($cartItems as $item) {
                        Detail_Bill::create(array(
                                'name' => $item->name,
                                'quantity' => $item->quantity,
                                'price' => $item->price,
                                'image' => $item->image,
                                'id_order' => $id_order,
                                'size' => $item->size,
                                'color' => $item->color
                            )
                        );
                    }
                    Cart::where('id_user', Auth::user()->id)->forceDelete();
                } else {
                    $cart = session()->get('cart', []);
                    foreach ($cart as $item) {
                        Detail_Bill::create(array(
                                'name'=>$item['name'],
                                'quantity'=>$item['quantity'],
                                'price'=>$item['price'],
                                'image'=>$item['image'],
                                'id_order'=>$id_order,
                                'size' => isset($item['size']) ? $item['size'] : 'N/A',
                                'color' => isset($item['color']) ? $item['color'] : 'N/A'
                            )
                        );
                    }
                }
                session()->forget('cart');

                $categories = new Category();
                $data = $categories->all(array('name', 'id'));
                $data_detail_bill = Detail_Bill::where('id_order', '=', $id_order)->get();
                $data_bill = Bill::where('id_order', '=', $id_order)->get();
                Mail::to($email)->send(new OrderMail($data_bill, $data_detail_bill));
                alert()->success('Thông báo!','Đặt hàng và thanh toán thành công!');
                return view('/client/cart/result', [
                    'detail_bill'=>$data_detail_bill,
                    'bill' => $data_bill,
                    'categories' => $data,
                ]);
            } else {
                alert()->success('Thông báo!','Đặt hàng và thanh toán thất bại!');
                return redirect('/cart');
            }
        }
        else {
            alert()->success('Thông báo!','Đặt hàng và thanh toán thất bại!');
            return redirect('/cart');
        }
    }
}