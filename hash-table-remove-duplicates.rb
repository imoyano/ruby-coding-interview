
def remove_duplicates(list)
  set = {}
  list.each do |number|
    set[number] = 1
  end
  # return only the keys
  set.keys
end

list = [1,2,3,4,5,2,6,7,4,8]
puts "Dupos removed from #{list.to_s}: #{remove_duplicates(list).to_s}"