class Subject < ActiveRecord::Base
  attr_accessible :description, :name

  belongs_to :school
end
