10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Some text"
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

9.times do |portfolio1s|
  Portfolio1.create!(
    title: "P title #{portfolio1s}",
    subtitle: 'my great portfolio',
    body: 'Some text',
    main_image: "http://via.placeholder.com/600x400", 
    thumb_image: "http://via.placeholder.com/350x200"
    )
end


puts "9 Portfolios created!"