<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Terminology extends Model
{
    use HasFactory;
    protected $fillable = [
        'comment_id',
        'comment_name',
        'comment_tone',
        'is_verified',
        'firstname',
        'surname',
        'email_address',
    ];
    protected $table = 'terminology';
}
