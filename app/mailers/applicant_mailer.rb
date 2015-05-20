class ApplicantMailer < ApplicationMailer
  default from: 'info@endeva.org'
  def confirm_email(applicant)
    @applicant = applicant
    mail(to: @applicant.email, subject: 'We have received your application')
  end

end
