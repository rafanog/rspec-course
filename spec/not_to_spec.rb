RSpec.describe 'not_to method' do
    it 'checks for the inverse of a matcher' do
        expect(5).not_to eq(10) #basic negative comparison
        expect([1, 2, 3]).not_to equal([1, 2, 3]) #passes since they are different arrays in memory
        expect(10).not_to be_odd #predicate matcher derived from .odd?
        expect([1, 2, 3]).not_to be_empty #another predicate macher

        expect(nil).not_to be_truthy #predicate matcher using nil value
        #to check begining and end of a chain/array respectively
        expect('Philadelphia').not_to start_with('car')
        expect('Philadelphia').not_to end_with('city')

        expect(5).not_to respond_to(:length)
        
        expect([:a, :b, :c]).not_to include(:d) #checks if the element exist in the array

        #raise_error matcher can be used without parameters to check if there's any kind of error raised
        expect { 11 / 3 }.not_to raise_error 
    end
end