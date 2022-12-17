def parse_int(string)
  p "string : #{string}"
  str_to_num = {
    'ninety'    => 90,
    'eighty'    => 80,
    'seventy'   => 70,
    'sixty'     => 60,
    'fifty'     => 50,
    'forty'     => 40,
    'thirty'    => 30,
    'twenty'    => 20,
    'nineteen'  => 19,
    'eighteen'  => 18,
    'seventeen' => 17,
    'sixteen'   => 16,
    'fifteen'   => 15,
    'fourteen'  => 14,
    'thirteen'  => 13,
    'twelve'    => 12,
    'eleven'    => 11,
    'ten'       => 10,
    'nine'      => 9,
    'eight'     => 8,
    'seven'     => 7,
    'six'       => 6,
    'five'      => 5,
    'four'      => 4,
    'three'     => 3,
    'two'       => 2,
    'one'       => 1,
    'million'   => 1000000,
    'thousand'  => 1000,
    'hundred'   => 100
  }

  string_array = string.gsub(/-/, ' ').gsub(/\sand\s/, ' ').split
  total = 0
  string_array.each_with_index do |num, i|
    if num == 'hundred' || num == 'thousand' || num == 'million'
      if string_array[i] == 'thousand' && string_array[i - 1] == 'hundred'
        total *= str_to_num[num]
      elsif string_array[i] == 'hundred'
        total += str_to_num[num] * str_to_num[string_array[i - 1]] - str_to_num[string_array[i - 1]]
      else
        total *= str_to_num[num]
      end
    else
      total += str_to_num[num].to_i
    end
    p "total: #{total}"
  end
  total
end
