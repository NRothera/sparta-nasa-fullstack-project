DROP TABLE IF EXISTS delicious_food;

CREATE TABLE delicious_food (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT,
  image TEXT
);

INSERT INTO delicious_food (title , body, image) VALUES ('Flatwoods Monster' , 'Some accounts record that the creature appeared to have "no visible arms" due to its incredible speed, while others reported long, stringy arms, protruding from the front of its body, with long, claw-like fingers. The creature is referred to as the "Lizard Monster" on the March 10, 2010, episode of MonsterQuest. Some witnesses reported seeing a large, pulsating red ball of light that hovered above or rested on the ground. Ufologists believe that it may have been a powered craft that the entity had piloted.', 'http://www.wvculture.org');
INSERT INTO delicious_food (title , body, image) VALUES ('Varginha UFO incident' , 'According to media reports, the creature was first sighted by three women ranging from 14 to 22 years old: sisters Liliane and Valquíria Fátima Silva, and their friend Kátia Andrade Xavier. They allegedly saw the creature in the afternoon of January 20, 1996: A biped about 1.6 metres (5 ft), with a large head and very thin body, with V-shaped feet, brown skin, and large red eyes. It seemed to be wobbly or unsteady, and the girls assumed it was injured or sick.

Go to https://en.wikipedia.org/wiki/Varginha_UFO_incident for more informtion','http://www.latest-ufo-sightings.net/wp-content/uploads/2014/12/Flatwoods-monster.png');
INSERT INTO delicious_food (title , body,image) VALUES ('Lonnie Zamora Incident' , 'https://en.wikipedia.org/wiki/Lonnie_Zamora_incident

The Lonnie Zamora incident was an alleged UFO close encounter which occurred on Friday, April 24, 1964, at about 5:50 p.m., on the outskirts of Socorro, New Mexico. Several primary witnesses emerged to report their version of the event, which included the crafts approach, conspicuous flame, and alleged physical evidence left behind immediately afterward. Lonnie Zamora, a Socorro police officer who was on duty at the time, claimed to have come closest to the object and provided the most prolonged and comprehensive account. Some physical trace evidence left behind—burned vegetation and soil, ground landing impressions, and metal scrapings on a broken rock in one of the impressions—was subsequently observed and analyzed by investigators for the military, law enforcement, and civilian UFO groups.','https://noriohayakawa.fil');
INSERT INTO delicious_food (title , body,image) VALUES ('The Mothman Prophecies' , 'The book relates Keels accounts of his investigation into alleged sightings of a large, winged creature called Mothman in the vicinity of Point Pleasant, West Virginia, during 1966 and 1967. It combines these accounts with his theories about UFOs and various supernatural phenomena, ultimately connecting them to the collapse of the Silver Bridge across the Ohio River on December 15, 1967. Official investigations in 1971 determined it was caused by stress corrosion cracking in an eyebar in a suspension chain.','https://i0.wp.com/weirds');
