def possibilities(*num)
  actual = num
  new_actual = []
  steps = []
  steps.push actual
  while actual.any? { |s| s.include?('?') }
    actual.each do |n|
      new_actual.push n.sub('?','0') 
      new_actual.push n.sub('?','1')
    end
    steps.push new_actual
    actual = new_actual
    new_actual = []
  end
  steps.last
end