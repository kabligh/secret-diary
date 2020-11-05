require 'entry'
require 'secret-diary-1'

describe Entry do

  let(:diary) { Diary.new }

  it "creates an instance of the entry class" do
    expect(subject).to be_instance_of Entry
  end

end
