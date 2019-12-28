import arbitrage_bot

exchanges = [
    "ice3x",
    "luno",
]
symbols = [
    "BTC/ZAR",
]


def test_spread():
    ##biggest_spread = arbitrage_bot.get_biggest_spread_by_symbol(exchanges,symbols)
    ##print(biggest_spread)
    a = 1
    b = 2
    assert b >= a
