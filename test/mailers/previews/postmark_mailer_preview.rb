# Preview all emails at http://localhost:3000/rails/mailers/postmark_mailer
class PostmarkMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/postmark_mailer/hello
  def hello
    PostmarkMailer.hello
  end

end
