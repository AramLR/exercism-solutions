module SavingsAccount

  def self.interest_rate(balance)
    if balance < 0
      return 3.213
    end
    if balance < 1000
      return 0.5
    end
    if balance < 5000
      return 1.621
    end

    2.475
  end

  def self.annual_balance_update(balance)
    percentage = interest_rate(balance) / 100
    interests = balance * percentage
    balance + interests
  end

  def self.years_before_desired_balance(current_balance, desired_balance)

    years = 0

    until current_balance >= desired_balance
      current_balance = annual_balance_update(current_balance)
      years += 1
    end

    years
  end
end

#puts SavingsAccount.interest_rate(200.75)
#puts SavingsAccount.annual_balance_update(200.75)
#puts SavingsAccount.years_before_desired_balance(200.75, 214.88)