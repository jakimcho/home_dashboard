class StaticController < ApplicationController
  def home
    @areas = Area.all.to_a

    @time = []
    @room1_temperature = []
    @room2_temperature = []

    @areas[0].stats.each do |stat|
      time_tmp = stat.time.slice 3, 8
      time_tmp[5] = ' ';
      @time << time_tmp
      @room1_temperature << stat.value
    end

    @areas[1].stats.each {|stat| @room2_temperature << stat.value}


    puts "Te towa e: #{@areas}";
  end
end