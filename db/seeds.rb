Heroine.destroy_all
Power.destroy_all
HeroinePower.destroy_all 

powers = [
  {name: "super strength", description: "gives the wielder super-human strengths" },
  {name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" },
  {name: "super human senses", description: "allows the wielder to use her senses at a super-human level" },
  {name: "elasticity", description: "can stretch the human body to extreme lengths" }
]

powers.each {|power| Power.create(power)}

heroines = [
  {name: "Kamala Khan", super_name: "Ms. Marvel"},
  {name: "Doreen Green", super_name: "Squirrel Girl" },
  {name: "Gwen Stacy", super_name: "Spider-Gwen" },
  {name: "Janet Van Dyne", super_name: "The Wasp" },
  {name: "Wanda Maximoff", super_name: "Scarlet Witch" },
  {name: "Carol Danvers", super_name: "Captain Marvel" },
  {name: "Jean Grey", super_name: "Dark Phoenix" },
  {name: "Ororo Munroe", super_name: "Storm" },
  {name: "Kitty Pryde", super_name: "Shadowcat" },
  {name: "Elektra Natchios", super_name: "Elektra" }
]

heroines.each { |heroine| Heroine.create(heroine) }


hp1 = HeroinePower.create(power_id: Power.all[0].id, heroine_id: Heroine.all[0].id, strength: "Strong")
hp2 = HeroinePower.create(power_id: Power.all[1].id, heroine_id: Heroine.all[1].id, strength: "Weak")
hp3 = HeroinePower.create(power_id: Power.all[2].id, heroine_id: Heroine.all[2].id, strength: "Average")
hp4 = HeroinePower.create(power_id: Power.all[3].id, heroine_id: Heroine.all[3].id, strength: "Strong")
