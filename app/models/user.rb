class User < ApplicationRecord
  before_save {userID.upcase!}
  validates :userID, presence: true,
                     uniqueness: {case_sensitive: false}

  has_many :tallies
end
