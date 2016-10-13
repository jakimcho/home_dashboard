class StaticController < ApplicationController
	def home
		@areas = Area.all.to_a
		puts "Te towa e: #{@areas.to_a}";
	end
end
