# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview

    def sample_mail_preview
      AdminMailer.new_impact(User.last)
    end

end
