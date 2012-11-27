class User < ActiveRecord::Base
  attr_accessible :email, :name, :bdate

  validates_uniqueness_of :email, :on => :create, :message => "already registered"

  scope :until85, where("bdate <= ?", Time.new(1985, 12, 31).to_date)
  scope :after85, where("bdate > ?", Time.new(1985, 12, 31).to_date)
end
