<?php

namespace App\Http\Controllers\Client;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function index(Request $request){
    // 1. Lấy danh mục
    $categories = Category::all(['name', 'id']);
    
    // --- THÊM DÒNG NÀY: Lấy giá cao nhất trong bảng products ---
    $max_price = Product::max('price'); 
    // Nếu chưa có sản phẩm nào, gán mặc định là 5 triệu để tránh lỗi
    $max_price = $max_price ? $max_price : 5000000;
    // -----------------------------------------------------------

    // 2. Khởi tạo query
    $query = Product::query();

    // Logic tìm kiếm & lọc (giữ nguyên code cũ của bạn)
    if ($request->has('search') && $request->search != null) {
        $query->where('name', 'like', '%' . $request->search . '%');
    }

    if ($request->has('min') && $request->has('max')) {
        $min = $request->min;
        $max = $request->max;
        if ($min !== null && $max !== null) {
            $query->whereBetween('price', [$min, $max]);
        }
    }

    // Các phần khác giữ nguyên
    $products = $query->paginate(12)->withQueryString();
    $product_discount = Product::where('discount', '>', 0)->take(8)->get();
    $new_products = Product::orderBy('created_at', 'DESC')->take(6)->get();

    return view('client/collection/collection', [
        'categories' => $categories,
        'products' => $products,
        'product_discount' => $product_discount,
        'new_products' => $new_products,
        'max_price' => $max_price // <--- Truyền biến này sang View
    ]);
}

    // Các hàm khác giữ nguyên như cũ (showItem, productCat...)
    public function showItem($id){
        $categories = new Category();
        $cate = $categories->all(array('name', 'id'));
        $product = Product::find($id);
        $cateName= Category::find($product->catalog_id);
        $related = Product::where('catalog_id', $product->catalog_id)->take(4)->get();
        return view('client/collection/product',[
            'categories'=>$cate,
            'product'=>$product,
            'cateName'=>$cateName,
            'related'=>$related
        ]);
    }

    public function productCat(Request $request, $id){
    // 1. Lấy danh mục cho sidebar
    $categories = Category::all(['name', 'id']);
    
    // 2. Lấy thông tin danh mục hiện tại
    $name_cat = Category::find($id);
    
    // 3. Khởi tạo query: Chỉ lấy sản phẩm thuộc danh mục này
    $query = Product::where('catalog_id', '=', $id);

    // --- LOGIC TÌM KIẾM & LỌC ---
    
    // Tìm kiếm theo tên (nếu có tham số search)
    if ($request->has('search') && $request->search != null) {
        $query->where('name', 'like', '%' . $request->search . '%');
    }

    // Lọc theo giá (nếu có min và max)
    if ($request->has('min') && $request->has('max')) {
        $min_price = $request->min;
        $max_price = $request->max;
        if ($min_price !== null && $max_price !== null) {
            $query->whereBetween('price', [$min_price, $max_price]);
        }
    }
    // ---------------------------

    // 4. Phân trang & giữ lại tham số URL
    $product_cat = $query->paginate(12)->withQueryString();

    // 5. Lấy sản phẩm mới nhất cho sidebar
    $new_products = Product::orderBy('created_at', 'DESC')->take(6)->get();

    return view('client/collection/product_cat',[
        'nameCat' => $name_cat ? $name_cat->name : 'Danh mục',
        'categories' => $categories,
        'productCat' => $product_cat,
        'new_products' => $new_products
    ]);
}
}