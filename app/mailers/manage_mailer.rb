class ManageMailer < ApplicationMailer
	def email manager
		@manager = manager #??????where
		mail(to: @manager.email, subject: 'Daily Overtime Request Email')
	end
end

# ManageMailer.email(AdminUser.last).deliver_later