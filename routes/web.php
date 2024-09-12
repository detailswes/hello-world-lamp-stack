<?php

use Illuminate\Support\Facades\Route;
use App\Models\HelloWorld;

Route::get('/', function () {
    $helloWorld = HelloWorld::first();
    return $helloWorld->message ?? 'Hello World';
});
