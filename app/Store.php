<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    public function location() {
        return $this->belongsTo(Location::class);
    }

    public function products()
    {
        return $this->belongsToMany(Product::class)->withTimestamps;
    }
}
