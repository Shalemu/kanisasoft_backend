<?php

namespace App\Notifications;

use Illuminate\Auth\Notifications\ResetPassword as BaseResetPassword;
use Illuminate\Notifications\Messages\MailMessage;

class ResetPasswordNotification extends BaseResetPassword
{
    public function toMail($notifiable)
    {
        $frontendUrl = env('FRONTEND_URL', 'http://localhost:3000'); // fallback if not set

        return (new MailMessage)
            ->subject('Reset Your Password')
            ->greeting('Hello '.$notifiable->full_name.'!')
            ->line('You are receiving this email because we received a password reset request for your account.')
            ->action(
                'Reset Password',
                $frontendUrl.'/password-reset/'.$this->token.'?email='.$notifiable->email
            )
            ->line('This password reset link will expire in '.config('auth.passwords.'.config('auth.defaults.passwords').'.expire').' minutes.')
            ->line('If you did not request a password reset, no further action is required.');
    }
}
