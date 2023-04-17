def ftoc(f)
  # (32°F − 32) × 5/9 = 0°C
  (f - 32) * 5/9
end

def ctof(c)
  # (0°C × 9/5) + 32 = 32°F
  (c * 9.0/5.0) + 32
end
