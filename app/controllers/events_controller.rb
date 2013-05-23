class EventsController < ApplicationController

	def calendar

	end

	def index
		@events = Event.all.order('date ASC')

	end

	def new

	end

	def create

	end

	def edit

	end

	def update

	end

	def destroy

	end
end