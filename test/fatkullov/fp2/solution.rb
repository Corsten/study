module Fatkullov
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for element in self
          yield(element)
        end
      end

      # Написать свою функцию my_map
      def my_map
        new_array = MyArray.new
        self.my_each { |element| new_array.push(yield(element)) }
        new_array
      end

      # Написать свою функцию my_compact
      def my_compact
        new_array = MyArray.new
        self.my_each { |element| new_array.push(element) if element }
        new_array
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil)
        self.my_each { |element| acc = acc ? yield(acc, element) : element }
        acc
      end
    end
  end
end