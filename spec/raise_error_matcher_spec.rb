RSpec.describe 'raise_error matcher' do

    def some_method
        x
    end

    class CustomError < StandardError; end #base class that inherits from StandardError

    it 'can check for an specific error being raised' do
        expect {some_method}.to raise_error(NameError)
        expect { 10 / 0 }.to raise_error(ZeroDivisionError)
    end

    it 'can check for a user-created error' do
        expect{ raise CustomError}.to raise_error(CustomError)
    end
    #to check for the error list google: 'ruby error list'
end
