def ftoc(temperature_in_f)
  return (temperature_in_f.to_f - 32) * 5/9
end

def ctof(temperature_in_c)
  return (temperature_in_c.to_f * 9/5 + 32)
end