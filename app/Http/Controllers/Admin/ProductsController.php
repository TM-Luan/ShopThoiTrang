<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductVariant; // Nhớ use Model mới
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function index(){
        $products = new Product();
        $data = $products->all();
        return view('admin/products/products', ['products' => $data]);
    }

    public function add(){
        $category = new Category();
        $cat = $category->all();
        return view('admin/products/add', ['categories'=>$cat]);
    }

    public function insert(Request $request){
        // 1. Xử lý upload ảnh
        if (request()->hasFile('image')){
            $imageName = $request->file('image')->getClientOriginalName();
            $uploadedImage = $request->file('image');
            $destinationPath = public_path('upload/products/');
            $uploadedImage->move($destinationPath, $imageName);
        } else {
            $imageName = 'no-image.jpg'; // Mặc định nếu không up ảnh
        }

        // 2. Tạo thông tin cơ bản (Information chuỗi)
        // Lấy tên các trường mới từ form (chat_lieu, kieu_dang...)
        $chat_lieu = $request->input('chat_lieu');
        $kieu_dang = $request->input('kieu_dang');
        $xuat_xu = $request->input('xuat_xu');
        $khac = $request->input('thong_tin_khac');
        $information = $chat_lieu.'|'.$kieu_dang.'|'.$xuat_xu.'|'.$khac;

        // 3. Tính tổng tồn kho từ các biến thể
        $totalAvailability = 0;
        if($request->has('variant_quantity')){
            $totalAvailability = array_sum($request->variant_quantity);
        }

        // 4. Lưu bảng Product trước
        $newProduct = Product::create([
            'image' => $imageName,
            'name' => $request->input('name'),
            'price' => $request->input('price'),
            'discount' => $request->input('discount') ?? 0,
            'availability' => $totalAvailability, // Tự động cộng tổng
            'short_description' => $request->input('short_description'),
            'catalog_id' => $request->input('catalog_id'),
            'description' => $request->input('description'),
            'information' => $information,
            'image_list' => '',
            'view' => 0,
            'outstanding' => $request->input('outstanding') ?? 0
        ]);

        // 5. Lưu bảng ProductVariant (Size/Màu)
        if ($newProduct && $request->has('variant_size')) {
            $sizes = $request->variant_size;
            $colors = $request->variant_color;
            $quantities = $request->variant_quantity;

            for ($i = 0; $i < count($sizes); $i++) {
                if (!empty($sizes[$i]) && !empty($colors[$i])) {
                    ProductVariant::create([
                        'product_id' => $newProduct->id,
                        'size' => $sizes[$i],
                        'color' => $colors[$i],
                        'quantity' => $quantities[$i],
                        'sku' => $newProduct->id . '-' . $sizes[$i] . '-' . $i // Tạo mã SKU tự động
                    ]);
                }
            }
        }

        toast('Thêm sản phẩm thành công!','success');
        return redirect('/admin/products');
    }

    public function edit($id){
        $category = new Category();
        $cat = $category->all();
        // Lấy sản phẩm kèm theo các biến thể của nó
        $product = Product::with('variants')->find($id);
        return view('admin/products/edit',['product'=>$product, 'categories'=>$cat]);
    }

    public function update(Request $request, $id){
        // 1. Xử lý ảnh
        if (request()->hasFile('image')){
            $imageName = $request->file('image')->getClientOriginalName();
            $request->file('image')->move(public_path('upload/products/'), $imageName);
        } else {
            $imageName = $request->input('old_image');
        }

        // 2. Xử lý thông tin
        $chat_lieu = $request->input('chat_lieu');
        $kieu_dang = $request->input('kieu_dang');
        $xuat_xu = $request->input('xuat_xu');
        $khac = $request->input('thong_tin_khac');
        $information = $chat_lieu.'|'.$kieu_dang.'|'.$xuat_xu.'|'.$khac;

        // 3. Cập nhật bảng Product
        $product = Product::find($id);
        $product->name = $request->input('name');
        $product->price = $request->input('price');
        $product->discount = $request->input('discount');
        $product->image = $imageName;
        $product->short_description = $request->input('short_description');
        $product->description = $request->input('description');
        $product->information = $information;
        $product->outstanding = $request->input('outstanding') ?? 0;
        $product->catalog_id = $request->input('catalog_id');
        
        // 4. Xử lý cập nhật Biến thể (Cách đơn giản: Xóa cũ -> Thêm mới)
        if ($request->has('variant_size')) {
            // Xóa hết biến thể cũ
            ProductVariant::where('product_id', $id)->delete();

            $sizes = $request->variant_size;
            $colors = $request->variant_color;
            $quantities = $request->variant_quantity;
            $totalQty = 0;

            for ($i = 0; $i < count($sizes); $i++) {
                if (!empty($sizes[$i]) && !empty($colors[$i])) {
                    ProductVariant::create([
                        'product_id' => $id,
                        'size' => $sizes[$i],
                        'color' => $colors[$i],
                        'quantity' => $quantities[$i],
                        'sku' => $id . '-' . $sizes[$i] . '-' . $i
                    ]);
                    $totalQty += $quantities[$i];
                }
            }
            // Cập nhật lại tổng tồn kho
            $product->availability = $totalQty;
        }

        $product->save();
        toast('Cập nhật thành công!','success');
        return redirect('/admin/products/edit/'.$id);
    }

    public function delete(Request $request){
        if($request->destroy == 1){
            // Xóa cứng: Cần xóa biến thể trước (nhưng mình đã cài ON DELETE CASCADE ở SQL nên DB tự xóa)
            $product = new Product();
            $product->withTrashed()->where('id', $request->id)->forceDelete();
        }else{
            // Xóa mềm
            $product = Product::find($request->id);
            if($product) $product->delete();
        }
        toast('Xóa thành công!','success');
        return redirect('/admin/products');
    }
}