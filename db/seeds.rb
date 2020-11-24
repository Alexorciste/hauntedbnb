# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Hauntedhouse.destroy_all

  Hauntedhouse.create({ name: "Le Loftus Hall",
  description: "Ce manoir, chargé d’histoire, est hanté après qu’il ait accueilli un inconnu dans les années 60… 1760 plus exactement, à une époque où le site abritait le Redmond Hall, un autre bâtiment où logeait la famille Tottenham.Un soir de nuit noire, la famille Tottenham accueillit un inconnu débarquant de son navire et demandant asile pour la nuit...le diable himself!!!",
  category: "un",
  address: "Hook Head, New Ross, Co. Wexford, Ireland",
  city: "Leinster",
  country: "Ireland",
  price_per_night: 100 })


  Hauntedhouse.create( { name: "Overlook Hôtel",
  description: "Considéré comme l'un des lieux les plus hantés des États-Unis. Des clients de l'hôtel prétendent avoir vu l'apparition d'un petit garçon dans la chambre 418 et de rires d'enfants dans les couloirs. Parmi les autres fantômes identifiés, le spectre d'un cow-boy dans la chambre 428 est signalé tout comme celui de Lord Dunraven qui aurait des gestes déplacés vis-à-vis des femmes ouvrant la penderie de la chambre 4014; et diverses apparitions de Flora Stanley, jouant notamment du piano dans la grande salle de bal. Sont également mentionnées Lucy, une vagabonde morte de froid et Paul, ouvrier décédé d'une crise cardiaque..",
  category: "un",
  address: "",
  city: "Estes Park ",
  country: "Colorado,U.S.A",
  price_per_night: 66})

  Hauntedhouse.create({ name: "La maison de Berkley square",
     description: "une maison de ville hantée sur Berkeley Square à Mayfair, dans le centre de Londres. À la fin du XIXe siècle, elle est devenue l'une des maisons les plus hantées de Londres, avec sa chambre mansardée qui serait hantée par l'esprit d'une jeune femme qui s'y serait suicidée..",
     category: "un",
     address: "50 Berkley Square",
     city: "London.",
     country: "England.A",
     price_per_night: 175 })

  Hauntedhouse.create(
    { name: "The 'Demon House'",
    description: "A woman and her three childrens were possessed. Despite cold temperatures, large black flies swarmed their screened-in porch, footsteps on the basement stairs late at night, basement and kitchen doors creaked open unassisted...",
    category: "un",
    address: "3868 Carolina Street",
    city: "Gary, Indiana",
    country: "USA",
    price_per_night: 55 })

  Hauntedhouse.create(
    { name: "Chateau de Commarque",
    description: "All ghosts are different. In Périgord, at the Château de Commarque, a horse is said to haunt the place. In the Middle Ages, the daughter of the Count of Commarque would have had a lover, who died beheaded. His mount would still wander in search of his master in the meanders of the castle. Many visitors hear the animal, but few say they have seen it.",
    category: "un",
    address: "les eyzies",
    city: "24620 Les eyzies",
    country: "France",
    price_per_night: 200 })

  Hauntedhouse.create(
    { name: "Dunottar's Castle",
    description: "Dunnottar Castle near Stonehaven has witnessed many dramatic chapters in Scottish history and itself contains several ghosts. A little girl dressed in a checkered dress was seen in the brewery, while a man looking like a Viking was seen walking towards the guards' room.",
    category: "un",
    address: "Aberdeenshire, AB39 2TL",
    city: "Stonehaven",
    country: "Scotland",
    price_per_night: 195 })

  Hauntedhouse.create( { name: "Whaley House",
  description: "Thomas Whaley built this family estate in 1857, on the former site of San Diego's first public gallows. Shortly after he moved in, he reported hearing the heavy footsteps of Yankee Jim Robinson, a drifter and thief who was hanged on the site four years before the house was built. Whaley's family history ended up being filled with tragic deaths and suicides—many of which occurred inside the home itself. According to the Whaley House Museum, some of the family members still haunt the landmark, often accompanied by cigar smoke and the smell of heavy perfume.",
  category: "un",
  address: "2476 San Diego Ave, CA 92110",
  city: "Sans Diego",
  country: "USA",
  price_per_night: 129 })

  Hauntedhouse.create({ name: "Amityville",
     description: "On November 13, 1974, Ronald DeFeo Jr. shot and killed six members of his family in this large Dutch Colonial house situated in a suburban neighborhood in Amityville, on the south shore of Long Island, New York.",
     category: "un",
     address: "112 Ocean Avenue",
     city: "Long Island, New York.",
     country: "U.S.A",
     price_per_night: 666 })

  Hauntedhouse.create(
    { name: "La propriété Monte Cristo",
    description: "une propriété construite en 1885 où de nombreux fantômes ont été aperçus? Selon la légende, ces apparitions surnaturelles seraient le résultat de plusieurs morts survenues dans la propriété depuis sa construction. Vous y croiserez surementle fantôme de l’ancienne maîtresse de la propriété, Mme Crawley. Ainsi que celui d’un bébé, mort après avoir chuté dans les escaliers. À cette époque, la nourrice avait assuré avoir été poussée par une force surnaturelle. Une femme de chambre serait aussi tombée «accidentellement» du balcon et un garçon d’écurie serait mort brûlé....Vous doutez encore? Plusieurs témoins ont assuré avoir vu les figures fantomatiques. Des chats mutilés auraient été retrouvés dans la cuisine et des bruits de pas auraient été entendus dans la maison alors que personne ne s’y trouvait.",
    category: "un",
    address: "1 Homestead Ln, Junee NSW 2663, Australie",
    city: "Junee",
    country: "Australia",
    price_per_night: 150 })

  Hauntedhouse.create({ name: "Dunottar's Castle",
  description: "Dunnottar Castle near Stonehaven has witnessed many dramatic chapters in Scottish history and itself contains several ghosts. A little girl dressed in a checkered dress was seen in the brewery, while a man looking like a Viking was seen walking towards the guards' room.",
  category: "un",
  address: "Aberdeenshire, AB39 2TL",
  city: "Stonehaven",
  country: "Scotland",
  price_per_night: 95 })

  Hauntedhouse.create({ name: "la maison qui saigne",
     description: "The Belmer couple move into the house at the end of this dead end. He is a truck driver, she a housewife. In 1986, traces of blood appeared on the walls, for no apparent reason. An old woman in the street still hisses today",
     category: "un",
     address: "74 cité de Mulhouse, 02100 ",
     city: "Saint Quentin",
     country: "France",
     price_per_night: 500 })


puts "Created #{Hauntedhouse.count} hauntedhouse"

