class CandidateMailer < ApplicationMailer
  def email_contact(model, subject, email_template)
    @model = model
    @email_template = email_template
    mail(
      :template_path => 'email_templates/candidate',
      :template_name => 'default',
      to: @model.email,
      subject: subject
    )
  end
end
