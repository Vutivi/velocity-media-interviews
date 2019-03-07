require './lib/fizz_buzz'

it "returns 'Fizz' if number is divisible by 3 and 'Buzz' if number is divisible by 5" do
  expect(fizz_buzz(3, 5)).to eq ["Fizz", "4", "Buzz"]
end

it "returns 'FizzBuzz' if current number is divisible by both 3 and 5" do
  expect(fizz_buzz(14, 15)).to eq [14, "FizzBuzz"]
end
