import quandl

quandl.ApiConfig.api_key = 'usZHh_yAsopuc9bforqC'
data = quandl.get('BCHARTS/BITFLYERUSD', start_date='2021-10-13', end_date='2021-10-13')

print(data)