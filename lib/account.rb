require_relative 'transaction.rb'

class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(deposit)
    @balance+= deposit
    @transyA = Transaction.new(credit: deposit, debit: 0)
    return @transyA
  end

  def debit(withdrawal)
    @balance -= withdrawal
  end

end