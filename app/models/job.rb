class Job < ActiveRecord::Base
  attr_accessible :company, :company_logo, :company_url, :created_at, 
  :description, :github_id, :how_to_apply, :location, :title, :type, :url

  belongs_to :user
end
