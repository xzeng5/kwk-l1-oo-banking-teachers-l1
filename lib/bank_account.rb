class BankAccount
  # code here
  attr_reader :name, :balance, :status, :deposit

  def initialize (name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end

  def balance= (balance)
    @balance = balance
  end

  def status= (status)
    @status = status
  end

  def deposit(num)
    @balance = @balance + num
  end

  def display_balance
    "Your Balance is $#{@balance}."
  end

  def valid?
    if @status == "closed" || @balance == 0
      false
    else
      true
    end
  end

  def close_account
    @status = "closed"
  end

end
