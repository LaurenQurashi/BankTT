require_relative 'account.rb'
require_relative 'transaction.rb'

class StatementFormatter

  HEADER = "| Date | Credit | Debit | Balance |"

  # def self.format_statement(transactions)
  #   string_statements = self.printer(transactions)
  #   string_statements.each do |transaction|
  #
  # end


  def self.printer(transactions)
    transactions.each do |transaction|
      data = [transaction.date]

      data.push(two_decimal_places(transaction.credit))

      data.push(two_decimal_places(transaction.debit))

      data.push(two_decimal_places(transaction.balance))

      return data.join(', ').gsub(',', ' | ')
    end
  end

  def self.two_decimal_places(number)
    if number != ''
      sprintf('%.2f', number)
    end
  end

end
