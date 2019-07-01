<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Closure;
use Auth;

class Admin {
	/**
	 * Get the path the user should be redirected to when they are not authenticated.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return string
	 */
	public function handle($request, Closure $next) {
		if (Auth::guard('admin')->check()) {
			return $next($request);
		}

		return back();
	}
}
