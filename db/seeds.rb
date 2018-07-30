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

8.times do |portfolio1s|
  Portfolio1.create!(
    title: "P title #{portfolio1s}",
    subtitle: 'Ruby on Rails',
    body: 'Some text',
    main_image: "http://via.placeholder.com/600x400", 
    thumb_image: "http://via.placeholder.com/350x200"
    )
end

1.times do |portfolio1s|
  Portfolio1.create!(
    title: "P title #{portfolio1s}",
    subtitle: 'Angular',
    body: 'Some text',
    main_image: "http://via.placeholder.com/600x400", 
    thumb_image: "http://via.placeholder.com/350x200"
    )
end


puts "9 Portfolios created!"

3.times do |technology|
  Portfolio1.last.technologies.create!(
    name: "Technology #{technology}"
    )
end

puts "3 Techs created!"

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
