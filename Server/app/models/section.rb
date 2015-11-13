class Section < ActiveRecord::Base
	belongs_to :trek
     has_many :restaurants 
end
