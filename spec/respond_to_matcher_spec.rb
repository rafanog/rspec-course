class HotChocolate
    def drink
        'Delicious'
    end

    def discard
        'POP'
    end

    def purchase(number)
        "Awesome, I just purchased #{number} more hot choclates!"
    end
end

RSpec.describe HotChocolate do
    it 'confirms that an object can respond to a method' do
        expect(subject).to respond_to(:drink)
        expect(subject).to respond_to(:drink, :discard, :purchase)
    end

    it { is_expected.to respond_to(:drink) }
    it { is_expected.to respond_to(:drink, :discard, :purchase) }

    it 'confirms an object can respond to a method with argument' do
        expect(subject).to respond_to(:purchase).with(1).arguments
    end

    it { is_expected.to respond_to(:purchase, :discard) }
    it { is_expected.to respond_to(:purchase).with(1).arguments}
end