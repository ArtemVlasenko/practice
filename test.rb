# frozen_string_literal: true


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
  # table = [
  #   [1, 2000, 3000, 2000],
  #   [2, 2000, 3000, 2000],
  #   [3, 2000, 3000, 2000]
  # ]

 puts table

  # а) общую сумму, выплаченную за квартал всем работникам;
  # asd_1 = total_sum(table) # return integer

  def total_sum(table)
    return table.map { |i| i [1..3].sum }
  end
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
  def total_sum_by_quater_for_employee(table)

    return table.map { |i| i [1..3].sum }

    # return table.each { |a| sum += a }
  end
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
  puts  "Общая сумма выплаченная за квартал всем работникам = #{sum_quarter.sum}$"
  # зарплату, получeнную за квартал каждым работником;
  # Нужно в цикле вывести
  puts "зарплата, полученная за квартал #{EMPLOYEE_COUNT}-м каждым работникaм = #{sum_month}"

  # общую зарплату всех работников за каждый месяц.
  # Нужно в цикле вывести
  # puts "общая зарплата всех работников за каждый месяц = #{asd_3}"
end

main
