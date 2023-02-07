<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IntroductionMaterial extends Model
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
    protected $table = 'introduction_materials';
}
