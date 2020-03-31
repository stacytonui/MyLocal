<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    public function location() {
        return $this->belongsTo(App\Location::class);
    }
}
