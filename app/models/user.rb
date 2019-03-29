class User < ApplicationRecord
  before_save {userID.upcase!}
  validates :userID, presence: true,
                     uniqueness: {case_sensitive: false}
end
