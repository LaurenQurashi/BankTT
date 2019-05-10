require_relative 'transaction.rb'
require_relative 'statement_formatter.rb'

class Account
  attr_reader :balance, :history

  def initialize(formatter = StatementFormatter, transaction_class = Transaction)
    @balance = 0
    @history = []
    @transaction_class = transaction_class
    @formatter = formatter

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

  def print_statement
    puts @formatter.format_statement(@history)
  end

end
