require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if (@sender.valid? == true) && (@receiver.valid? == true)
      true
    else
      false
    end
  end

  def execute_transaction
    # binding.pry
    if (@sender.valid? == true) && (@status == "open")
      @sender.balance = @sender.balance - @amount
      @receiver.balance = @receiver.balance + @amount
      @status = "complete"
    elsif (@sender.valid? == false)
      "Transaction rejected. Please check your account balance."
    end

  end
end
