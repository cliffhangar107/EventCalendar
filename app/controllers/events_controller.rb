class EventsController < ApplicationController

	def calendar
		@events = Event.all.map{|v| {'title' => v.name, 'start' => v.start_date, 'end' => (v.end_date || '')}}
	end

	def index
		@events = Event.all.order('start_date ASC')

	end

	def create
		@event = Event.new(name: params[:event][:name], start_date: params[:event][:start_date].to_datetime, end_date: params[:event][:end_date].try(:to_datetime))

		if @event.save!
			redirect_to events_path
		end
	end

	def edit
		#when press edit button. use ajax to inject the html form into the index page and then use javascript to call the modal function
	end

	def update

	end

	def destroy

	end
end