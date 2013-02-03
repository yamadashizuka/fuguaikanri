class User < ActiveRecord::Base
  attr_accessible :name, :pass, :position
end
