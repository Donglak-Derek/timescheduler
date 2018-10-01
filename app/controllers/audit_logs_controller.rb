class AuditLogsController < ApplicationController
	def index
		# lines order!
		@audit_logs = AuditLog.page(params[:page]).per(10)
		authorize @audit_logs
	end

end
