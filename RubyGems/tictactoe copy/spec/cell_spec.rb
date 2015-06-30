require 'spec_helper'

module Tictactoe
  describe Cell do

    context "#initialize" do
      it "is instantiated with a value of '' by default" do
        cell = Cell.new
        expect(cell.value).to eq ''
      end

      it "can be initialized with a value of 'x'" do
        cell = Cell.new('x')
        expect(cell.value).to eq 'x'
      end
    end

  end
end
