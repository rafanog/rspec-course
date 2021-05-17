#spies are different types of doubles but they expect the ocurrence of messages
# after the action, also, methods doesn't need to be declared

RSpec.describe 'spies' do
    let(:animal) { spy('animal') }

    it 'confirms that message has been received' do
        animal.eat_food

        expect(animal).to have_receive(:eat_food)
        expect(animal).not_to have_received(:eat_human)
    end

    it 'resets between examples' do
        expect(animal).not_to have_received(:eat_food)
    end

    it 'retains the same functionality of a regular double' do
        animal.eat_food
        animal.eat_food
        animal.eat_food('Sushi')

        expect(animal).to have_received(:eat_food).exactly(3).times
        expect(animal).to have_received(:eat_food).at_least(2).times
        expect(animal).to have_received(:eat_food).once.with('Sushi')
    end
end