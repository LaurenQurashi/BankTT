require 'transaction.rb'

describe Transaction do

  context '.initialize' do

    before(:each) do
      @transaction = Transaction.new(credit: 0, debit: 0, balance: 0)
    end

    it "has a credit atribute that starts at 0" do
      expect(@transaction.credit).to eq 0
    end

    it "has a debit atribute that starts at 0" do
      expect(@transaction.debit).to eq 0
    end

    it "Returns a transaction object" do
      transaction = Transaction.new(date: "00/00/0000", credit: 10, balance: 10)
      expect(transaction).to be_a_kind_of(Transaction)
    end

  end

end
