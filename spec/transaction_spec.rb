require 'transaction.rb'

describe Transaction do

  context '.initialize' do

    it "has a balance atribute that starts at 0" do
      expect(subject.balance).to eq 0
    end

    it "has a date that equals the current day" do
      expect(subject.date).to eq "08/05/2019"
    end

    it "has a credit atribute that starts at 0" do
      expect(subject.credit).to eq 0
    end

    it "has a debit atribute that starts at 0" do
      expect(subject.debit).to eq 0
    end

  end

  context 'Adding Credit' do

    it "has a method that adds credit" do
      subject.addCred(10)
      expect(subject.credit).to eq 10
    end

  end

  context 'Adding Debit' do

    it "has a method that minuses debit" do
      subject.addCred(15)
      # could double this?
      subject.minusDeb(10)
      expect(subject.balance).to eq 5
    end

  end


end
