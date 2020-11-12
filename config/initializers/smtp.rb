ActionMailer::Base.smtp_settings = {
  address: 'hello@teamup.inc',
  port: '25',
  domain: 'www.teamup.inc',
  user_name: Rails.application.credentials.postmark_api_token,
  password: Rails.application.credentials.postmark_api_token,
  authentication: :cram_md5,
  enable_starttls_auto: true
}
