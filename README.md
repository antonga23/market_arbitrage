
# Market arbitrage

This bot implements a market arbitrage strategy using various cryptocurrencies on different exchanges.

The bot uses the most popular open-source trading library [ccxt](https://github.com/ccxt/ccxt) in order to find best price spread on the market.

---

## Requirements

* **Dokcer**

## Installation

```bash
git clone https://github.com/antonga23/market_arbitrage.git

cd market_arbitrage

docker build ./ -t $image_name

docker run -p $port:3000 -d --name $container_name $image_name

docker logs -f $container_name
```

## Usage

First, you need to specify the markets you are going to target. Here is a [list](https://github.com/ccxt/ccxt#supported-cryptocurrency-exchange-markets) of supported markets by the [ccxt](https://github.com/ccxt/ccxt/wiki) library:

```python
exchanges = [
    "binance",
    "bittrex",
    "hitbtc",
    "poloniex",
    "luno",
    "bitmex",
    "ice3x",
]
```

In order for the bot to be able to fetch market data, it needs an **API Key** and a **Secret Token** for each market (exchange) you are going to target:

```python
exchangesData = {
    "ice3x": {
        "apiKey": "",
        "secret": "",
        "transactionFee": 0.001
    },
    "binance": {
        "apiKey": "",
        "secret": "",
        "transactionFee": 0.001
    },
    "bittrex": {
        "apiKey": "",
        "secret": "",
        "transactionFee": 0.0025
    },
    "poloniex": {
        "apiKey": "",
        "secret": "",
        "transactionFee": 0.0025
    },
    "luno": {
        "apiKey": "",
        "secret": "",
        "transactionFee": 0.002
    },
}
```

Secondly, you need to specify for which symbols should the bot look, here is a list of the most common ones:

```python
symbols = [
    "ETH/ZAR",
    "BTC/ZAR",
    "BTC/ETH",
    "BCH/USDT",
    "DASH/USDT",
    "XMR/USDT",
    "LTC/USDT",
]
```

You can also specify min spread and min profit that you are interested in:

```python
min_spread = 1 ## as percentages 
min_profit = 0 ## as percentages
```

---

Take in mind that there are two ways to create buy orders: [create_market_buy_order](https://github.com/ccxt/ccxt/wiki/Manual#market-orders) and [create_limit_buy_order](https://github.com/ccxt/ccxt/wiki/Manual#limit-orders). You should decide for yourself what method fits you better.

For more information on how each method works, take a look at the official [ccxt](https://github.com/ccxt/ccxt/wiki) documentation.

Also huge credit to @Andrei Zgirvaci
