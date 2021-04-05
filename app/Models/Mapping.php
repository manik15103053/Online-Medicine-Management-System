<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Mapping extends Model
{
    protected $fillable = ['symptom_id', 'disease_id' ];

    public function diseases()
    {
        return $this->hasMany(Diseases::Class, 'id', 'disease_id');
    }

    public function symptoms()
    {
        return $this->hasMany(Symptoms::Class, 'id', 'symptom_id');
    }
}




