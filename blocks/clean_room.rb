class CleanRoom
  def current_temperature
    19
    # 20
  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if current_temperature < 20
    p "TODO: ジャケットを着る"
  end
end