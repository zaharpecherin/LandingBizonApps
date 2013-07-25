class UserMailer < ActionMailer::Base
  default from: "feedback@bizon-apps.com"

  def feedback_email(feedback)
    @feedback = feedback
    mail(to: "zaharpecherin88@gmail.com", subject: "New feedback on the company site")
  end
end
