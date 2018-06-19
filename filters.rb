# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program


def find(id)
  #Your code Here
  @candidates.each do |candidate|
    if candidate[:id] == id
      pp candidate
    else
      nil
    end
  end
end

def experienced?(candidate)
  # Your code Here
  if candidate[:years_of_experience] >= 2
     true
  else
     false
  end
end

def qualified_candidates?(candidates)
  @candidates.each do |candidate|
    if experienced?(candidate) && have_100_github_points?(candidate) && know_Ruby_Python?(candidate) && applied_last_15_days?(candidate) && over_age_17?(candidate)
      pp candidate
    end
  end
end

def have_100_github_points?(candidate)
  if candidate[:github_points] >= 100
     true
  else
     false
  end
end

def know_Ruby_Python?(candidate)
  if candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
    true
  else
    false
  end
end

def applied_last_15_days?(candidate)
  if candidate[:date_applied] <= 15.days.ago.to_date
    true
  else
    false
  end
end

def over_age_17?(candidate)
  if candidate[:age] > 17
    true
  else
    false
  end
end

def ordered_by_qualifications?(candidates)
  candidates.sort_by {|candidate| [candidate[:years_of_experience], candidate[:github_points]]}.reverse
end
# {
#     id: 5,
#     years_of_experience: 4,
#     github_points: 293,
#     languages: ['C', 'Ruby', 'Python', 'Clojure'],
#     date_applied: 5.days.ago.to_date,
#     age: 26
#   },

