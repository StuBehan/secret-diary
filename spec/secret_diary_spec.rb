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
    context "if the diary is unlocked" do
      diary = SecretDiary.new(false)
      it "returns a string for the entry" do
        expect(diary.add_entry).to be_a(String)
      end 
    end
    context 'if the diary is locked' do
      diary = SecretDiary.new(true)
      it "raises an error if the diary is locked" do
        expect{ diary.add_entry }.to raise_error("The diary is locked!")
      end    
    end
  end

  describe 'get_entries' do
    context "the diary is unlocked" do
      diary = SecretDiary.new(false)
      it "returns all previously entered entries as an array of strings" do
        expect(diary.get_entries).to be_a(Array)
      end      
    end
    context "the diary is locked" do 
      diary = SecretDiary.new(true)
      it "raises and error to show the diary is locked" do
        expect{ diary.get_entries }.to raise_error("The diary is locked!")
      end
    end
  end
end