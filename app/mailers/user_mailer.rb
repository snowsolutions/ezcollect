class UserMailer < ApplicationMailer
  def new_account(model)
    @model = model
    mail(
      :template_path => 'email_templates/user',
      :template_name => 'new_account',
      to: @model.email,
      subject: t('email_content.new_account.subject')
    )
  end
end
