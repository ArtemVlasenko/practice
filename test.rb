# frozen_string_literal: true

NUMBER_MONTHS = {
  1 => 'Январь',
  2 => 'Февраль',
  3 => 'Март',
  4 => 'Апрель',
  5 => 'Май',
  6 => 'Июнь',
  7 => 'Июнь',
  8 => 'Август',
  9 => 'Сентябрь',
  10 => 'Октябрь',
  11 => 'Ноябрь',
  12 => 'Декабрь'
}

FIRST_EMPLOYEE_NUMBER = 1
EMPLOYEE_COUNT = 2
FIRST_MONTH = 1
THIRD_MONTH = 3
INDEX_DELTA = 1

def read_value(message)
  print(message)
  gets.chomp.to_i
end

def main
  table = []

  FIRST_EMPLOYEE_NUMBER.upto(EMPLOYEE_COUNT).each do |employee_number|
    index = employee_number - INDEX_DELTA
    table[index] = [employee_number]
    # table = [
    #   [1]
    # ]
    FIRST_MONTH.upto(THIRD_MONTH).each do |month_number|
      message = "Введите #{month_number}-ю зарплату #{employee_number}-го работника за месяц: "
      salary = read_value(message)
      # table[index] => [
      #                   [1]
      #                 ]
      table[index] << salary

      # table[index] => [
      #   first iteration [1, salary_1]
      #     second iteration => [1, salary_1, salary_2]
      #       third iteration => [1, salary_1, salary_2, salary_3]
      # ]
    end
  end



  # After entering values (После ввода значений)
  row column
  table.each do |row|
    [1, 2000, 3000, 2000][1..3] => total_sum [2000, 3000, 2000].sum

  end
  # table = [
  #   [1, 2000, 3000, 2000],
  #   [2, 2000, 3000, 2000],
  #   [3, 2000, 3000, 2000]
  # ]

 puts table

  # а) общую сумму, выплаченную за квартал всем работникам;
  # asd_1 = total_sum(table) # returns integer

  sum_quarter = total_sum(table)

  # б) зарплату, полученную за квартал каждым работником;
  # [
    # employee, total
  #   [1, 20000],
  #   [2, 20000],
  #   [3, 20000],
  #   [4, 20000],
  #   [5, 20000]
  # ]
  # asd_2 = total_sum_by_quater_for_employee(table) # should return an array

  sum_month = total_sum_by_quater_for_employee(table)
  # в) общую зарплату всех работников за каждый месяц.
  # [
      #month, total
  #   [1, 10000],
  #   [2, 10000],
  #   [3, 10000]
  # ]
  # asd_3 = total_sum_by_month_for_all_employees(table) # should return an array
  # def total_sum_by_month_for_all_employees(table)

  #   return
  #   end
  #   asd_3 = total_sum_by_month_for_all_employees(table)

  # общую сумму, выплаченную за квартал всем работникам;
  puts  "Общая сумма выплаченная за квартал всем работникам = #{sum_quarter}$"
  # зарплату, получeнную за квартал каждым работником;
  # Нужно в цикле вывести
  puts "зарплата, полученная за квартал #{EMPLOYEE_COUNT}-м каждым работникaм = #{sum_month}"

  # общую зарплату всех работников за каждый месяц.
  # Нужно в цикле вывести
  # puts "общая зарплата всех работников за каждый месяц = #{asd_3}"
end

def total_sum(table)
  # total_sum = 0

  # table.each do |row|
  #   row[1..3].each do |salary|
  #     total_sum += salary
  #   end
  # end

  table.map { |row| row[1..3].sum }.sum

  # table.map do |row|
  #   row[1..3].sum
  # end.sum
end

# В total_sum_by_quater_for_employee
# В данный момент возвращает
# => [10000, 20000, 30000]

# А нужно что бы возарвщало
# [
#   [1, 7000], [2, 7000], [3, 7000]
# ]
def total_sum_by_quater_for_employee(table)

  table.map do |i|
    i [1..3].sum
  end


end


# На входе
# table = [
#   [1, 2000, 3000, 2000],
#   [2, 2000, 3000, 2000],
#   [3, 2000, 3000, 2000]
# ]
# table.transpose => [
#  [0] [1,2,3],
#  [1] [2000, 2000, 2000],
#  [2] [3000, 3000, 3000],
#  [3] [2000, 2000, 2000]
# ]

# На выходе
# [
#   ['Январь', 7000], ['Февраль', 7000], ['Март', 7000]
# ]
def total_sum_by_quater_for_employee(table)

  # Implementation ...
end

main
