# Overtime App


## Key requierment: company needs a documentation that salaried employees did or did not get overtime each week

## Ruby on Rails version
- Ruby 2.3.1
- Rails 5.2.1

## Models
- Post -> date:date, rationale:text, overtime_request:decimal, user_id:user.id
- User -> Devise
- AdminUser -> STI(single table inheritence from user)

## Features:
- Growl-like notifications with gem gritter
- Delete sign up function from Devise (Admin registers users)
- Block non admin and quest users
- search function in admin dashboard 
- Approval Workflow (once approve post cannot be deleted)
- Using pundit to redirect page for permission structure **
- Using scope: user only can see their post
- SMS Sending -> link to approval or overtime input
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

## Refactor TODOS:
- Make Full name method
- Refactor user association integration test in post_spec
