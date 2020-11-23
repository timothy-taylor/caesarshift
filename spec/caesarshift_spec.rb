require './lib/caesarshift.rb'

describe CaesarShift do
  describe "#caesar_cipher" do
    it "returns a string of characters shifted by a key" do
      encrypted = CaesarShift.new('panda', 8)
      expect(encrypted.caesar_cipher).to eql('xivli')
    end

    it "returns a shifted version of a string with puncuation and capitals" do
      encrypted = CaesarShift.new('Panda??', 8)
      expect(encrypted.caesar_cipher).to eql('Xivli??')
    end

    it "returns a shifted version of a string with spaces" do
      encrypted = CaesarShift.new("pa nda", 8)
      expect(encrypted.caesar_cipher).to eql('xi vli')
    end

    it "returns a shifted version of a string with numbers" do
      encrypted = CaesarShift.new('panda33', 8)
      expect(encrypted.caesar_cipher).to eql('xivli33')
    end

  end
end
