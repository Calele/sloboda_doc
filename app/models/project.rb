class Project < ActiveRecord::Base
  attr_accessible :comment, :currency_id, :client_id, :date_of_start, :deadline, :manager_id, :name, :paid, :status_id, :to_pay, :totally
  belongs_to :currency
  # has_one :client
  belongs_to :client
  has_many :programmer_projects
  has_many :programmers, through: :programmer_projects
  belongs_to :manager
  belongs_to :status
end

