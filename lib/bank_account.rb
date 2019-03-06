require 'pry'
class BankAccount
  attr_accessor :balance, :status
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def name
    @name
  end

  def deposit(deposit)
    @balance = @balance + deposit
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if (@status = "open") && (@balance > 0)
      true
    else
      return false
    end
  end
end
