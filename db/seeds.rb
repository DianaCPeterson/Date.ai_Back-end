puts "🏕 Seeding matches..."
Match.destroy_all
Profile.destroy_all
User.destroy_all
Description.destroy_all

match1 = Match.create(name: 'Zoe', age: 21, caption:"
Zoe is from Los Angeles, California. She loves music and dancing, adventures and cocktails and a good day at the beach. She loves riding bikes and crossfit and used to be an award winning ballerina. Zoe works as an ad manager and her favorite show is “Mad Men”, but believes that “Godfellas” was a masterpiece.",
image:"https://cdn.dakolor.com/file/7VsadIUZtuPbu4qQg0h0iyC1WLCfC63EgJom/image-0152ehzs.jpg", rating: "4")
match2 = Match.create(name: 'Amber', age: 23, caption:"Amber is from New York and went to NYU where she studied film and television. She currently works in reality TV and her favorite show is “My 600-Lb. Life” and “The Real Housewives of New Jersey”. Her favorite color is pink and she loves getting her nails done, long walks, record stores and food crawls.", image:"https://aquestformeaning-themovie.com/sites/all/themes/custom/eqds_v6/img/accueil/passer-a-l-action.jpg", rating: "1")
match3 = Match.create(name: 'Jennie', age: 25, caption:"Jennie is a librarian from Austin Texas. Jennie loves romantic comedies, date nights, zinfandel wine and dancing. She has two dogs named Bruno and Oscar and lives alone in Brookly, New York. Jennie loves riding bikes, skateboarding, music, dancing karaoke and crossfit. She loves fiction books.", image:"https://content.app-sources.com/s/9067417279580019/uploads/Images/Acne-Natural-Medicine-768x960-0591585.jpg", rating: "3")
match4 = Match.create(name: 'Alice', age: 27, caption:"Alice is a writer from Chicago, Illinois. She grew up in the suburbs and has loved train rides ever since. She likes to write about relationships and loves long movies, suspenseful books, walking, dancing and art. She loves art galleries, paintings and photography. Her favorite TV shows are “Girls” and “Sex and the City”. She almost never gets to the beach, but when she does she likes to swim in the ocean.", image:"https://www.kcdentalaustin.com/wp-content/uploads/2022/04/Girl-Smile.png", rating: "4.5")

puts "🏕 Seeding profiles..."
profile1 = Profile.create(name: 'Ryan', caption: "Ryan is a computer programmer in Brooklyn, New York. He grew up in Queens and went to private school in Manhattan. He loves video games and is currently playing “The Last of Us” and watching the HBO series inspired by the game. He loves staying out late, long walks, craft beer, food tours and experimental theater like “Sleep No More.” He’s also a health nut who loves crossfit.", image: "https://www.brcrecovery.com/spearhead-lodge/wp-content/uploads/sites/5/2019/05/self-esteem.jpg")
profile2 = Profile.create(name: 'Ryan', caption: "Ryan lives in Brooklyn, New York and believes that New York City is the best city on earth. He loves food – the best New York has to offer - pizza, bagels and hotdogs (from the stand). He’s kind and generous - a good guy through and through. His favorite TV shows are “Sopranos” and “Breaking Bad.” He’s currently loving “The Last of Us.” Late nights, long walks and craft beer bar bars make him happy.", image: "https://www.diabetesaustralia.com.au/wp-content/uploads/jay-wennington-CdK2eYhWfQ0-unsplash-683x1024.jpg")
profile3 = Profile.create(name: 'Ryan', caption: "Ryan lives in Greenpoint, Brooklyn and works as a software engineer at a small startup. One day he’d like to have his own startup, but for now he just enjoys New York City - the best city in the world. He loves theater (musical, experimental, plays) - you name it he’s there. He enjoys craft beer and dive bars. Long walks, happy hour, craft beer and crossfit make him happy.", image: "https://cdn.shopify.com/s/files/1/0651/5094/3490/articles/Virgin_Manhattan_Recipe.jpg?v=1661961849.jpeg")
profile4 = Profile.create(name: 'Ryan', caption: "Ryan is a New Yorker and also reads the magazine cover to cover every week. He’s down to earth, but loves classy cocktails, dark bars and craft beer from local breweries. Ryan loves art gallery openings and is something of an artist himself. He paints at night, but has never shown anyone his work. He’s fit - into crossfit, and loves walking.", image: "https://athensoracle.com/wp-content/uploads/2020/09/IMG_2342-2-675x900.jpg")

puts "🏕 Seeding users..."
User.create(first_name: 'Joe', last_name: 'Johnson', password: "123", email: "joe@joe.com", handle: "Joe6")
User.create(first_name: 'Amy', last_name: 'Thompson', password: "123", email: "amy@amy.com", handle: "DynamiteAmy")
User.create(first_name: 'Mandy', last_name: 'Cohen', password: "123", email: "mandy@mandy.com", handle: "CohenCat")
User.create(first_name: 'Matt', last_name: 'Peterson', password: "123", email: "matt@matt.com", handle: "MattPNYC")

puts "🏕 Seeding descriptions..."
Description.create(about_me: "Joe likes golf", looking_for: "Amy likes magic", match_id: match1.id, profile_id: profile1.id)
Description.create(about_me: "Joe likes TV", looking_for: "Amy likes the gym", match_id: match2.id, profile_id: profile2.id)
Description.create(about_me: "Joe likes dogs", looking_for: "Amy likes cats", match_id: match3.id, profile_id: profile3.id)
Description.create(about_me: "Joe likes books", looking_for: "Amy likes TV", match_id: match4.id, profile_id: profile4.id)

puts "✅ Done seeding!"