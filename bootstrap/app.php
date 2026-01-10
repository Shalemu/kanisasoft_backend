<?php

use Illuminate\Foundation\Application;
use Illuminate\Foundation\Configuration\Exceptions;
use Illuminate\Foundation\Configuration\Middleware;

return Application::configure(basePath: dirname(__DIR__))
    ->withRouting(
        web: __DIR__ . '/../routes/web.php',
        api: __DIR__ . '/../routes/api.php',
        commands: __DIR__ . '/../routes/console.php',
        health: '/up',
    )
    ->withMiddleware(function (Middleware $middleware) {
        // Sanctum stateful middleware for API requests
        $middleware->api(prepend: [
            \Laravel\Sanctum\Http\Middleware\EnsureFrontendRequestsAreStateful::class,
        ]);

        // Aliases for middleware
        $middleware->alias([
            'verified' => \App\Http\Middleware\EnsureEmailIsVerified::class,
        ]);
    })
   ->withExceptions(function (Exceptions $exceptions) {

    // Handle Validation Errors
    $exceptions->render(function (\Illuminate\Validation\ValidationException $e, $request) {
        if ($request->is('api/*')) {
            return response()->json([
                'status' => 'error',
                'message' => 'Validation failed',
                'errors' => $e->errors(),
            ], 422);
        }
    });

    // Handle All Other Exceptions
    $exceptions->render(function (\Throwable $e, $request) {
        if ($request->is('api/*')) {

            $status = ($e instanceof \Symfony\Component\HttpKernel\Exception\HttpException)
                ? $e->getStatusCode()
                : 500;

            return response()->json([
                'status' => 'error',
                'message' => $e->getMessage() ?: 'Server error',
            ], $status);
        }
    });

})

    ->create();
