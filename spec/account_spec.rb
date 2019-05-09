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
      @account.addCredit(10)
    end

    it "Has a method that adds to the balance" do
      expect(@account.balance).to eq 10
    end

    it "Makes a new transaction object that details the credit added" do
      expect(@account.addCredit(10).credit).to eq(10)
    end

    it "Pushes that transaction object into the history array" do
      expect(@account.history).to include(a_kind_of(Transaction))
      expect(@account.history[0].credit).to eq 10
    end

  end

  context 'Taking Debit' do
    before(:each) do
      @account = Account.new
      @account.addCredit(10)
    end

    it "Has a method that subtracts from the balance" do
      @account.subtractDebit(5)
      expect(@account.balance).to eq 5
    end

    it "Makes a new transaction object that details the debit taken" do
      expect(@account.subtractDebit(5).debit).to eq(5)
    end

    it "Pushes that transaction object into the history array" do
      @account.subtractDebit(5)
      expect(@account.history).to include(a_kind_of(Transaction))
      expect(@account.history[1].debit).to eq 5
    end

  end

end
