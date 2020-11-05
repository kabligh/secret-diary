require 'secret-diary-1'

require 'entry'

describe SecretDiary do

  it "creates a secret diary" do
    expect(subject).to be_instance_of(SecretDiary)
  end

  it "is locked by default" do
    diary = SecretDiary.new
    expect(subject.locked).to eq true
  end

  context "when locked" do
    it "cannot add entry" do
      expect {subject.add_entry("hello")}.to raise_error "Diary locked. No access."
    end

    it "cannot see entries" do
      expect {subject.add_entry("hello")}.to raise_error "Diary locked. No access."
    end
  end

  context "when unlocked" do
    before do
      subject.unlock
    end
    it "can add entry when unlocked" do
      expect {subject.add_entry("hello")}.to change{ subject.entries.count }.by 1
    end

    it "can get entries" do
      subject.add_entry("Nov 3")
      subject.add_entry("Nov 4")
      expect {subject.get_entries}.to output("Nov 3\nNov 4\n").to_stdout
    end
  end


end
