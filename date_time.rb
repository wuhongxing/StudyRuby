require 'time'

date = Date.today
p date
p date.year, date.month, date.day
date_time = DateTime.now
p date_time

p Date.parse('04/09/2022')
p Date.strptime('04/09/2022', '%m/%d/%Y')
p Time.now.strftime('%Y-%m-%d')
