class NotificationMailer < ApplicationMailer
    def welcome_email(nomination)
        @nomination = nomination
        @user = User.find(@nomination.nominator_id)
        mail(to: @user.email, subject: 'Successful Nomination')
    end

    def approval_notification(nomination)
        @nomination = nomination
        @user = User.find(@nomination.nominator_id)
        mail(to: @user.email, subject: 'Nomination Approval Notifcation')
    end

    def pushedback_notification(nomination)
        @nomination = nomination
        @user = User.find(@nomination.nominator_id)
        mail(to: @user.email, subject: 'Nomination Pushback Notifcation')
    end

    def forward_notification(nomination)
        @nomination = nomination
        @user = User.find(@nomination.nominator_id)
        mail(to: @user.email, subject: 'Nomination Forwarded Notifcation')
    end

    def rejection_notification(nomination)
        @nomination = nomination
        @user = User.find(@nomination.nominator_id)
        mail(to: @user.email, subject: 'Nomination Rejection Notifcation')
    end
end