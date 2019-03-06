require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?(accounts)
    binding.pry
  end

  # def execute_transaction
  #   binding.pry
  #   @sender
  #   self.@status = "complete"
  # end
end
