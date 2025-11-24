<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Cart extends Model
{
    use SoftDeletes, HasFactory;
    protected $primaryKey = 'id';
    protected $table = 'cart';
    // Đã thêm 'size', 'color' vào fillable
    protected $fillable = array('id_product', 'name', 'quantity', 'image', 'price', 'id_user', 'size', 'color');
    protected $casts = [
        'price' => 'float',
        'quantity' => 'integer',
    ];
}