class ContactMailer < ApplicationMailer
  def new_contact
    @contact = params[:contact]
    mail(
      to: @contact.email,
      from: 'hello@teamup.inc',
      subject: "Thank you #{@contact.name} for contacting us",
      track_opens: 'true',
      message_stream: 'outbound'
    )
  end
end
