class Actor
    def initialize(name)
        @name = name
    end

    def ready?
        sleep(3) #sleeps for 3 seconds
        true
    end

    def act
        "I love you, baby"
    end

    def fall_off_ladder
        'Call my agent! No way!'
    end

    def light_on_fire
        true
    end
end

class Movie
    attr_reader :actor

    def initialize(actor)
        @actor = actor
    end

    def start_shooting
        if actor.ready?
            puts actor.act
            puts actor.fall_off_ladder
            puts actor.light_on_fire
        end
    end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
    let(:stuntman) { 
        double('Mr. Danger', ready?: true, act: 'Whats in the box?!', 
                fall_off_ladder: 'Sure, lets do it', light_on_fire: true) 
    } #creates a double and sets it to stuntman

    subject { described_class.new(stuntman) }

    describe '#start_shooting method' do
        it 'expects an actor to do 3 actions' do
            #behavior driven expectation
            expect(stuntman).to receive(:ready?)
            expect(stuntman).to receive(:act)
            expect(stuntman).to receive(:fall_off_ladder)
            expect(stuntman).to receive(:light_on_fire)
            subject.start_shooting
        end
    end
end
