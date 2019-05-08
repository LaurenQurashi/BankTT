require 'date'

class Transaction
  attr_reader :date, :credit, :debit

  def initialize(date: Date.today.strftime("%d/%m/%Y"), credit:, debit: )
    @date = date
    @credit = credit
    @debit = debit
  end

end
