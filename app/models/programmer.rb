class Programmer < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  has_many :programmer_projects
  has_many :projects, through: :programmer_projects
end
