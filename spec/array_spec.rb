RSpec.describe Array do
    it 'checks array initial length' do
        expect(subject.length).to eq(0)
        subject.push('baka!')
    end

    it 'checks if subject length changes' do
        expect(subject.length).to eq(1)
    end
end

#The output will be 0 because the subject value is not mantained accros methods when its used implicitely
#Passing class names to describe method will create an instance of the class directly
