require 'secret_diary'

describe SecretDiary do
  describe 'lock' do
    it "locks the diary by returning true" do
      expect(subject.lock).to eq(true)
    end
  end
  describe 'unlock' do
    it "unlocks the diary by returning false" do
      expect(subject.unlock).to eq(false)
    end
  end
  describe 'add_entry' do
    it "returns a string for the entry" do
      expect(subject.add_entry).to be_a(String)
    end
  end
  describe 'get_entries' do
    it "returns all previously entered entries as an array of strings" do
      expect(subject.get_entries).to be_a(Array)
    end
  end
end