3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Some text",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created!"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
    )
end

puts "5 skills created!"

# 8.times do |portfolio1s|
#   Portfolio1.create!(
#     title: "P title #{portfolio1s}",
#     subtitle: 'Ruby on Rails',
#     body: 'Some text',
#     main_image: "http://via.placeholder.com/600x400", 
#     thumb_image: "http://via.placeholder.com/350x200"
#     )
# end

  m = Portfolio1.create!(
        title: "Easy Blood",
        subtitle: 'Bring donor together to save lives',
        body: 'Bringing people together by geolocation and preferred schedule generating crowdsourced campaings to save lives',
        main_image: "thumb.png", 
        thumb_image: "thumb.png",
        name: "https://github.com/mscorzoni/Overtime"
        )
  Technology.create!(name: 'Ruby On Rails', portfolio1_id: m.id)
  Technology.create!(name: 'Javascript', portfolio1_id: m.id)

  n = Portfolio1.create!(
        title: "Overtime",
        subtitle: 'Controlling employees overtime',
        body: 'App developed to a company controls employees overtime request, admin approval and dashboard metrics',
        main_image: "overtime.png", 
        thumb_image: "overtime.png",
        name: "https://github.com/mscorzoni/Overtime"
        )
  Technology.create!(name: 'Ruby On Rails', portfolio1_id: n.id)
  Technology.create!(name: 'Javascript', portfolio1_id: n.id)


puts "2 Portfolios created!"

# 3.times do |technology|
#   Portfolio1.last.technologies.create!(
#     name: "Technology #{technology}"
#     )
# end

# puts "3 Techs created!"

User.create!(
    email: "test@test.com",
    name: "Test", 
    roles: "site_admin",
    password: '111111',
    password_confirmation: '111111'
  )

puts 'Admin created!'

User.create!(
    email: "test2@test.com",
    name: "Regular User", 
    password: '111111',
    password_confirmation: '111111'
  )

puts 'Regular user created!'
