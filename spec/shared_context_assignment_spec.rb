#1)default subject contains an instance of the class defined in the describe

#2) subject {['foo', 'bar']}

#3)described_class allows the user to save some lines by referring to the class 
#mentioned in the describe 

#4)
RSpec.describe Array do
    subject {[1, 2]}

    it 'should be equal to [1, 2]' do
        expect(subject).to eq([1, 2]])
    end

    it is_expected.to eq([1, 2])
end

#5)I prefer the one liner for this scenario since it saves come lines of code

#6) Include examples allows the dev to reuse examples and the other can be applied on 
#the same fashion but for context
