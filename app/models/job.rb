class Job < ActiveRecord::Base
  attr_accessible :company, :company_logo, :github_id, :title, :applied, :interview_date

  belongs_to :user
end
