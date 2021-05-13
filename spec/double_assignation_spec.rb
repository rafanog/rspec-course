RSpec.describe 'doubles' do
    it "tests the student's knowledge of the course's content" do
        # 1)------------------------------------------------------
        db = double('Database Connection', connect: true, disconnect: 'Goodbye')

        expect(db.connect).to be_truthy
        expect(db.disconnect).to eq('Goodbye') 
        # 2)------------------------------------------------------
        fs = double('File System')
        allow(fs).to receive(:read).and_return('Romeo and Juliet')
        allow(fs).to receive(:write).and_return(false)
    end
  end