puts 'Cleaning Database...'

Solution.delete_all

puts 'Creating solutions:'

solution_one = Solution.new(
  name: 'neuro-selfie™',
  tagline: 'Start with the individual',
  description_one: 'The neuro-selfie™ is a one-page snapshot based on the latest neuroscience, for where your strengths and weaknesses lie in leading a team to high performance.',
  description_two: 'It takes just a couple of minutes to complete and is a quick yet impactful self-report assessment which will lead to a greater understanding of which actions you can take to become an even stronger team leader.',
  image: File.open('app/assets/images/report_ns.jpg'),
  button: 'neuro-selfie™ sample report'
)
solution_one.save!

# -----------

solution_two = Solution.new(
  name: 'teamup∞™ 180°',
  tagline: 'Develop leaders',
  description_one: 'Based on the teamup∞™ model for high performing teams, the teamup∞™ 180° assessment offers comprehensive, evidence-based feedback on your greatest strengths/development areas in order to drive high performance with your team. It gathers self, team and line manager feedback and offers developmental advice in each dimension.',
  description_two: 'The report includes the latest neuroscience behind each of the six roles, and also provides the barriers to effectiveness which you are demonstrating as an additional platform for your growth.',
  image: File.open('app/assets/images/report_180.jpg'),
  button: 'teamup∞™ 180° sample report'
)
solution_two.save!

# -----------

solution_three = Solution.new(
  name: 'teamup∞™ 360°',
  tagline: 'Develop leaders',
  description_one: 'The teamup∞™ 360° is the same as the teamup∞™ 180°, except it goes one step further and allows perspective and feedback to be collected from an additional group of people.',
  description_two: 'Depending on which group will bring the most powerful input, you can choose between peers, stakeholders, or even customers. With three different perspectives to compliment your own self-assessment, the development opportunity provided by the teamup∞™ 360° is our most significant for the individual leader yet.',
  image: File.open('app/assets/images/report_360.jpg'),
  button: 'teamup∞™ 360° sample report'
)
solution_three.save!

# -----------

solution_four = Solution.new(
  name: 'teamup∞™ Team Effectiveness',
  tagline: 'Develop teams',
  description_one: 'When teams function optimally, the entire organization benefits because our efforts and impact are amplified.',
  description_two: 'The teamup∞™ Team Effectiveness assessment offers comprehensive, evidence-based feedback on your team’s greatest strengths & development areas for driving high performance. It gathers feedback from each team member (including yourself) and offers developmental advice in each dimension, as well as practical suggestions on how to take your team performance to the next level.',
  image: File.open('app/assets/images/report_teams.jpg'),
  button: 'teamup∞™ for teams sample report'
)
solution_four.save!

# -----------

solution_five = Solution.new(name: 'Team effectiveness workshop series')
solution_five.save!

# -----------

solution_general = Solution.new(name: 'General')
solution_general.save!

puts 'Done'
