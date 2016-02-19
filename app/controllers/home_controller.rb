class HomeController < ApplicationController
  def index
  	@user = User.new
  	@user1 = User.new
  end

  def test
	Ebayr.dev_id = "84328bd9-cd6b-4d03-9695-ef01ffa377cd"

	# This is only needed if you want to retrieve user tokens
	Ebayr.authorization_callback_url = "https://my-site/callback-url"

	callback = Ebayr.authorization_callback_url 
	Ebayr.auth_token = "AgAAAA**AQAAAA**aAAAAA**BDPFVg**nY+sHZ2PrBmdj6wVnY+sEZ2PrA2dj6wFk4GhD5eDpw+dj6x9nY+seQ**CrQDAA**AAMAAA**+F5R0t54LTZu8yZ4ozvnas3KGYIbm7BMMJ7TT0KigNah9kq35J+2eHbcZiE8BB/R0CFqrfk7CThHPLIG+6a+VWpTNDbtqQKQnDF7uXm2YoiCr5iTp7h5TROfN/BMXnIznK3gG5B1x1WVG8l7gfnNkLBBo1z67nJDNcrlzFo8t2IcK21g3mz7rla7kpZyHRmVgiLJ95RZzF0P1UQMhF1xZSMXWrc4RdBElpgvtukjoOXTSRpytLHqs+d2amQX7zw5ptUsaVwEE0/mAyAoIB5UD7e4dp/ABtDb/nDgC6NTlbTXKzWgaY6wBe6soIRO+SvGSbFmOPgrUBxIH8XrynH5INxd4eo1gFT1UwIBhgtRwYEO0Jg3LJ21GVcy4BH3rHKWnoejs8RPjCpxZmgCZ6oCeojPM4bJIn8I6O2SjuGs71JTYKMd16whmZtN+BxhucUumTaX1zaohFIlYoQA4DAV2eVLP5w+kCBOxYRDjJJuH5tx28z/mmUPe8QqNn+TVDHVaM640yZYeg1dCpsHFwuOvDVKViIJekxPf1yLhgSxxqbzLYWhpF2NnlemwsXkl5FpMg46K/1yqm/onWMFeVxB0wRArXMVnirPohYAJfgILZjK6Wn+OdBYDcO+oAPH3Nvn4YOcoLQ0rdFo38NCRpkZ0AgOAUiNvBOJSGZ+hEAOLl14hTbwfrBr/YR8+tWwklmAobdN1bWBpQa1C17duXODMAe7LyP1wboT82ky5+7jRCRzAJG6k1eOK+ekQ1OYdCg7"
	# Ebayr.auth_token = callback

	Ebayr.app_id = "NewYorkC-Kollecto-SBX-9d2d15e9e-2bc63796"

	Ebayr.cert_id = "SBX-d2d15e9e6a17-6d19-407f-b3fd-8264"

	Ebayr.ru_name = "New_York_Code_a-NewYorkC-Kollec-hnupfvg"

	# Set this to true for testing in the eBay Sandbox (but remember to use the
	# appropriate keys!). It's true by default.
	Ebayr.sandbox = true
  end
end
