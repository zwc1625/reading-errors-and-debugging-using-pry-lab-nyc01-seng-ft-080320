turtles = [{name: "Donatello", weapon: "bo-staff", traits: ["serious", "leader"]}, {name: "Michaelangelo", weapon: "nunchuks", traits: ["party dude"]}, {name: "Raphael", weapon: "sais", traits: ["cool", "rude"]}, {name: "Leonardo", weapon: "katanas", traits: ["loves being a tutrle"]}]

def turtle_traits(turtle_hash)
  turtle_hash.map do |turtle|
    turtle[:traits].map do |trait|
      trait
    end
  end
end

turtle_traits(turtles)
