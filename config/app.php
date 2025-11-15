<?php

return [

    'name' => env('APP_NAME', 'Laravel'),

    'env' => env('APP_ENV', 'production'),

    'debug' => (bool) env('APP_DEBUG', false),

    'url' => env('APP_URL', 'http://localhost'),

    'timezone' => 'UTC',

    'locale' => env('APP_LOCALE', 'en'),
    'fallback_locale' => env('APP_FALLBACK_LOCALE', 'en'),
    'faker_locale' => env('APP_FAKER_LOCALE', 'en_US'),

    'cipher' => 'AES-256-CBC',
    'key' => env('APP_KEY'),

    'previous_keys' => [
        ...array_filter(
            explode(',', env('APP_PREVIOUS_KEYS', ''))
        ),
    ],

    'maintenance' => [
        'driver' => env('APP_MAINTENANCE_DRIVER', 'file'),
        'store' => env('APP_MAINTENANCE_STORE', 'database'),
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom BEEM Africa SMS Config
    |--------------------------------------------------------------------------
    |
    | These values make it easier to access Beem credentials via config('app.beem_api_key')
    | for use in your SMSController or any other part of your app.
    |
    */

    'beem_api_key' => env('BEEM_API_KEY'),
    'beem_secret_key' => env('BEEM_SECRET_KEY'),
    'beem_sender_name' => env('BEEM_SENDER_NAME', 'INFO'),
];
