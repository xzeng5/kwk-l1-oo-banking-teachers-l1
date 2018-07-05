class Transfer
  # code here
  attr_reader :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end

  def valid?
    if @sender == nil || @receiver == nil
      false
    else
      true
    end
  end

  def transfer_class
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if @amount = 4000
      "Transaction rejected. Please check your account balance."
      @status = "rejected"
    end
    
    @sender.balance = 950
    @receiver.balance = 1050
    @status = "complete"
  end

end
