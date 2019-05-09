require_relative 'transaction.rb'


class Account
  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = []
  end

  def addCredit(deposit)
    @balance+= deposit
    @trans = Transaction.new(credit: deposit, debit: 0)
    @history.push(@trans)
    return @trans
  end

  def subtractDebit(withdrawal)
    @balance -= withdrawal
    @trans = Transaction.new(credit: 0, debit: withdrawal)
    @history.push(@trans)
    return @trans
  end

end
