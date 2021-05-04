=begin
Create an example group with a string argument of "math calculations".
Inside the group, create an example with a string argument of "does basic math".
Inside the example, write 4 mathematical assertions of your choice.
The expect method should receive a valid mathematical expression (for example, 3 + 4 or 5 * 3).
The eq method should compare the result fo the evaluation with the right answer.
=end
RSpec.describe 'math calculations' do
    it 'gives no mathematical error' do
        expect(1 + 1).to eq(2)
        expect(3 - 4).to eq(-1)
        expect(4 / 2).to eq(2)
        expect(1 * 3).to eq(3)
    end
end