# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_a = User.create!(email: "abert@newtech.com", password: "123456")
user_b = User.create!(email: "lovebert@nstarkent.com", password: "123456")
user_c = User.create!(email: "hopmenow@nawesometech.com", password: "123456")
user_d = User.create!(email: "newbody@techmesoon.com", password: "123456")

genius_a = Genius.new(name: "Albert Einstein", year: 1879, cost: 1500, category: "physicist", description: "Albert Einstein was a German-born theoretical physicist. Einstein's work is also known for its influence on the philosophy of science. He developed the general theory of relativity, one of the two pillars of modern physics. Einstein is best known in popular culture for his mass–energy equivalence formula E = mc². He received the 1921 Nobel Prize in Physics for his 'services to theoretical physics', in particular his discovery of the law of the photoelectric effect, a pivotal step in the evolution of quantum theory.")
genius_a.user = user_a
genius_a.save
genius_b = Genius.new(name: "Stephen Hawkins", year: 1942, cost: 3500, category: "physicist", description: "Stephen William Hawking was an English theoretical physicist, cosmologist, and author who was director of research at the Centre for Theoretical Cosmology at the University of Cambridge at the time of his death.")
genius_b.user = user_b
genius_b.save
genius_c = Genius.new(name: "Ada Lovelace", year: 1815, cost: 500, category: "mathematician", description: "Augusta Ada King, Countess of Lovelace was an English mathematician and writer, chiefly known for her work on Charles Babbage's proposed mechanical general-purpose computer, the Analytical Engine.")
genius_c.user = user_c
genius_c.save
genius_d = Genius.new(name: "Isaac Newton", year: 1643, cost: 2500, category: "mathematician", description: "Sir Isaac Newton PRS MP was an English physicist and mathematician who is widely recognised as one of the most influential scientists of all time and as a key figure in the scientific revolution. His book Philosophiæ Naturalis Principia Mathematica, first published in 1687, laid the foundations for classical mechanics. Newton made seminal contributions to optics, and he shares credit with Gottfried Leibniz for the development of calculus. Newton's Principia formulated the laws of motion and universal gravitation, which dominated scientists' view of the physical universe for the next three centuries. ")
genius_d.user = user_d
genius_d.save
genius_e = Genius.new(name: "Leonardo da Vinci", year: 1452, cost: 2500, category: "engineer", description: "Leonardo di ser Piero da Vinci was an Italian polymath, painter, sculptor, architect, musician, mathematician, engineer, inventor, anatomist, geologist, cartographer, botanist, and writer. He is widely considered to be one of the greatest painters of all time and perhaps the most diversely talented person ever to have lived. His genius, perhaps more than that of any other figure, epitomized the Renaissance humanist ideal. Leonardo has often been described as the archetype of the Renaissance Man, a man of 'unquenchable curiosity' and 'feverishly inventive imagination'.")
genius_e.user = user_a
genius_e.save

genius_f = Genius.new(name: "Galileo Galilei", year: 1564, cost: 1500, category: "mathematician", description: "Galileo Galilei, often known mononymously as Galileo, was an Italian physicist, mathematician, engineer, astronomer, and philosopher who played a major role in the scientific revolution during the Renaissance. His achievements include improvements to the telescope and consequent astronomical observations and support for Copernicanism.")
genius_f.user = user_b
genius_f.save
genius_g = Genius.new(name: "Plato", year: 428, cost: 3500, category: "philosopher", description: "Plato was a philosopher, as well as mathematician, in Classical Greece. He is considered an essential figure in the development of philosophy, especially the Western tradition, and he founded the Academy in Athens, the first institution of higher learning in the Western world. Along with his teacher Socrates and his most famous student, Aristotle, Plato laid the foundations of Western philosophy and science. Alfred North Whitehead once noted: the safest general characterization of the European philosophical tradition is that it consists of a series of footnotes to Plato.")
genius_g.user = user_c
genius_g.save
genius_h = Genius.new(name: "Aristotle", year: 384, cost: 500, category: "philosopher", description: "Aristotle was a Greek philosopher and scientist born in the Macedonian city of Stagira, Chalkidice, on the northern periphery of Classical Greece. At eighteen, he joined Plato's Academy in Athens and remained there until the age of thirty-seven.")
genius_h.user = user_d
genius_h.save
genius_i = Genius.new(name: "Nikola Tesla", year: 1856, cost: 2500, category: "engineer", description: "Nikola Tesla was a Serbian American inventor, electrical engineer, mechanical engineer, physicist, and futurist best known for his contributions to the design of the modern alternating current electricity supply system. Tesla gained experience in telephony and electrical engineering before immigrating to the United States in 1884 to work for Thomas Edison in New York City.")
genius_i.user = user_a
genius_i.save
genius_j = Genius.new(name: "Wolfgang Amadeus Mozart", year: 1756, cost: 2500, category: "composer", description: "Wolfgang Amadeus Mozart, baptised as Johannes Chrysostomus Wolfgangus Theophilus Mozart, was a prolific and influential composer of the Classical era. Mozart showed prodigious ability from his earliest childhood. Already competent on keyboard and violin, he composed from the age of five and performed before European royalty.")
genius_j.user = user_b
genius_j.save

genius_k = Genius.new(name: "Archimedes", year: 287, cost: 500, category: "astronomer", description: "Archimedes of Syracuse was an Ancient Greek mathematician, physicist, engineer, inventor, and astronomer. Although few details of his life are known, he is regarded as one of the leading scientists in classical antiquity. Generally considered the greatest mathematician of antiquity and one of the greatest of all time, Archimedes anticipated modern calculus and analysis by applying concepts of infinitesimals and the method of exhaustion to derive and rigorously prove a range of geometrical theorems, including the area of a circle, the surface area and volume of a sphere, and the area under a parabola.")
genius_k.user = user_c
genius_k.save
genius_l = Genius.new(name: "Michelangelo", year: 1475, cost: 2500, category: "sculptor", description: "Michelangelo di Lodovico Buonarroti Simoni, commonly known as Michelangelo, was an Italian sculptor, painter, architect, poet, and engineer of the High Renaissance who exerted an unparalleled influence on the development of Western art. Considered the greatest living artist in his lifetime, he has since been held as one of the greatest artists of all time. ")
genius_l.user = user_d
genius_l.save
genius_m = Genius.new(name: "Socrates", year: 470, cost: 2500, category: "philosopher", description: "Socrates was a classical Greek philosopher credited as one of the founders of Western philosophy. He is an enigmatic figure known chiefly through the accounts of classical writers, especially the writings of his students Plato and Xenophon and the plays of his contemporary Aristophanes.")
genius_m.user = user_a
genius_m.save


genius_n = Genius.new(name: "William Shakespeare", year: 1564, cost: 500, category: "author", description: "William Shakespeare was an English poet, playwright, and actor, widely regarded as the greatest writer in the English language and the world's pre-eminent dramatist. He is often called England's national poet and the 'Bard of Avon'. His extant works, including some collaborations, consist of about 38 plays, 154 sonnets, two long narrative poems, and a few other verses.")
genius_n.user = user_b
genius_n.save
genius_o = Genius.new(name: "Charles Darwin", year: 1809, cost: 2500, category: "biologist", description: "Charles Robert Darwin, FRS was an English naturalist and geologist, best known for his contributions to evolutionary theory. He established that all species of life have descended over time from common ancestors, and in a joint publication with Alfred Russel Wallace introduced his scientific theory that this branching pattern of evolution resulted from a process that he called natural selection.")
genius_o.user = user_c
genius_o.save
genius_p = Genius.new(name: "Marie Curie", year: 1867, cost: 2500, category: "chemist", description: "Marie Skłodowska-Curie was a Polish and naturalized-French physicist and chemist who conducted pioneering research on radioactivity. She was the first woman to win a Nobel Prize, the first person and only woman to win twice, the only person to win twice in multiple sciences, and was part of the Curie family legacy of five Nobel Prizes.")
genius_p.user = user_d
genius_p.save

genius_q = Genius.new(name: "Pythagoras", year: 570, cost: 500, category: "philosopher", description: "Pythagoras of Samos was an Ionian Greek philosopher, mathematician, and founder of the religious movement called Pythagoreanism. Most of the information about Pythagoras was written down centuries after he lived, so very little reliable information is known about him. He was born on the island of Samos, and might have travelled widely in his youth, visiting Egypt and other places seeking knowledge. Around 530 BC, he moved to Croton, in Magna Graecia, and there set up a religious sect. His followers pursued the religious rites and practices developed by Pythagoras and studied his philosophical theories.")
genius_q.user = user_a
genius_q.save
genius_r = Genius.new(name: "Johann Sebastian Bach", year: 1685, cost: 2500, category: "composer", description: "Johann Sebastian Bach was a German composer and musician of the Baroque period. He enriched established German styles through his skill in counterpoint, harmonic and motivic organisation, and the adaptation of rhythms, forms, and textures from abroad, particularly from Italy and France.")
genius_r.user = user_b
genius_r.save
genius_s = Genius.new(name: "Ludwig van Beethoven", year: 1770, cost: 2500, category: "musician", description: "Ludwig van Beethoven was a German composer and pianist. A crucial figure in the transition between the Classical and Romantic eras in Western art music, he remains one of the most famous and influential of all composers. His best-known compositions include 9 symphonies, 5 concertos for piano, 1 violin concerto, 32 piano sonatas, and 16 string quartets.")
genius_s.user = user_c
genius_s.save

genius_t = Genius.new(name: "Maya Angelou", year: 1928, cost: 500, category: "poet", description: "Maya Angelou is one of the most influential women in American history and was a poet, singer, memoirist, and civil rights activist, whose award-winning memoir I Know Why the Caged Bird Sings made literary history as the first nonfiction best-seller by an African-American woman.")
genius_t.user = user_d
genius_t.save
genius_u = Genius.new(name: "Edith Cowan", year: 1861, cost: 2500, category: "politician", description: "From a young age Edith was a pioneer for women’s rights, and her election to parliament at 59 in 1921, was both unexpected and controversial.")
genius_u.user = user_a
genius_u.save
genius_v = Genius.new(name: "Amelia Earhart", year: 1897, cost: 2500, category: "pioneer", description: "Amelia Mary Earhart was an American aviation pioneer and author. Earhart was the first female aviator to fly solo across the Atlantic Ocean. She received the United States Distinguished Flying Cross for this accomplishment.")
genius_v.user = user_b
genius_v.save

genius_w = Genius.new(name: "Johannes Kepler", year: 1571, cost: 500, category: "mathematician", description: "Johannes Kepler was a German mathematician, astronomer, and astrologer. A key figure in the 17th century scientific revolution, he is best known for his laws of planetary motion, based on his works Astronomia nova, Harmonices Mundi, and Epitome of Copernican Astronomy.")
genius_w.user = user_c
genius_w.save
genius_z = Genius.new(name: "Rosalind Franklin", year: 1920, cost: 2500, category: "chemist", description: "Rosalind Elsie Franklin was an English chemist and X-ray crystallographer whose work was central to the understanding of the molecular structures of DNA, RNA, viruses, coal, and graphite.")
genius_z.user = user_d
genius_z.save
genius_y = Genius.new(name: "Nicolaus Copernicus", year: 1473, cost: 2500, category: "astronomer", description: "Nicolaus Copernicus was a Renaissance mathematician and astronomer who formulated a model of the universe that placed the Sun rather than the Earth at its center. The publication of this model in his book De revolutionibus orbium coelestium.66.")
genius_y.user = user_a
genius_y.save

genius_x = Genius.new(name: "Alan Turing", year: 1912, cost: 500, category: "scientist", description: "Alan Mathison Turing, OBE, FRS was a British pioneering computer scientist, mathematician, logician, cryptanalyst, philosopher, mathematical biologist, and marathon and ultra distance runner. He was highly influential in the development of computer science, providing a formalisation of the concepts of 'algorithm' and 'computation' with the Turing machine, which can be considered a model of a gener.")
genius_x.user = user_b
genius_x.save
genius_ab = Genius.new(name: "Thomas Edison", year: 1847, cost: 2500, category: "entrepreneur", description: "Thomas Alva Edison was an American inventor and businessman. He developed many devices that greatly influenced life around the world, including the phonograph, the motion picture camera, and a long-lasting, practical electric light bulb. Dubbed 'The Wizard of Menlo Park', he was one of the first inventors to apply the principles of mass production and large-scale teamwork.")
genius_ab.user = user_c
genius_ab.save
genius_cd = Genius.new(name: "Mark Twain", year: 1835, cost: 2500, category: "journalist", description: "Samuel Langhorne Clemens, better known by his pen name Mark Twain, was an American author and humorist. He wrote The Adventures of Tom Sawyer and its sequel, Adventures of Huckleberry Finn, the latter often called 'the Great American Novel'.")
genius_cd.user = user_d
genius_cd.save

# genius_n = Genius.new(name: "", year: 1815, cost: 500, category: "", description: "")
# genius_n.user = user_n
# genius_n.save
# genius_o = Genius.new(name: "", year: 1643, cost: 2500, category: "", description: "")
# genius_o.user = user_o
# genius_o.save
# genius_p = Genius.new(name: "", year: 1452, cost: 2500, category: "", description: "")
# genius_p.user = user_p
# genius_p.save

Lecture.create(start_time: "2019-08-21 11:00:00", end_time: "2019-08-22 12:00:00", genius_id: genius_a.id, user_id: user_a.id)
# lecture_a.save
Lecture.create(start_time: "2019-08-21 11:00:00", end_time: "2019-08-22 12:00:00", genius_id: genius_b.id, user_id: user_b.id)
# lecture_b.save
Lecture.create(start_time: "2019-08-21 11:00:00", end_time: "2019-08-22 12:00:00", genius_id: genius_c.id, user_id: user_c.id)
# lecture_c.save
Lecture.create(start_time: "2019-08-21 11:00:00", end_time: "2019-08-22 12:00:00", genius_id: genius_d.id, user_id: user_d.id)
# lecture_d.save

