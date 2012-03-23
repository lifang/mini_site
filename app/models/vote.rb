# encoding: utf-8
class Vote < ActiveRecord::Base
  belongs_to :share
end
