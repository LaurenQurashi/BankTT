require_relative 'account.rb'
require_relative 'transaction.rb'

class StatementFormatter

  HEADER = "| Date | Credit | Debit | Balance |"

  def self.printer(transactions)
    transactions.each do |transaction|
      return transaction.date
    end
  end



end
