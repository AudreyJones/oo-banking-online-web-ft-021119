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
    binding.pry
    #if sender's transfer successfully gets to receiver
    @sender.balance = @sender - @amount
    # self.@status = "complete"
  end
end
