<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function user(){
        return $this->belongsTo(User::class);
    }

    // Mutator - Change value before inserting into database
    /*public function setPostImageAttribute($value){
        $this->attributes['post_image'] = asset($value);
    }*/

    // Accessor : after retrieving from database change value before it get displayed 
    public function getPostImageAttribute($value){
        if (strpos($value, 'https://') !== FALSE || strpos($value, 'http://') !== FALSE) {
            return $value;
        }
        
        return asset('storage/' . $value);
    }
}
