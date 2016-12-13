class AdminMailer < ApplicationMailer

  def new_impact(user, current_user, article, impact_record)
    @user = user
    @current_user = current_user
    @article = article
    @impact_record = impact_record
    mail(to: @user.email, subject: 'Impact Added')
  end

  def new_user(recipient, new_user)
    @recipient = recipient
    @new_user = new_user
    mail(to: @recipient.email, subject: 'New User')
  end

end
