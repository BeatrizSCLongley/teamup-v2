require 'open-uri'
require 'resolv-replace' # resolved an issue with 'rails aborted! Net::OpenTimeout: execution expired'

puts 'Cleaning Database...'

Solution.delete_all
Associate.delete_all

puts 'Creating solutions:'

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607522469/teamup/report_ns_s0x1hl.jpg')
solution_one = Solution.new(
  name: 'neuro-selfie™',
  tagline: 'Start with the individual',
  description_one: 'The neuro-selfie™ is a one-page snapshot based on the latest neuroscience, for where your strengths and weaknesses lie in leading a team to high performance.',
  description_two: 'It takes just a couple of minutes to complete and is a quick yet impactful self-report assessment which will lead to a greater understanding of which actions you can take to become an even stronger team leader.',
  button: 'neuro-selfie™ sample report'
)
solution_one.image.attach(io: file, filename: 'report_ns.jpg', content_type: 'image/jpg')
solution_one.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607522469/teamup/report_180_zzion3.jpg')
solution_two = Solution.new(
  name: 'teamup∞ 180°',
  tagline: 'Develop leaders',
  description_one: 'Based on the teamup∞ model for high performing teams, the teamup∞ 180° diagnostic assessment offers comprehensive, evidence-based feedback on your greatest strengths/development areas in order to drive high performance with your team. It gathers self, team and line manager feedback and offers developmental advice in each dimension.',
  description_two: 'The report includes the latest neuroscience behind each of the six roles, and also provides the barriers to effectiveness which you are demonstrating as an additional platform for your growth.',
  button: 'teamup∞ 180° sample report'
)
solution_two.image.attach(io: file, filename: 'report_180.jpg', content_type: 'image/jpg')
solution_two.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607522469/teamup/report_360_jiozj6.jpg')
solution_three = Solution.new(
  name: 'teamup∞ 360°',
  tagline: 'Develop leaders',
  description_one: 'The teamup∞ 360° is the same as the teamup∞ 180°, except it goes one step further and allows perspective and feedback to be collected from an additional group of people.',
  description_two: 'Depending on which group will bring the most powerful input, you can choose between peers, stakeholders, or even customers. With three different perspectives to compliment your own self-assessment, the development opportunity provided by the teamup∞ 360° is our most significant for the individual leader yet.',
  button: 'teamup∞ 360° sample report'
)
solution_three.image.attach(io: file, filename: 'report_360.jpg', content_type: 'image/jpg')
solution_three.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607522469/teamup/report_teams_mlajb7.jpg')
solution_four = Solution.new(
  name: 'teamup∞ Team Effectiveness',
  tagline: 'Develop teams',
  description_one: 'When teams function optimally, the entire organization benefits because our efforts and impact are amplified.',
  description_two: 'The teamup∞ Team Effectiveness assessment offers comprehensive, evidence-based feedback on your team’s greatest strengths & development areas for driving high performance. It gathers feedback from each team member (including yourself) and offers developmental advice in each dimension, as well as practical suggestions on how to take your team performance to the next level.',
  button: 'teamup∞ Team Effectiveness sample report'
)
solution_four.image.attach(io: file, filename: 'report_teams.jpg', content_type: 'image/jpg')
solution_four.save!

# -----------

solution_five = Solution.new(name: 'Team effectiveness workshop series')
solution_five.save!

# -----------

solution_general = Solution.new(name: 'General')
solution_general.save!

# ------------------------------------------------------------------------------

puts 'Creating associates:'

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607522468/teamup/ali_tisdall_zrlzul.jpg')
associate_ali = Associate.new(
  name: 'Ali Tisdall',
  bio: 'Co-founder of teamup.inc & Coach & Team Facilitator',
  location: 'Marylebone, London, England, United Kingdom'
)
associate_ali.image.attach(io: file, filename: 'ali_tisdall.jpg', content_type: 'image/jpg')
associate_ali.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607522470/teamup/andy_longley_bsrohe.jpg')
associate_andy = Associate.new(
  name: 'Andy Longley',
  bio: 'Co-founder of teamup.inc & Coach & Team Facilitator',
  location: 'Berlin, Germany'
)
associate_andy.image.attach(io: file, filename: 'andy_longley.jpg', content_type: 'image/jpg')
associate_andy.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1610464319/teamup/emma_ferrier_ri3wkt.jpg')
associate_emma = Associate.new(
  name: 'Emma Ferrier',
  bio: 'Operations Director',
  location: 'Wales, United Kingdom'
)
associate_emma.image.attach(io: file, filename: 'emma_ferrier.jpg', content_type: 'image/jpg')
associate_emma.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607522467/teamup/derek__thomson_bkhsss.jpg')
associate_derek = Associate.new(
  name: 'Derek Thomson',
  bio: 'Coach & Team Facilitator',
  location: 'Scotland, United Kingdom'
)
associate_derek.image.attach(io: file, filename: 'derek_thomson.jpg', content_type: 'image/jpg')
associate_derek.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607522473/teamup/yan_martin_ybhshg.jpg')
associate_yan_boston = Associate.new(
  name: 'Yan Martin',
  bio: 'Coach & Team Facilitator',
  location: 'Boston, United States of America'
)
associate_yan_boston.image.attach(io: file, filename: 'yan_martin.jpg', content_type: 'image/jpg')
associate_yan_boston.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1607522473/teamup/yan_martin_ybhshg.jpg')
associate_yan_montreal = Associate.new(
  name: 'Yan Martin',
  bio: 'Coach & Team Facilitator',
  location: 'Montreal, Canada'
)
associate_yan_montreal.image.attach(io: file, filename: 'yan_martin.jpg', content_type: 'image/jpg')
associate_yan_montreal.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1611051998/teamup/nelly_darmali_ipsdth.jpg')
associate_nelly = Associate.new(
  name: 'Nelly Darmali',
  bio: 'Coach & Team Facilitator',
  location: 'Singapore, Republic of Singapore'
)
associate_nelly.image.attach(io: file, filename: 'nelly_darmali.jpg', content_type: 'image/jpg')
associate_nelly.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1610527226/teamup/matt_harrison_vwxfax.jpg')
associate_matt = Associate.new(
  name: 'Matt Harrison',
  bio: 'Coach & Team Facilitator',
  location: 'Auckland, New Zealand'
)
associate_matt.image.attach(io: file, filename: 'matt_harrison.jpg', content_type: 'image/jpg')
associate_matt.save!

# -----------

file = URI.open('https://res.cloudinary.com/teamupinc/image/upload/v1616768586/teamup/liana_bagworth_ekvnwd.jpg')
associate_liana_dubai = Associate.new(
  name: 'Liana Bagworth',
  bio: 'Coach & Team Facilitator',
  location: 'Dubai, United Arab Emirates'
)
associate_liana_dubai.image.attach(io: file, filename: 'liana_bagworth.jpg', content_type: 'image/jpg')
associate_liana_dubai.save!

# -----------

file = open('https://res.cloudinary.com/teamupinc/image/upload/v1616768586/teamup/liana_bagworth_ekvnwd.jpg')
associate_liana_toronto = Associate.new(
  name: 'Liana Bagworth',
  bio: 'Coach & Team Facilitator',
  location: 'Toronto, Canada'
)
associate_liana_toronto.image.attach(io: file, filename: 'liana_bagworth.jpg', content_type: 'image/jpg')
associate_liana_toronto.save!

# -----------

file = open('https://res.cloudinary.com/teamupinc/image/upload/v1616768590/teamup/camille_garnier_rw2p7r.jpg')
associate_camille = Associate.new(
  name: 'Camille Garnier',
  bio: 'Digital & Creative Lead',
  location: 'Bordeaux, France'
)
associate_camille.image.attach(io: file, filename: 'camille_garnier.jpg', content_type: 'image/jpg')
associate_camille.save!

# -----------

file = open('https://res.cloudinary.com/teamupinc/image/upload/v1620549471/teamup/mark_adamoulas_acd40x.jpg')
associate_mark = Associate.new(
  name: 'Mark Adamoulas',
  bio: 'Coach & Facilitator',
  location: 'London, England, United Kingdom'
)
associate_mark.image.attach(io: file, filename: 'mark_adamoulas.jpg', content_type: 'image/jpg')
associate_mark.save!

# -----------

file = open('https://res.cloudinary.com/teamupinc/image/upload/v1628662065/teamup/alexandra_schneider_prqpad.jpg')
associate_alexandra = Associate.new(
  name: 'Alexandra Schneider',
  bio: 'Coach & Facilitator',
  location: 'Hamburg, Germany'
)
associate_alexandra.image.attach(io: file, filename: 'alexandra_schneider.jpg', content_type: 'image/jpg')
associate_alexandra.save!

# -----------

puts 'Done'
