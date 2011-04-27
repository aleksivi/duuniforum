class SubSection < ActiveRecord::Base
belongs_to :industry
  validates_presence_of :name, :section_id


end
