class Lens < ActiveRecord::Base
  belongs_to :manufacturer
  attr_accessible :name
end
