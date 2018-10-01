class AuditLogsController < ApplicationController
	def index
		# lines order!
		@audit_logs = AuditLog.all
		authorize @audit_logs
	end

end
