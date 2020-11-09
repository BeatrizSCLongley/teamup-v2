class ContactMailer < ApplicationMailer
  def new_contact
    @contact = params[:contact] # Instance variable => available in view
    mail(to: @contact.email, subject: "Thank you #{@contact.name} for your contact")
    # This will render a view in `app/views/user_mailer`!
  end
end
