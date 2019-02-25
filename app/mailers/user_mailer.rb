class UserMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "xxx@sample.com", subject: "確認メール"
  end
end
