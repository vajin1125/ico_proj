import requests
from django import template
register = template.Library()
def get_data_from_api(url): # get btc/eth price 24h % change
	r = requests.get(url)
	if (r.status_code != 200):	#Fail
		return ""
	data = r.json()
	return data[0]
@register.inclusion_tag('main/btc_eth.html',name = "btc_eth")
def get_btc_eth_info():
	btc_api_url  ="https://api.coinmarketcap.com/v1/ticker/bitcoin/"
	eth_api_url = "https://api.coinmarketcap.com/v1/ticker/ethereum/"
	data = get_data_from_api(btc_api_url);
	bitcoin_info = {'price':float(data['price_usd']),'change':float(data['percent_change_24h'])}
	print(bitcoin_info)
	data = get_data_from_api(eth_api_url);
	eth_info = {'price':float(data['price_usd']),'change':float(data['percent_change_24h'])}
	print(eth_info)
	return {'bitcoin_info':bitcoin_info,'eth_info':eth_info}