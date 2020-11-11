class TestMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/test_mailer/hello
  # default from: 'hello@teamup.inc'
  def hello
    mail(
      subject: 'Hello from Postmark',
      to: 'beatrizsousacosta@gmail.com',
      from: 'hello@teamup.inc',
      html_body: '<strong>Hello</strong> dear Postmark user.',
      track_opens: 'true',
      message_stream: 'outbound')
  end
end
