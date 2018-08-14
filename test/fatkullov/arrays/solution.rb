module Fatkullov
  module Arrays
    class << self
      def min_repeat(array)
        min_interval = array.length

        repeat_interval = 1

        array.each_with_index do |value, key|
          repeat_interval += 1 if value == array[key + 1]
          min_interval = repeat_interval if (repeat_interval < min_interval) && (repeat_interval != 1)
        end

        puts min_interval
        return 0 if min_interval <= 1
        min_interval
      end

      def search(array, search_value, left = 0, right = array.length)
        return -1 if left >= right

        middle = left + (right - left) / 2

        return middle if array[middle] == search_value

        if search_value > array[middle]
          left = middle + 1
        else
          right = middle
        end

        search(array, search_value, left, right)
      end
    end
  end
end
