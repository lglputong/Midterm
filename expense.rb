class Expense
	attr_accessor :id, :item, :amount

	def initialize(id, item, amount)
		self.id = id
		self.item = item
		self.amount = amount
	end

	last_expense = expenses.last
	expense = Expense.new(some_id += 1, some_item, some_amount)
	expenses << expense
end
