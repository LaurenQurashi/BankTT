require_relative 'transaction.rb'

class Account
  attr_reader :balance, :history

  def initialize(transaction_class = Transaction)
    @balance = 0
    @history = []
    @transaction_class = transaction_class

  end

  def add_credit(deposit)
    @balance += deposit
    transaction = @transaction_class.new(credit: deposit,
      debit: 0, balance: @balance)
    @history.push(transaction)
  end

  def subtract_debit(withdrawal)
    @balance -= withdrawal
    transaction = @transaction_class.new(credit: 0,
      debit: withdrawal, balance: @balance)
    @history.push(transaction)
  end

end
