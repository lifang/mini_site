# encoding: utf-8
class User < ActiveRecord::Base
  has_many :shares,:dependent=>:destroy
end
