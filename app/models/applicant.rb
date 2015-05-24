class Applicant < ActiveRecord::Base
  validates :email, :email => true
end
