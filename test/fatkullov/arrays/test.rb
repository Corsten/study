require './test/test_helper.rb'
require_relative './solution.rb'

class Fatkullov::ArraysTest < Minitest::Test
  # Найти длинну минимального промежутка с повторяющимися значениями
  def test_min_repeat
    assert Fatkullov::Arrays.min_repeat([1]) == 0
    assert Fatkullov::Arrays.min_repeat([1, 1]) == 2
    assert Fatkullov::Arrays.min_repeat([1, 1, 2, 2, 2, 4, 5, 6, 6, 6, 6, 1, 3, 4, 5, 5]) == 2
  end

  # Реализовать бинарный поиск
  # Функция должна возвращать индекс элемента
  def test_bin_search
    assert Fatkullov::Arrays.search([1], 900) == -1
    assert Fatkullov::Arrays.search([1], 1) == 0
    assert Fatkullov::Arrays.search([], 900) == -1
    assert Fatkullov::Arrays.search([1, 4, 5, 7, 8, 9], 9) == 5
    assert Fatkullov::Arrays.search([1, 4, 5, 7, 8, 9], 1) == 0
    assert Fatkullov::Arrays.search([1, 4, 5, 7, 8, 9], 6) == -1

    array = (1..10000).to_a
    assert Fatkullov::Arrays.search(array, array[1000]) == 1000
  end
end
