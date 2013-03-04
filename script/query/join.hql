SELECT a.ymd, a.price_close, b.price_close
FROM stocks a JOIN stocks b ON a.ymd = b.ymd
WHERE a.symbol = 'AAPL' AND b.symbol = 'IBM';

SELECT a.ymd, a.symbol, a.price_close, d.dividend
FROM dividends d JOIN stocks a  
ON a.ymd = d.ymd AND a.symbol = d.symbol
WHERE a.symbol = 'AAPL';


