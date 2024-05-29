###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?\d+$/

    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
  result.each_with_index do |val, index|
    if i_arg < val
      result.insert(index, i_arg)
      is_inserted = true
      break
    end
  end
    if !is_inserted
      result << i_arg
    end
end

puts result
