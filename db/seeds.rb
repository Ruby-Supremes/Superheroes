puts "Lets explore about powers💪💪"

Power.create(
        name: "Divinity",
        description:'It would be difficult knowing where to start, the sheer scale of your dimension-crossing power would be pretty overwhelming'
    )
Power.create(
        name: "Wealth",
        description:'Ok so it is not technically a superpower, but that does not mean you cannot buy one. If you want to become a superhero though, having lots of money is the best way to start – who need physical powers when you have the cool car and gadgets…Right Batman?'
    )
Power.create(
        name: "Time Bending/ Freezing",
        description:"The possibilities are close to limitless. You could get things done in super-efficient real-time, impose a nap-break whenever you felt like it, and you'd need never get in trouble again. And you could always, y'know, do something good and save someone's life or whatever."
    )
Power.create(
        name: "Phasing",
        description:"Casper is your middle name – you’ll always be able to take the shortest route between two points. Equally you won't have to use the stairs as you can sink through the floor to the room below. Perfect for speedy getaways."
    )
Power.create(
        name: "Natural Physical Mutation",
        description:"Each power is unique. Wings would be insanely cool (flight, again), but we could do without webbed feet or Robin Williams-esque body hair."
    )

Hero.create(
    name: "Batman",
    super_name: "Bruce Wayne"
)
Hero.create(
    name: "Spider-Man",
    super_name: "Peter Parker"
)
Hero.create(
    name: "Iron Man",
    super_name: "Tony Stark"
)
Hero.create(
    name: "Captain America",
    super_name: "Steve Rogers"
)
Hero.create(
    name: "Green Hornet",
    super_name: "Britt Reid"
)
Hero.create(
    name: "Incredible Hulk",
    super_name: "David Bruce Banner"
)
20.times do 
    HeroPower.create(
        strength: ["Strong", "Weak", "Average"].shuffle.first,
        hero_id: Hero.all[rand(Hero.count)].id,
        power_id: Power.all[rand(Power.count)].id
    )
end
puts "Smart Power 💪"