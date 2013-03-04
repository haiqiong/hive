SELECT s.ymd, s.symbol, s.price_close
FROM stock s
DISTRIBUTE BY s.symbol
SORT BY s.ymd ASC, s.symbol DESC

