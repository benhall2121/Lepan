class LapanMailer < ActionMailer::Base
  default from: "Website@benerino.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lapan_mailer.contact_email.subject
  #
  def contact_email(sent_email)
    @sent_email = sent_email

    mail to: "brandoncgay@live.com", subject: "LapanBooks - A new Message from: #{sent_email.email}"
  end
end
