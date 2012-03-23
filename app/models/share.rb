# encoding: utf-8
class Share < ActiveRecord::Base
  has_many :votes,:dependent=>:destroy
  belongs_to :user
end
