require_relative 'account.rb'
require_relative 'transaction.rb'

class StatementFormatter

  HEADER = "| Date | Credit | Debit | Balance |"

  def self.printer(transactions)
    transactions.each do |transaction|
      data = [transaction.date]
      data.push(two_decimal_places(transaction.credit))
      data.push(two_decimal_places(transaction.debit))
      data.push(two_decimal_places(transaction.balance))
      data.join(" | ")

      return data
    end
  end

  def self.two_decimal_places(number)
    if number != ''
      sprintf('%.2f', number)
    end
  end




end
