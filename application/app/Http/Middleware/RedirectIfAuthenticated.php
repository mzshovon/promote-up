<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    /*public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {
            return redirect('/home');
        }

        return $next($request);
    }*/
    public function handle($request, Closure $next, $guard = null)
    {
        switch ($guard) {
            case 'admin':
                if (Auth::guard($guard)->check()) {
                    return redirect('/admin/dashboard');
                }
                break;
            default:
                if (Auth::guard($guard)->check()) {
                    return redirect('/');
                    /*if (Auth::frontend()->hasRole('admin')) {

                        return redirect('/admin');

                    } elseif (Auth::frontend()->hasRole('stuff')) {

                        return redirect('/stuff');

                    }*/
                }
                break;
        }

        return $next($request);
    }
}
