<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Category;
use App\Models\ProductVariant; // Nhớ thêm dòng này

class Product extends Model
{
    use HasFactory, SoftDeletes;
    protected $primaryKey = 'id';
    protected $table = 'products';
    protected $fillable = [
        'name',
        'price',
        'discount',
        'image',
        'image_list',
        'short_description',
        'description',
        'availability',
        'information',
        'view',
        'outstanding',
        'catalog_id',
    ];

    public function catalog()
    {
        // ĐÃ SỬA: Khóa ngoại là 'catalog_id', không phải 'id'
        return $this->belongsTo(Category::class, 'catalog_id', 'id');
    }

    // THÊM MỚI: Liên kết với bảng biến thể
    public function variants()
    {
        return $this->hasMany(ProductVariant::class, 'product_id', 'id');
    }
}