<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    public function stores() {
        return $this->hasMany(App\Store::class);
}
}
