def time_string(int)
  return int = Time.at(int).utc.strftime("%H:%M:%S")
end
puts time_string(12)