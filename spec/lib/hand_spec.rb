require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand_1) { Hand.new(["10♦", "J♥"]) }
  let(:hand_2) { Hand.new(["8♦", "A♠"]) }
  let(:hand_3) { Hand.new(["A♦", "A♥"]) }
  let(:hand_4) { Hand.new(["2♥", "J♣"]) }
  let(:hand_5) { Hand.new(["A♣", "K♥"]) }
  # You can add more sample hands

# We have included some example tests below. Change these once you get started!
# Use the RSpec keyword `expect`, as it appears below, to test your assertions

  describe "#calculate_hand" do

    context "10♦, J♥" do
      it "calculates the total score for each hand" do
        expect(hand_1.calculate_hand).to eq(20)
      end
    end

    context "8♦, A♠" do
      it "calculates the total score for each hand" do
        expect(hand_2.calculate_hand).to eq(19)
      end
    end

    context "A♦, A♥" do
      it "calculates the total score for each hand" do
        expect(hand_3.calculate_hand).to eq(12)
      end
    end

    context "2♥, J♣" do
      it "calculates the total score for each hand" do
        expect(hand_4.calculate_hand).to eq(12)
      end
    end

    context "A♣, K♥" do
      it "calculates the total score for each hand" do 
        expect(hand_5.calculate_hand).to eq(21)
      end
    end
  end
end
