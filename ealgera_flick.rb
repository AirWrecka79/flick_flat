original_array = Array[[1,2,[3]],4]
flat_array     = Array.new
new_line       = String.new

original_array.each do |outer_value|
  if outer_value.is_a?(Array)
    outer_value.each do |value|
      if value.is_a?(Array)
        value.each do |inner_value|
          flat_array.push(inner_value)
          new_line = new_line + inner_value.to_s
        end
      else
        flat_array.push(value)
        new_line = new_line + value.to_s
      end
    end
  else
    flat_array.push(outer_value)
    new_line = new_line + outer_value.to_s
  end
end
puts new_line
puts "Erika Ruby testing"
print flat_array
