class ApplicationMailer < ActionMailer::Base
	# it should be your own domain but try gmail.
  default from: 'donglak.han@gmail.com'
  layout 'mailer'
end
