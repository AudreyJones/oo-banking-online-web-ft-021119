class Transfer
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender,receiver)
    @sender = sender
    @receiver = receiver
    @status = "pending"

  end
end
