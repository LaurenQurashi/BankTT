require 'account.rb'

describe Account do

  context '.initialize' do

    before(:each) do
      @account = Account.new
    end

    it "has a balance atribute that starts at 0" do
      expect(@account.balance).to eq 0
    end

    it "has a history array atribute that starts with nothing in it" do
      expect(@account.history).to eq []
    end

  end

  context 'Adding Credit' do

    before(:each) do
      @account = Account.new
    end

    it "Has a method that adds to the balance" do
      expect { @account.add_credit(10) }.to change { @account.balance }.from(0).to(10)
    end

    it "Pushes a transaction object into the history array" do
      transaction_double = double("Transaction", credit: 0, debit: 0, balance: 10)
      @account.history.push(transaction_double)
      expect(@account.history).to include(transaction_double)
    end

  end

  context 'Taking Debit' do
    before(:each) do
      @account = Account.new
      @account.add_credit(10)
    end

    it "Has a method that subtracts from the balance" do
      expect { @account.subtract_debit(5) }.to change { @account.balance }.from(10).to(5)
    end

    it "Pushes that transaction object into the history array" do
      transaction_double = double("Transaction", credit: 0, debit: 0, balance: 10)
      @account.history.push(transaction_double)
      expect(@account.history).to include(transaction_double)
    end

  end

end
