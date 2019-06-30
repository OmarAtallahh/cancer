<?php

namespace App;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class doctor extends Authenticatable {

	use Notifiable;

	protected $table = "doctors";

	protected $fillable = [
		'first_name', 'email', 'password', 'last_name', 'phone_number', 'hospital_name', 'job_id', 'created_by', 'updated_by',
	];
}
