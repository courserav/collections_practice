def sort_array_asc(int)
    int.sort do |a, b|
        a <=> b
    end
end

def sort_array_desc(int)
    int.sort do |a, b|
        b <=> a
    end
end

def sort_array_char_count(int)
    int.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    placeholder = array[1]
    array[1] = array[2]
    array[2] = placeholder
    array
end

def reverse_array(array)
    place_array = []
    i = array.length - 1
    while i >= 0
        place_array << array[i]
        i -= 1
    end
    place_array
end

def kesha_maker(array)
    new_array = []
    array.each do |string|
        string = string.split("")
        string[2] = "$"
        string = string.join("")
        new_array << string
    end
   new_array
end

def find_a(array)
    new_array = []
    array.each do |string|
        if string.start_with?("a") == true
            new_array << string
        end
    end
    new_array
end

def sum_array(array)
    array.inject(0) {|sum, num| sum += num}
end

def add_s(array)
    new_array = []

    array.each_with_index do |string, index|
        if index == 1
            new_array << string
        else
            new_array << string + "s"
        end
    end
    new_array
end

puts add_s(["hand", "feet", "toe"])