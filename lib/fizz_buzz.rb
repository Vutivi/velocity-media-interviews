def fizz_buzz(start_number, end_number)
  divisible_hash = { 3 => "Fizz", 5 => "Buzz" }

  array = Array.new.tap do |arr|
    start_number.upto(end_number) do |i|
      final_word = ""
      divisible_hash.each do |k, v|
        final_word += v if i % k == 0
      end
      final_word == "" ? arr << i.to_s : arr << final_word
    end
  end

  array.each{ |elem| puts elem }
end
