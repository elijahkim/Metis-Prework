def chime(&chimenoise)
  startTime = Time.now.hour
  if startTime > 12
    startTime = startTime - 12
  end
  startTime.times do |time|
    chimenoise.call
  end
end

chime do
  puts "DONG!"
end
