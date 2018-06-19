# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

# pp @candidates

# find(7)

# puts experienced?(@candidates[0])
# puts experienced?(@candidates[1])
# puts experienced?(@candidates[2])
# puts experienced?(@candidates[3])
# puts experienced?(@candidates[4])
# puts experienced?(@candidates[5])
# puts experienced?(@candidates[6])
# puts have_100_github_points?(@candidates[4])
# puts know_Ruby_Python?(@candidates[0])
# puts know_Ruby_Python?(@candidates[1])
# puts Applied_last_15_days?(@candidate[0])
# puts applied_last_15_days?(@candidates[0])
# puts applied_last_15_days?(@candidates[1])
# puts applied_last_15_days?(@candidates[2])
# puts over_age_17?(@candidates[6])
# puts @candidates[1][:date_applied]

# qualified_candidates?(@candidates)

pp ordered_by_qualifications?(@candidates)


