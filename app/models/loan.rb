class Loan < ActiveRecord::Base
  belongs_to :client
  belongs_to :user
  
  has_many :payments
  
  
  def remaining_payment
    amount - total_paid
  end
  
  def add_total_paid( payment_amount )
    self.total_paid += payment_amount
    self.save
  end
  
end
