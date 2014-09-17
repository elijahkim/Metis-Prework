def chime (&chimenoise)
  startTime = Time.now.hour
  if startTime > 12
    startTime = startTime - 12
  end
  self.each Do |startTime|
    chimenoise
end

puts chime.call("dong")

