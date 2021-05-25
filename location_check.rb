require 'ipinfo'

access_token = '1d565ebcf07e24'
handler = IPinfo::create(access_token)

details = handler.details()
$country = details.country              # Obtain 2 letters country code
$country_name = details.country_name    # Obtain full country name