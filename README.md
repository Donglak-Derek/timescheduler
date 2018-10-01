# Overtime App


## Key requierment: company needs a documentation that salaried employees did or did not get overtime each week

## Ruby on Rails version
- Ruby 2.3.1
- Rails 5.2.1

## Models
- Post -> date:date, rationale:text, overtime_request:decimal, user_id:user.id
- User -> Devise
- AdminUser -> STI(single table inheritence from user)
- AuditLog -> user:references, status:integer, start_date:date, end_date:date

## Features:
- Growl-like notifications with gem gritter
- Delete sign up function from Devise (Admin registers users)
- Block non admin and quest users
- search function in admin dashboard 
- Approval Workflow (once approve post cannot be deleted)
- Using pundit to redirect page for permission structure **
- Using scope: user only can see their post
- SMS Sending(finish setting but need to pay to use it) -> link to approval or overtime input
- Audit logs 
- Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- Bootstrap -> formatting

## login
- test email : test@test.com
- password : asdfasdf

- admin email : admin@test.com
- admin password : asdfasdf

## Goal of audit log:
- Keep track of if a employee had overtime or not

- Dependencies:
	- User

- Attrs:
	- Status: integer (enum) -> pending, complete
	- start_date -> dafault previous Monday

monday
|
|
|
sunday ---- notification

rails g resource AuditLog user:references status:integer start_date:date end_date:date
AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
