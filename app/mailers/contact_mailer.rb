class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to:"test@gmail.com",subject: "confirmation"
  end
end
