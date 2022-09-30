module CurrencyHelper
  def self.format_currency(amount)
    currency_symbol = '$'
    currency_symbol_position = 'before'
    if amount.empty?
      return ""
    end
    if currency_symbol_position == 'before'
      amount = currency_symbol + amount
    else
      amount = amount + currency_symbol
    end
    amount
  end
end