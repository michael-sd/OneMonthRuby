require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('')

form = page.forms.first

form['q'] = passport

page = form.submit

page.search('#results h3').each do |h3|
	puts h3.text.strip