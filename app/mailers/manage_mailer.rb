class ManageMailer < ApplicationMailer
	def email manager
		@manager = manager
		mail(to: @manager.email, subject: 'Daily Overtime Request Email')
	end
end
