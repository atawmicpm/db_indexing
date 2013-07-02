class KarmaPoint < ActiveRecord::Base
  attr_accessible :user_id, :label, :value
  belongs_to :user

  validates :user, :presence => true
  validates :value, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :label, :presence => true

  after_save :update_user


  def update_user
    user = User.find(self.user_id)
    user.update_attribute(:total_karma, user.get_total_karma)
  end


end
