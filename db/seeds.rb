# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying seeds..."

Response.destroy_all
Referral.destroy_all
Inquiry.destroy_all
Referral.destroy_all
Favor.destroy_all
User.destroy_all

puts "Creating users..."

User.create(
  email: "amandaleahng@gmail.com",
  password: "password",
  first_name: "Amanda",
  last_name: "Ng",
  oneliner: "Helping to drive financial inclusion and empowerment of rural Indonesian women through a digital platform",
  funfact: "Currently very into Tostito Hint of Lime",
  city: "Jakarta",
  industry: "Fintech",
  linkedin: "https://www.linkedin.com/in/amandalng",
  referrer: "Thomas Eng",

  admin: true,
  status: "verified"
  )

# User.create(
#   email: "carolyn@gmail.com",
#   password: "password",
#   first_name: "Carolyn",
#   last_name: "Marsing",
#   oneliner: "Passionate about shipping and negotiating with pirates. Voracious reader and proud Cal grad!",
#   funfact: "Loves people who are con-si-de-rate",
#   city: "Jakarta",
#   industry: "Shipping",
#   referrer: "Amanda Ng",

#   admin: false,
#   verified: true
#   )

# User.create(
#   email: "glenys@gmail.com",
#   password: "password",
#   first_name: "Glenys",
#   last_name: "Kirana",
#   oneliner: "Works to make air travel across SE Asia affordable and accessible for all!",
#   funfact: "Twins with Amanda Ng",
#   city: "Jakarta",
#   industry: "Travel",
#   referrer: "Amanda Ng",

#   admin: false,
#   verified: true
#   )

User.create(
  email: "jeshua@gmail.com",
  password: "password",
  first_name: "Jeshua",
  last_name: "John",
  oneliner: "SF-based and working to empower workers and transform companies for the better",
  funfact: "Suddenly very into gardening and succulents",
  city: "San Francisco",
  industry: "Nonprofit",
  linkedin: "https://www.linkedin.com/in/jkj",
  referrer: "Amanda Ng",

  admin: false,
  status: "verified"
  )

User.create(
  email: "audie@gmail.com",
  password: "password",
  first_name: "Audie",
  last_name: "Wibowo",
  oneliner: "Recently transferred from CS Singapore to Hong Kong driving cool internal strategic initiatives",
  funfact: "Obsessed with other people's dogs (doodles only)",
  city: "Hong Kong",
  industry: "Finance",
  linkedin: "https://www.linkedin.com/in/aedith",
  referrer: "Amanda Ng",

  admin: false,
  status: "unverified"
  )

# User.create(
#   email: "chris@gmail.com",
#   password: "password",
#   first_name: "Chris",
#   last_name: "Lew",
#   oneliner: "Works in strategy consulting for top biomedical institutions worldwide",
#   funfact: "Reports to queen Raja",
#   city: "Los Angeles",
#   industry: "Consulting",
#   linkedin: "https://www.linkedin.com/in/christopherjlew",
#   referrer: "Amanda Ng",

#   admin: false,
#   verified: true
#   )

# User.create(
#   email: "dika@gmail.com",
#   password: "password",
#   first_name: "Dika",
#   last_name: "Lim",
#   oneliner: "Designing spaces in Southeast Asia to optimize their form, function, and your sanity",
#   funfact: "Not about me, but fun fact nonetheless: the healthy amount of almonds a day is 7",
#   city: "Jakarta",
#   industry: "Architecture",
#   linkedin: "https://www.linkedin.com/in/dikalim",
#   referrer: "Amanda Ng",

#   admin: false,
#   verified: true
#   )

# User.create(
#   email: "gabe@gmail.com",
#   password: "password",
#   first_name: "Gabriel",
#   last_name: "Concepcion",
#   oneliner: "Proud Googler working to make sure the information you consume is safe and accurate",
#   funfact: "Always down for a game of mahjong",
#   city: "Singapore",
#   industry: "Technology",
#   referrer: "Amanda Ng",

#   admin: false,
#   verified: false
#   )

# User.create(
#   email: "ajay@gmail.com",
#   password: "password",
#   first_name: "Ajay",
#   last_name: "Taunk",
#   oneliner: "Working in VC to cool startups in SE Asia reach scale in and make impact",
#   funfact: "Staunchly pro-Haagen Daas over Ben and Jerry's",
#   city: "Singapore",
#   industry: "Venture Capital",
#   referrer: "Vince Racho",

#   admin: false,
#   verified: false
#   )

User.create(
  email: "thom.john.eng@gmail.com",
  password: "password",
  first_name: "Thomas",
  last_name: "Eng",
  oneliner: "Recently moved to Jakarta from New York to help build Zenius Education across Indonesia",
  funfact: "Often models hair after Avatar character Sokka",
  city: "Jakarta",
  industry: "Education",
  linkedin: "https://www.linkedin.com/id/thomas-eng-1953a755/",
  referrer: "Amanda Ng",

  admin: true,
  status: "verified"
  )

puts "Creating favors..."

# Favor.create(
#   favor: "Any KL food recommendations?",
#   significance: "I'm making a weekend KL trip and hear the city has BOMB food that I'd like to try!",
#   details: "If anyone has a KL restaurant/bar that they've visited, tried, and loved, please shoot me an email!",

#   introduction: "Passionate about shipping and negotiating with pirates",
#   user: User.second
#   )

# Favor.create(
#   favor: "Please like and share my new YouTube video on how to nail your college essay!",
#   significance: "My education consultancy is aiming to make higher education in the US/CA/UK more accessible to students/families in Indonesia - of course, this includes writing a killer essay to get into a great school, so wanted to share some advice on how to get started!",
#   details: "I've provided a youtube link below to the video itself - feel free to like, share, forward, circulate to students, parents, educators, etc. to whom this might be relevant and helpful. If you think I can help beyond this video, also happy to chat directly!",
#   link: "www.youtube.com/12345678",

#   introduction: "Building Origo Edu, college admissions consultancy in Southeast Asia",
#   user: User.first
#   )

Favor.create(
  favor: "Can you introduce me to anyone in edtech in Southeast Asia / Indonesia?",
  significance: "New in the region and industry and was hoping to better understand the edtech landscape in Southeast Asia",
  details: "If you know anyone who is or has worked in the education startup industry, especially in Indonesia, would appreciate a quick introduction. Feel free to share my LinkedIn profile with them!",
  link: "www.linkedin.com/12345678",

  introduction: "Recently moved to Jakarta from New York to help build Zenius Education across Indonesia",
  user: User.last
  )

Favor.create(
  favor: "Looking for cool education- /food- /sustainability-related nonprofits in Southeast Asia to support/partner with!",
  significance: "I'm running a social enterprise/project selling shirts to raise awareness for and financially support impactful nonprofits in the region.",
  details: "If you know of or are in contact with any interesting nonprofits (looking for something smaller than the UNICEFs of the world) that work to solve issues in the education, food, or sustainability space, please share the name of the organization and any other details you are comfortable sharing. Even better would be an introduction to someone working there :)",

  introduction: "Building Origo Edu, college admissions consultancy in Southeast Asia",
  user: User.first
  )

# puts "Creating inquiries..."

# Inquiry.create(
#   subject: "Interested to join",
#   message: "This sounds like a super cool community to be a part of. I want in.",

#   first_name: "Barack",
#   last_name: "Obama",
#   email: "ex.pontus@gmail.com",

#   responded: false
# )

# Inquiry.create(
#   subject: "Interested to join",
#   message: "I have SO many favors I'd like completed. Please let me in.",

#   first_name: "Vince",
#   last_name: "Racho",
#   email: "vince@gmail.com",

#   responded: true
# )

# Inquiry.create(
#   subject: "Would like an introduction",
#   message: "This Thom Eng guy sounds AWESOME. Can I have his numba?",

#   user: User.second,

#   responded: true
# )

# Inquiry.create(
#   subject: "Would like an introduction",
#   message: "I am very interested in negotiating with pirates, but unfortunately have very little experience. Can I please get an introduction to CAROLYN MARSING?",

#   user: User.third,

#   responded: false
# )

# puts "Creating referrals..."

# Referral.create(
#   first_name: "Sharon",
#   last_name: "Koharjo",
#   email: "sharon@gmail.com",
#   user: User.first
# )
