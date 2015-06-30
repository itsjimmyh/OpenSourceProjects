require 'spec_helper'

describe Array do
  context "#all_empty?" do
    it "returns true if all elements in Array are empty" do
      expect(["", "", ""].all_empty?).to eq true
    end

    it "returns false if some of the Array elements are not empty" do
      expect(["", Object.new, ""].all_empty?).to eq false
    end

    it "returns true for an empty array" do
      expect([].all_empty?).to eq true
    end
  end

  context "#all_same?" do
    it "returns false if all elements in Array are not the same" do
      expect(["", "wat", ""].all_same?).to eq false
    end

    it "returns true if all elements in Array are the same" do
      expect(["", "", ""].all_same?).to eq true
    end

    it "returns true for an empty array" do
      expect([].all_same?).to eq true
    end
  end

  context "#any_empty?" do
    it "returns false if all elements are not empty" do
      expect([1, 2, 3].any_empty?).to eq false
    end

    it "returns true if any elements are empty" do
      expect(["", 1, 2].any_empty?).to eq true
    end

    it "returns false for an empty array" do
      expect([].any_empty?).to eq false
    end
  end

  context "#none_empty?" do
    it "returns false if any element is empty" do
      expect(["", 1, 2].none_empty?).to eq false
    end

    it "returns true if there are no empty elements" do
      expect([1, 2, 3].none_empty?).to eq true
    end

    it "returns true for an empty array" do
      expect([].none_empty?).to eq true
    end
  end
end
