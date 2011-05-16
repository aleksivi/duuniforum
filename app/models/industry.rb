class Industry < ActiveRecord::Base
has_many :focusing_section
validates_presence_of :name
end
