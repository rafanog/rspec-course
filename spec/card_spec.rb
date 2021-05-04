RSpec.describe 'Card' do
    it 'has a type' do
        card = Card.new('Ace of Spades') #defines an Ace of Spades card
        expect(card.type).to eq('Ace of Spades') #uses the expect method
    end 
end
