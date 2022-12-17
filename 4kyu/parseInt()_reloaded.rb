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
  puts "str : #{string_array}"
  total = 0
  string_array.each_with_index do |num, i|
    total += str_to_num[string_array[i]].to_i
    if num == 'hundred' || num == 'thousand' || num == 'million'
      a = str_to_num[string_array[i - 1]]
      p "a:  #{a}"
      b = str_to_num[string_array[i]]
      p "b: #{b}"
      if string_array[i] == 'hundred' && string_array[i + 1] == 'thousand'
        c = str_to_num[string_array[i + 1]]
        p "c: #{c}"
        tens = a * b * c
        total += tens - a - b - c
      else
        tens = a * b
        total += tens - a - b
      end
    end
  end
  p "total: #{total}"
  "for    200024"
end
