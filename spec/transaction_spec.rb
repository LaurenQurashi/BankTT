require 'transaction.rb'

describe Transaction do

  context '.initialize' do

    before(:each) do
    @transaction = Transaction.new(credit: 0, debit: 0)
    end

    # it "has a date that equals the current day" do
    #   expect(@transaction.date).to eq "08/05/2019"
    # end

    it "has a credit atribute that starts at 0" do
      expect(@transaction.credit).to eq 0
    end

    it "has a debit atribute that starts at 0" do
      expect(@transaction.debit).to eq 0
    end

  end

end
