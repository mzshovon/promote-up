<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShippingCost extends Model
{
    public function regions()
    {
        return $this->hasOne(Region::class, 'id', 'region_id');
    }
}
