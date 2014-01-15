require_relative 'source'
require 'pry'

def valid_ip_addresses(object)
	object.scan(/\d{2,3}\.\d{1,3}\.\d{1,2}\.\d{1,2}/)
end

def valid_mit_ip_addresses(object)
	object.scan(/18\.\d{1,3}\.\d{1,2}\.\d{1,2}/)
end

def non_mit_ip_addresses(object)
	valid_ip_addresses(object) - valid_mit_ip_addresses(object)
end

def valid_phone_numbers(object)
	object.scan(/[2-9]{1}\d{0,2}\-\d{0,3}\-?\d{4}/).uniq # uniq removes any duplicated values
end

def area_codes(object)
	object.scan(/[2-9]{1}\d{2}-\d{3}-\d{4}/).uniq.map { |phone_number| phone_number[0..-10]} # delete last 10 characters
end

def email_addresses(object)
	object.scan(/\w+@\w+\.\w{3}/)
end

def zip_codes(object)
	object.scan(/\b\d{5}\b/)
end

def hex_colors(object)
	object.scan(/#[a-f0-9]{6}/).map { |color| color[1..6]}
end

