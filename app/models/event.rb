class Event < ActiveRecord::Base
	validates :start_date, :name, presence: true

end