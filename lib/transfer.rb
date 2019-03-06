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
    if @sender.valid? == true
      @sender.balance = @sender.balance - @amount
      @receiver.balance = @receiver.balance + @amount
      @status = "complete"
    else 
      "Your account is not valid"

    
  end
end
