class Applicant < ActiveRecord::Base
  validates :firstname, presence: true, length: { in: 2..255 }
  validates :lastname, presence: true, length: { in: 2..255 }
  validates :email, uniqueness: {case_sensitive: false}, presence: true, length: { in: 2..255 }
end
