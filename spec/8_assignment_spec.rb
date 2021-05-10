
RSpec.describe 'assignment' do
    # 1. What is an alternate way to write the assertion below?
    # expect({}.empty?).to be(true)
    it 'test emptyness to be true' do #CORRECT
        expect({}.empty?).to be(true)
        expect({}).to be_empty
    end
    # 2. Write an assertion that validates that every element in the array
    #  [10, 20, 30] is even.
    describe [10, 20, 30] do #CORRECT
       it { is_expected.to all(be_even)} 
    end

    # 3. Write an assertion that validates that every element in the array 
    # [0, 1, 2] is greater than or equal to 0.
    describe [0, 1, 2] do #CORRECT
        it { is_expected.to all(be >= 0)}
    end
     
    # which of the values below are truthy and which are falsy? 
    # Submit your answer as two organized lists.

    #True:
        # "hello"
        # 0
        # -10
        # []
        # 99.99
        # true
        # [1, 2, 3] 

    #False:
        # false
        # nil
        # :hello #WRONG
end