class EventsController < ApplicationController

	def calendar

	end

	def index
		@events = Event.all.order('date ASC')

	end

	def create
		@event = Event.new(name: params[:event][:name], date: params[:event][:date].to_datetime)

		if @event.save!
			redirect_to events_path
		end
	end

	def edit

	end

	def update

	end

	def destroy

	end
end