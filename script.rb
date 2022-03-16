require "pry-byebug"

def bubble_sort(arrayToSort)
    length = arrayToSort.length
    i = 0
    while i < length do
        arrayToSort.each_with_index do |number, idx|
            # binding.pry
            # continue if we're at the last entry in the list
            if idx == length-1
                next
            end
            # check if i is greater than i+1 (next value in array)
            # if i is greater, swap the two values
            if number > arrayToSort[idx+1]
                arrayToSort.insert(idx+1, arrayToSort.delete_at(idx))
                p arrayToSort
            end
        end
        i += 1
    end
    return arrayToSort
end

array = [4,3,78,2,0,2]
p bubble_sort(array)