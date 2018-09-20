# Overtime App

## Key requierment: company needs a documentation that salaried employees did or did not get overtime each week

## Ruby on Rails version
- Ruby 2.3.1
- Rails 5.2.1

## Models
- Post -> date:date, rationale:text
- User -> Devise
- AdminUser -> STI(single table inheritence from user)

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
- Bootstrap -> formatting

## Refactor TODOS:
- Make Full name method
- Refactor user association integration test in post_spec