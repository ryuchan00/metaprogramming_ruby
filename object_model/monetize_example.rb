require 'monetize'

# ref: https://github.com/RubyMoney/money#i18n
I18n.enforce_available_locales = false

bargain_price = 100.to_money("USD")
puts bargain_price.format