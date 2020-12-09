require "open-uri"

puts 'Cleaning Database...'

Solution.delete_all

puts 'Creating solutions:'

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607518218/teamup/report_ns_kra3h3.jpg')
solution_one = Solution.new(
  name: 'neuro-selfie™',
  tagline: 'Start with the individual',
  description_one: 'The neuro-selfie™ is a one-page snapshot based on the latest neuroscience, for where your strengths and weaknesses lie in leading a team to high performance.',
  description_two: 'It takes just a couple of minutes to complete and is a quick yet impactful self-report assessment which will lead to a greater understanding of which actions you can take to become an even stronger team leader.',
  button: 'neuro-selfie™ sample report'
)
solution_one.photo.attach(io: file, filename: 'report_ns.jpg', content_type: 'image/jpg')
solution_one.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607518216/teamup/report_180_dnqv79.jpg')
solution_two = Solution.new(
  name: 'teamup∞ 180°',
  tagline: 'Develop leaders',
  description_one: 'Based on the teamup∞ model for high performing teams, the teamup∞ 180° assessment offers comprehensive, evidence-based feedback on your greatest strengths/development areas in order to drive high performance with your team. It gathers self, team and line manager feedback and offers developmental advice in each dimension.',
  description_two: 'The report includes the latest neuroscience behind each of the six roles, and also provides the barriers to effectiveness which you are demonstrating as an additional platform for your growth.',
  button: 'teamup∞ 180° sample report'
)
solution_two.photo.attach(io: file, filename: 'report_180.jpg', content_type: 'image/jpg')
solution_two.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607518216/teamup/report_360_mgvzy2.jpg')
solution_three = Solution.new(
  name: 'teamup∞ 360°',
  tagline: 'Develop leaders',
  description_one: 'The teamup∞ 360° is the same as the teamup∞ 180°, except it goes one step further and allows perspective and feedback to be collected from an additional group of people.',
  description_two: 'Depending on which group will bring the most powerful input, you can choose between peers, stakeholders, or even customers. With three different perspectives to compliment your own self-assessment, the development opportunity provided by the teamup∞ 360° is our most significant for the individual leader yet.',
  button: 'teamup∞ 360° sample report'
)
solution_three.photo.attach(io: file, filename: 'report_360.jpg', content_type: 'image/jpg')
solution_three.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607518217/teamup/report_teams_fyfuqf.jpg')
solution_four = Solution.new(
  name: 'teamup∞ Team Effectiveness',
  tagline: 'Develop teams',
  description_one: 'When teams function optimally, the entire organization benefits because our efforts and impact are amplified.',
  description_two: 'The teamup∞ Team Effectiveness assessment offers comprehensive, evidence-based feedback on your team’s greatest strengths & development areas for driving high performance. It gathers feedback from each team member (including yourself) and offers developmental advice in each dimension, as well as practical suggestions on how to take your team performance to the next level.',
  button: 'teamup∞ for teams sample report'
)
solution_four.photo.attach(io: file, filename: 'report_teams.jpg', content_type: 'image/jpg')
solution_four.save!

# -----------

solution_five = Solution.new(name: 'Team effectiveness workshop series')
solution_five.save!

# -----------

solution_general = Solution.new(name: 'General')
solution_general.save!

# ------------------------------------------------------------------------------

puts 'Creating associates:'

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607518215/teamup/ali_tisdall_fowlj7.jpg')
associate_ali = Associate.new(
  name: 'Ali Tisdall',
  bio: 'Founder & CEO: Mind³ & teamup.inc',
  location: 'London, England, United Kingdom'
)
associate_ali.photo.attach(io: file, filename: 'ali_tisdall.jpg', content_type: 'image/jpg')
associate_ali.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607518215/teamup/andy_longley_toewzs.jpg')
associate_andy = Associate.new(
  name: 'Andy Longley',
  bio: 'Co-founder: teamup.inc',
  location: 'Berlin, Germany'
)
associate_andy.photo.attach(io: file, filename: 'andy_longley.jpg', content_type: 'image/jpg')
associate_andy.save!

# -----------

file = URI.open('')
associate_emma = Associate.new(
  name: 'Emma Ferrier',
  bio: 'Operations Director',
  location: 'London, England, United Kingdom'
)
associate_emma.photo.attach(io: file, filename: 'emma_ferrier.jpg', content_type: 'image/jpg')
associate_emma.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607518542/teamup/derek__thomson_ha3xgw.jpg')
associate_derek = Associate.new(
  name: 'Derek Thomson',
  bio: 'Coach & Team Facilitator',
  location: 'Scotland, United Kingdom'
)
associate_derek.photo.attach(io: file, filename: 'derek_thomson.jpg', content_type: 'image/jpg')
associate_derek.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607518553/teamup/yan_martin_jcxasi.jpg')
associate_yan_boston = Associate.new(
  name: 'Yan Martin',
  bio: 'Coach & Team Facilitator',
  location: 'Boston, United States of America'
)
associate_yan_boston.photo.attach(io: file, filename: 'yan_martin.jpg', content_type: 'image/jpg')
associate_yan_boston.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607518553/teamup/yan_martin_jcxasi.jpg')
associate_yan_montreal = Associate.new(
  name: 'Yan Martin',
  bio: 'Coach & Team Facilitator',
  location: 'Montreal, Canada'
)
associate_yan_montreal.photo.attach(io: file, filename: 'yan_martin.jpg', content_type: 'image/jpg')
associate_yan_montreal.save!

# -----------

# file = URI.open('')
# associate_nelly = Associate.new(
#   name: 'Nelly Dormail',
#   bio: 'Coach & Team Facilitator',
#   location: 'Singapore, Republic of Singapore'
# )
# associate_nelly.photo.attach(io: file, filename: 'nelly_dormail.jpg', content_type: 'image/jpg')
# associate_nelly.save!

# -----------

# file = URI.open('')
# associate_matt = Associate.new(
#   name: 'Matt Harrison',
#   bio: 'Coach & Team Facilitator',
#   location: 'Auckland, New Zealand'
# )
# associate_matt.photo.attach(io: file, filename: 'matt_harrison.jpg', content_type: 'image/jpg')
# associate_matt.save!

# -----------

# file = URI.open('')
# associate_liana = Associate.new(
#   name: 'Liana Bagworth',
#   bio: 'Coach & Team Facilitator',
#   location: 'Dubai, United Arab Emirates'
# )
# associate_liana.photo.attach(io: file, filename: 'liana_bagworth.jpg', content_type: 'image/jpg')
# associate_liana.save!

# -----------

# file = URI.open('')
# associate_liana = Associate.new(
#   name: 'Liana Bagworth',
#   bio: 'Coach & Team Facilitator',
#   location: 'Toronto, Canada'
# )
# associate_liana.photo.attach(io: file, filename: 'liana_bagworth.jpg', content_type: 'image/jpg')
# associate_liana.save!

# -----------

puts 'Done'
