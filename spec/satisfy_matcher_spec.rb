RSpec.describe 'satisfy matcher'do
    #subject { 'racecar'} # is a palindrome
    subject { 'racecars'}

    it 'is a palindrome' do
        expect(subject).to satisfy { |value| value == value.reverse }
    end

    it 'can accept a custom error message' do
        expect(subject).to satisfy('be palindrome') do |value|
            value == value.reverse
        end
    end

    ###try on one liner syntax
    it { is_expected.to satisfy('be palindrome on one liner') {|v| v == v.reverse} }
end