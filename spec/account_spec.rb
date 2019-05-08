require 'account.rb'

describe Account do

  context '.initialize' do

    it "has a balance atribute that starts at 0" do
      accounty = Account.new
      expect(accounty.balance).to eq 0
    end

  end

  context 'Adding Credit' do
    it "Has a method that adds to the balance" do
      accounty = Account.new
      accounty.credit(10)
      expect(accounty.balance).to eq 10
    end

    it "Makes a new transaction object that details the credit added" do
      accounty = Account.new
      accounty.credit(10)
      expect(accounty.credit(10).credit).to eq(10)

    end
  end

  context 'Taking Debit' do
    it "Has a method that subtracts from the balance" do
      accounty = Account.new
      accounty.credit(10)
      accounty.debit(5)
      expect(accounty.balance).to eq 5
    end

  end

end
