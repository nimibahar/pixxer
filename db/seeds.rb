# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#


# Club 2
#
c = Club.create(name: "Tao", city: "Las Vegas", address: "Las Vegas Strip",
      description: "In the Venetian", owner_id: Owner.last)
Photo.create(club_id: c.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460540439/wrxaa61mpe0syuvons2a.jpg"))
sleep(1)
Photo.create(club_id: c.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460540882/k2kj84ymrufqf0qstu9t.jpg"))
sleep(1)
Photo.create(club_id: c.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460540990/qzaeoqc1a5vd0qflliuf.jpg"))
sleep(1)

c1 = Club.create(name: "Wet Republic", city: "Las Vegas", address: "Las Vegas Strip",
      description: "In the MGM Grand", owner_id: Owner.last)
Photo.create(club_id: c1.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460541107/fz2v8cjmr9mt6etwve0g.jpg"))
sleep(1)
Photo.create(club_id: c1.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460541080/uxz2rtmrso0ozjftz5le.jpg"))
sleep(1)
