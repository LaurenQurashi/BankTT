require 'date'

class Transaction
  attr_reader :balance, :date, :credit, :debit, :history

  def initialize
    @balance = 0
    @date = Date.today.strftime("%d/%m/%Y")
    @credit = 0
    @debit = 0
    @history = []
  end

  def addCred(deposit)
    @credit += deposit
    @balance += deposit
  end

  def minusDeb(withdrawal)
    @debit += withdrawal
    @balance-= withdrawal
  end


end
