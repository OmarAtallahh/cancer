<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */

app()->setlocale('ar');

Route::get('/', function () {
	return view('main.index');
});

// Route::get('/main','MainController@index');
Route::get('/main/about', 'MainController@tow');
Route::get('/main/TestData', 'MainController@four');

// Route::get('/main/index','MainController@interface');
/*-------------------------------------------------------------------------*/
Route::get('/admin/{id}/delete', 'AdminController@destroy');
Route::get('/admin/reports', 'AdminController@problems');
Route::resource('/admin', 'AdminController');
Route::get('/admin', 'AdminController@search');

/*-------------------------------------------------------------------------*/
Route::resource('/main/createReport', 'ReportController');
/*-------------------------------------------------------------------------*/
Route::resource('/main/statistics', 'StatisticsController');
/*-------------------------------------------------------------------------*/

Route::get('/doctor/{id}/delete', 'DoctorController@destroy');
Route::resource('/doctor', 'DoctorController');
Route::get('/doctor', 'DoctorController@search');
