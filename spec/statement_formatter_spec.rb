require 'statement_formatter.rb'
require 'transaction.rb'

describe StatementFormatter do

  context '.initialize' do

    before(:each) do
      @transaction1 = double(:transaction1)
      allow(@transaction1).to receive(:date).and_return Date.today.strftime("10/05/2019")
      allow(@transaction1).to receive(:credit).and_return 100
      allow(@transaction1).to receive(:debit).and_return ''
      allow(@transaction1).to receive(:balance).and_return 100

      @transaction2 = double(:transaction2)
      allow(@transaction2).to receive(:date).and_return Date.today.strftime("10/05/2019")
      allow(@transaction2).to receive(:credit).and_return ''
      allow(@transaction2).to receive(:debit).and_return 50
      allow(@transaction2).to receive(:balance).and_return 50

    end

    it "Has a correctly formatted statement header" do
      expect(StatementFormatter::HEADER).to eq "| Date | Credit | Debit | Balance |"
    end

    it "prints out a transaction date from the transaction its passed" do
      statement = StatementFormatter.printer([@transaction1])
      p statement
      expect(statement[0]).to eq "10/05/2019"
    end

    it "prints out a transaction credit from the transaction it's passed" do
      statement = StatementFormatter.printer([@transaction1])
      expect(statement[1]).to eq "100.00"
    end

    it "prints out a transaction debit from the transaction it's passed" do
      statement = StatementFormatter.printer([@transaction2])
      expect(statement[2]).to eq "50.00"
    end

    it "prints out a transaction balance from the transaction it's passed" do
      statement = StatementFormatter.printer([@transaction1])
      expect(statement[3]).to eq "100.00"
    end

  end

end
