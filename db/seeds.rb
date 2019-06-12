# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
puts "Cleaning database"
Photo.destroy_all
Lecture.destroy_all
Genius.destroy_all
User.destroy_all
puts "Database cleaned"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_a = User.create!(email: "abert@newtech.com", password: "123456")
user_b = User.create!(email: "lovebert@nstarkent.com", password: "123456")
user_c = User.create!(email: "hopmenow@nawesometech.com", password: "123456")
user_d = User.create!(email: "newbody@techmesoon.com", password: "123456")

genius_a = user_a.genius.create(name: "Albert Einstein", iq: 160, year: 1879, cost: 1500, category: "physicist", description: "Albert Einstein was a German-born theoretical physicist. Einstein's work is also known for its influence on the philosophy of science. He developed the general theory of relativity, one of the two pillars of modern physics. Einstein is best known in popular culture for his mass–energy equivalence formula E = mc². He received the 1921 Nobel Prize in Physics for his 'services to theoretical physics', in particular his discovery of the law of the photoelectric effect, a pivotal step in the evolution of quantum theory.")
albert_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259322/Albert%20Einstein%20IMG/ae_color_ab2xpz.jpg"
albert_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259322/Albert%20Einstein%20IMG/albert-einstein_rxv4pf.jpg"
albert_url3 =  "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259322/Albert%20Einstein%20IMG/Albert_Einstein_Head_pdfnvx.jpg"
Photo.create!(remote_photo_url: albert_url1, genius_id: genius_a.id)
Photo.create!(remote_photo_url: albert_url2, genius_id: genius_a.id)
Photo.create!(remote_photo_url: albert_url3, genius_id: genius_a.id)

genius_b = user_b.genius.create(name: "Stephen Hawkins", iq: 160, year: 1942, cost: 3500, category: "physicist", description: "Stephen William Hawking was an English theoretical physicist, cosmologist, and author who was director of research at the Centre for Theoretical Cosmology at the University of Cambridge at the time of his death.")
stephen_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259324/Stephen%20Hopkins/swh_bw_34-2560x1709_nczipw.jpg"
stephen_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259324/Stephen%20Hopkins/764143_20180314011018_ocwl3t.jpg"
stephen_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259324/Stephen%20Hopkins/15767807dfab7fae9987fda24ec78c085cdedb89_xzzkpc.jpg"
Photo.create!(remote_photo_url: stephen_url1, genius_id: genius_b.id)
Photo.create!(remote_photo_url: stephen_url2, genius_id: genius_b.id)
Photo.create!(remote_photo_url: stephen_url3, genius_id: genius_b.id)

genius_c = user_c.genius.create(name: "Ada Lovelace", iq: 155, year: 1815, cost: 500, category: "mathematician", description: "Augusta Ada King, Countess of Lovelace was an English mathematician and writer, chiefly known for her work on Charles Babbage's proposed mechanical general-purpose computer, the Analytical Engine.")
ada_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560260413/Ada%20Lovelace/ada_lovelace_zbkooj.jpg"
ada_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560243981/Ada%20Lovelace/rxpbjnqnt15ctm2k0lxd.png"
ada_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560243961/Ada%20Lovelace/htouh5nfsgzuq5i7vz97.jpg"
Photo.create!(remote_photo_url: ada_url1, genius_id: genius_c.id)
Photo.create!(remote_photo_url: ada_url2, genius_id: genius_c.id)
Photo.create!(remote_photo_url: ada_url3, genius_id: genius_c.id)

genius_d = user_d.genius.create(name: "Isaac Newton", iq: 158, year: 1643, cost: 2500, category: "mathematician", description: "Sir Isaac Newton PRS MP was an English physicist and mathematician who is widely recognised as one of the most influential scientists of all time and as a key figure in the scientific revolution. His book Philosophiæ Naturalis Principia Mathematica, first published in 1687, laid the foundations for classical mechanics. Newton made seminal contributions to optics, and he shares credit with Gottfried Leibniz for the development of calculus. Newton's Principia formulated the laws of motion and universal gravitation, which dominated scientists' view of the physical universe for the next three centuries. ")
isaac_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560260505/Isaac%20Newton/Isaac%20newton/isaac-newton_6_cyrrzl.jpg"
isaac_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560260504/Isaac%20Newton/Isaac%20newton/sir-isaac-newton-9422656-1-402_osi63k.jpg"
isaac_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560260504/Isaac%20Newton/Isaac%20newton/isaac-newton---mini-biography_tzjgst.jpg"
Photo.create!(remote_photo_url: isaac_url1, genius_id: genius_d.id)
Photo.create!(remote_photo_url: isaac_url2, genius_id: genius_d.id)
Photo.create!(remote_photo_url: isaac_url3, genius_id: genius_d.id)

genius_e = user_a.genius.create(name: "Leonardo da Vinci", iq: 180, year: 1452, cost: 2500, category: "engineer", description: "Leonardo di ser Piero da Vinci was an Italian polymath, painter, sculptor, architect, musician, mathematician, engineer, inventor, anatomist, geologist, cartographer, botanist, and writer. He is widely considered to be one of the greatest painters of all time and perhaps the most diversely talented person ever to have lived. His genius, perhaps more than that of any other figure, epitomized the Renaissance humanist ideal. Leonardo has often been described as the archetype of the Renaissance Man, a man of 'unquenchable curiosity' and 'feverishly inventive imagination'.")
davinci_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560264515/DaVinci/da_vinci_promo_h66rd6.jpg"
davinci_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560264515/DaVinci/LeoDaVinci_hoqhvj.jpg"
davinci_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560264516/DaVinci/leonardo_da_vinci_nrmjzb.jpg"
Photo.create!(remote_photo_url: davinci_url1, genius_id: genius_e.id)
Photo.create!(remote_photo_url: davinci_url2, genius_id: genius_e.id)
Photo.create!(remote_photo_url: davinci_url3, genius_id: genius_e.id)


genius_f = user_b.genius.create(name: "Galileo Galilei", iq: 180, year: 1564, cost: 1500, category: "mathematician", description: "Galileo Galilei, often known mononymously as Galileo, was an Italian physicist, mathematician, engineer, astronomer, and philosopher who played a major role in the scientific revolution during the Renaissance. His achievements include improvements to the telescope and consequent astronomical observations and support for Copernicanism.")
galileo_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259323/Galileo/Justus_Sustermans_-_Portrait_of_Galileo_Galilei__1636_ugadtj.jpg"
galileo_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259323/Galileo/galileo-164084388_hjnein.jpg"
galileo_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259337/Galileo/leldmydymdbuywycyerg.jpg"
Photo.create!(remote_photo_url: galileo_url1, genius_id: genius_f.id)
Photo.create!(remote_photo_url: galileo_url2, genius_id: genius_f.id)
Photo.create!(remote_photo_url: galileo_url3, genius_id: genius_f.id)

genius_g = user_c.genius.create(name: "Plato", iq: 145, year: 428, cost: 3500, category: "philosopher", description: "Plato was a philosopher, as well as mathematician, in Classical Greece. He is considered an essential figure in the development of philosophy, especially the Western tradition, and he founded the Academy in Athens, the first institution of higher learning in the Western world. Along with his teacher Socrates and his most famous student, Aristotle, Plato laid the foundations of Western philosophy and science. Alfred North Whitehead once noted: the safest general characterization of the European philosophical tradition is that it consists of a series of footnotes to Plato.")
plato_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560264688/Plato/plato-1280_svjfcd.jpg"
plato_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560264688/Plato/plato_tznjy1.jpg"
plato_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560264688/Plato/plato-9442588-1-402_xdustr.jpg"
Photo.create!(remote_photo_url: plato_url1, genius_id: genius_g.id)
Photo.create!(remote_photo_url: plato_url2, genius_id: genius_g.id)
Photo.create!(remote_photo_url: plato_url3, genius_id: genius_g.id)

genius_h = user_d.genius.create(name: "Aristotle", iq: 146, year: 384, cost: 500, category: "philosopher", description: "Aristotle was a Greek philosopher and scientist born in the Macedonian city of Stagira, Chalkidice, on the northern periphery of Classical Greece. At eighteen, he joined Plato's Academy in Athens and remained there until the age of thirty-seven.")
aristotle_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560264857/Aristotle/aristotle_lpfdeo.jpg"
aristotle_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560264858/Aristotle/aristotle_school_athens_utv4mj.jpg"
aristotle_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560264859/Aristotle/Aristotle_Altemps_Inv8575_vx01fb.jpg"
Photo.create!(remote_photo_url: aristotle_url1, genius_id: genius_h.id)
Photo.create!(remote_photo_url: aristotle_url2, genius_id: genius_h.id)
Photo.create!(remote_photo_url: aristotle_url3, genius_id: genius_h.id)

genius_i = user_a.genius.create(name: "Nikola Tesla", iq: 154, year: 1856, cost: 2500, category: "engineer", description: "Nikola Tesla was a Serbian American inventor, electrical engineer, mechanical engineer, physicist, and futurist best known for his contributions to the design of the modern alternating current electricity supply system. Tesla gained experience in telephony and electrical engineering before immigrating to the United States in 1884 to work for Thomas Edison in New York City.")
tesla_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265088/Nikola%20Tesla/Teslathinker_anhtgt.jpg"
tesla_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265089/Nikola%20Tesla/Tesla_Sarony_ldqjxa.jpg"
tesla_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265089/Nikola%20Tesla/N.Tesla_w8ulwk.jpg"
Photo.create!(remote_photo_url: tesla_url1, genius_id: genius_i.id)
Photo.create!(remote_photo_url: tesla_url2, genius_id: genius_i.id)
Photo.create!(remote_photo_url: tesla_url3, genius_id: genius_i.id)

genius_j = user_b.genius.create(name: "Wolfgang Amadeus Mozart", iq:165, year: 1756, cost: 2500, category: "composer", description: "Wolfgang Amadeus Mozart, baptised as Johannes Chrysostomus Wolfgangus Theophilus Mozart, was a prolific and influential composer of the Classical era. Mozart showed prodigious ability from his earliest childhood. Already competent on keyboard and violin, he composed from the age of five and performed before European royalty.")
mozart_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265273/Mozart/wolfgang-mozart-9417115-2-402_mx3bkp.jpg"
mozart_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265273/Mozart/547532.mozart.ledev22x_zzpkuk.jpg"
mozart_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265273/Mozart/beethoven-banner_d3vodc.jpg"
Photo.create!(remote_photo_url: mozart_url1, genius_id: genius_j.id)
Photo.create!(remote_photo_url: mozart_url2, genius_id: genius_j.id)
Photo.create!(remote_photo_url: mozart_url3, genius_id: genius_j.id)

genius_k = user_c.genius.create(name: "Archimedes", iq: 134, year: 287, cost: 500, category: "astronomer", description: "Archimedes of Syracuse was an Ancient Greek mathematician, physicist, engineer, inventor, and astronomer. Although few details of his life are known, he is regarded as one of the leading scientists in classical antiquity. Generally considered the greatest mathematician of antiquity and one of the greatest of all time, Archimedes anticipated modern calculus and analysis by applying concepts of infinitesimals and the method of exhaustion to derive and rigorously prove a range of geometrical theorems, including the area of a circle, the surface area and volume of a sphere, and the area under a parabola.")
arch_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560331964/Archimedes/arch1_dmr7rk.jpg"
arch_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560331964/Archimedes/D869_103_803_1200_d5maxy.jpg"
arch_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560331965/Archimedes/Domenico-Fetti_Archimedes_1620_vaz3kq.jpg"
Photo.create!(remote_photo_url: arch_url1, genius_id: genius_k.id)
Photo.create!(remote_photo_url: arch_url2, genius_id: genius_k.id)
Photo.create!(remote_photo_url: arch_url3, genius_id: genius_k.id)

genius_l = user_d.genius.create(name: "Michelangelo", iq: 147, year: 1475, cost: 2500, category: "sculptor", description: "Michelangelo di Lodovico Buonarroti Simoni, commonly known as Michelangelo, was an Italian sculptor, painter, architect, poet, and engineer of the High Renaissance who exerted an unparalleled influence on the development of Western art. Considered the greatest living artist in his lifetime, he has since been held as one of the greatest artists of all time. ")
miche_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265461/Michelangelo/michelangelo_img_gaqjvv.jpg"
miche_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265462/Michelangelo/Michelangelo_1_xhnvid.jpg"
miche_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265462/Michelangelo/michelangelo_btpvy3.jpg"
Photo.create!(remote_photo_url: miche_url1, genius_id: genius_l.id)
Photo.create!(remote_photo_url: miche_url2, genius_id: genius_l.id)
Photo.create!(remote_photo_url: miche_url3, genius_id: genius_l.id)

genius_m = user_a.genius.create(name: "Socrates", iq: 124, year: 470, cost: 2500, category: "philosopher", description: "Socrates was a classical Greek philosopher credited as one of the founders of Western philosophy. He is an enigmatic figure known chiefly through the accounts of classical writers, especially the writings of his students Plato and Xenophon and the plays of his contemporary Aristophanes.")
socrates_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265636/Socrates/socrates_1_vnjgck.jpg"
socrates_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265636/Socrates/socrates_3_elqf9k.jpg"
socrates_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560265636/Socrates/socrates_2_slvxgs.jpg"
Photo.create!(remote_photo_url: socrates_url1, genius_id: genius_m.id)
Photo.create!(remote_photo_url: socrates_url2, genius_id: genius_m.id)
Photo.create!(remote_photo_url: socrates_url3, genius_id: genius_m.id)

genius_n = user_b.genius.create(name: "William Shakespeare", iq: 134, year: 1564, cost: 500, category: "author", description: "William Shakespeare was an English poet, playwright, and actor, widely regarded as the greatest writer in the English language and the world's pre-eminent dramatist. He is often called England's national poet and the 'Bard of Avon'. His extant works, including some collaborations, consist of about 38 plays, 154 sonnets, two long narrative poems, and a few other verses.")
shake_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266038/Shakespeare/william-shakespeare---the-life-of-the-bard_zwkgfp.jpg"
shake_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266038/Shakespeare/william-shakespeare-194895-1-402_ujj1qh.jpg"
shake_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266039/Shakespeare/_81731334_shakespeare_b2ucom.jpg"
Photo.create!(remote_photo_url: shake_url1, genius_id: genius_n.id)
Photo.create!(remote_photo_url: shake_url2, genius_id: genius_n.id)
Photo.create!(remote_photo_url: shake_url3, genius_id: genius_n.id)

genius_o = user_c.genius.create(name: "Charles Darwin", iq: 122, year: 1809, cost: 2500, category: "biologist", description: "Charles Robert Darwin, FRS was an English naturalist and geologist, best known for his contributions to evolutionary theory. He established that all species of life have descended over time from common ancestors, and in a joint publication with Alfred Russel Wallace introduced his scientific theory that this branching pattern of evolution resulted from a process that he called natural selection.")
darwin_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259322/Charles%20Darwin/HERITAGE-Darwin-134560-e1467127259420_fjm8yc.jpg"
darwin_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259322/Charles%20Darwin/CharlesDarwin-5c2c3d7e46e0fb0001a343e3_plmg5g.jpg"
darwin_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259326/Charles%20Darwin/charles-darwin-9266433-1-402_cuw0yf.jpg"
Photo.create!(remote_photo_url: darwin_url1, genius_id: genius_o.id)
Photo.create!(remote_photo_url: darwin_url2, genius_id: genius_o.id)
Photo.create!(remote_photo_url: darwin_url3, genius_id: genius_o.id)

genius_p = user_d.genius.create(name: "Marie Curie", iq: 146, year: 1867, cost: 2500, category: "chemist", description: "Marie Skłodowska-Curie was a Polish and naturalized-French physicist and chemist who conducted pioneering research on radioactivity. She was the first woman to win a Nobel Prize, the first person and only woman to win twice, the only person to win twice in multiple sciences, and was part of the Curie family legacy of five Nobel Prizes.")
curie_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259323/Marie%20Curie/marie-curie-9263538-1-402_gudswk.jpg"
curie_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259323/Marie%20Curie/mariecurie2pic-1024x1024_yeea5s.jpg"
curie_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259323/Marie%20Curie/Curie-57d227645f9b5829f44fcda1_hlopoz.jpg"
Photo.create!(remote_photo_url: curie_url1, genius_id: genius_p.id)
Photo.create!(remote_photo_url: curie_url2, genius_id: genius_p.id)
Photo.create!(remote_photo_url: curie_url3, genius_id: genius_p.id)

genius_q = user_a.genius.create(name: "Pythagoras", iq: 245, year: 570, cost: 500, category: "philosopher", description: "Pythagoras of Samos was an Ionian Greek philosopher, mathematician, and founder of the religious movement called Pythagoreanism. Most of the information about Pythagoras was written down centuries after he lived, so very little reliable information is known about him. He was born on the island of Samos, and might have travelled widely in his youth, visiting Egypt and other places seeking knowledge. Around 530 BC, he moved to Croton, in Magna Graecia, and there set up a religious sect. His followers pursued the religious rites and practices developed by Pythagoras and studied his philosophical theories.")
pythagoras_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266578/Pythagoras/pythagoras_2_ied8qs.jpg"
pythagoras_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266577/Pythagoras/pythagoras_3_aetndg.jpg"
pythagoras_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266577/Pythagoras/pythagoras_1_pkczfw.jpg"
Photo.create!(remote_photo_url: pythagoras_url1, genius_id: genius_q.id)
Photo.create!(remote_photo_url: pythagoras_url2, genius_id: genius_q.id)
Photo.create!(remote_photo_url: pythagoras_url3, genius_id: genius_q.id)

genius_r = user_b.genius.create(name: "Johann Sebastian Bach", iq: 162, year: 1685, cost: 2500, category: "composer", description: "Johann Sebastian Bach was a German composer and musician of the Baroque period. He enriched established German styles through his skill in counterpoint, harmonic and motivic organisation, and the adaptation of rhythms, forms, and textures from abroad, particularly from Italy and France.")
bach_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266682/Bach/johann-sebastian-bach---prolific-composer_ubf8ue.jpg"
bach_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266682/Bach/johann-sebastian-bach---mini-biography_rfotpp.jpg"
bach_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266682/Bach/johann-sebastian_dxmnz2.jpg"
Photo.create!(remote_photo_url: bach_url1, genius_id: genius_r.id)
Photo.create!(remote_photo_url: bach_url2, genius_id: genius_r.id)
Photo.create!(remote_photo_url: bach_url3, genius_id: genius_r.id)

genius_s = user_c.genius.create(name: "Ludwig van Beethoven", iq: 161, year: 1770, cost: 2500, category: "musician", description: "Ludwig van Beethoven was a German composer and pianist. A crucial figure in the transition between the Classical and Romantic eras in Western art music, he remains one of the most famous and influential of all composers. His best-known compositions include 9 symphonies, 5 concertos for piano, 1 violin concerto, 32 piano sonatas, and 16 string quartets.")
ludwig_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266835/Beethoven/Beethoven_3_dnctwu.jpg"
ludwig_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266835/Beethoven/Beethoven_2_cgwecy.jpg"
ludwig_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266835/Beethoven/Beethoven_1_hjgus3.jpg"
Photo.create!(remote_photo_url: ludwig_url1, genius_id: genius_s.id)
Photo.create!(remote_photo_url: ludwig_url2, genius_id: genius_s.id)
Photo.create!(remote_photo_url: ludwig_url3, genius_id: genius_s.id)

genius_t = user_d.genius.create(name: "Maya Angelou", iq: 161, year: 1928, cost: 500, category: "poet", description: "Maya Angelou is one of the most influential women in American history and was a poet, singer, memoirist, and civil rights activist, whose award-winning memoir I Know Why the Caged Bird Sings made literary history as the first nonfiction best-seller by an African-American woman.")
maya_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266960/Maya%20Angelou/MayaAngelo_uk4vux.jpg"
maya_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266960/Maya%20Angelou/MayaAngelo2_ucpplu.jpg"
maya_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560266961/Maya%20Angelou/maya-angelou-4_fidvml.jpg"
Photo.create!(remote_photo_url: maya_url1, genius_id: genius_t.id)
Photo.create!(remote_photo_url: maya_url2, genius_id: genius_t.id)
Photo.create!(remote_photo_url: maya_url3, genius_id: genius_t.id)

genius_u = user_a.genius.create(name: "Edith Cowan", iq: 161, year: 1861, cost: 2500, category: "politician", description: "From a young age Edith was a pioneer for women’s rights, and her election to parliament at 59 in 1921, was both unexpected and controversial.")
cowan_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267145/Edith%20Cowan/EdithCowan3_icmmc0.jpg"
cowan_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267145/Edith%20Cowan/EdithCowan1_zar36x.jpg"
cowan_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267148/Edith%20Cowan/EdithCowan2_ddsbxc.jpg"
Photo.create!(remote_photo_url: cowan_url1, genius_id: genius_u.id)
Photo.create!(remote_photo_url: cowan_url2, genius_id: genius_u.id)
Photo.create!(remote_photo_url: cowan_url3, genius_id: genius_u.id)

genius_v = user_b.genius.create(name: "Amelia Earhart", iq: 161, year: 1897, cost: 2500, category: "pioneer", description: "Amelia Mary Earhart was an American aviation pioneer and author. Earhart was the first female aviator to fly solo across the Atlantic Ocean. She received the United States Distinguished Flying Cross for this accomplishment.")
earhart_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267301/Amelia%20Earhart/AmeliaEarhart3_k7czc5.jpg"
earhart_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267302/Amelia%20Earhart/AmeliaEarhart2_w3amsp.jpg"
earhart_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267302/Amelia%20Earhart/AmeliaEarhart1_ne8seh.jpg"
Photo.create!(remote_photo_url: earhart_url1, genius_id: genius_v.id)
Photo.create!(remote_photo_url: earhart_url2, genius_id: genius_v.id)
Photo.create!(remote_photo_url: earhart_url3, genius_id: genius_v.id)

genius_w = user_c.genius.create(name: "Johannes Kepler", iq: 157, year: 1571, cost: 500, category: "mathematician", description: "Johannes Kepler was a German mathematician, astronomer, and astrologer. A key figure in the 17th century scientific revolution, he is best known for his laws of planetary motion, based on his works Astronomia nova, Harmonices Mundi, and Epitome of Copernican Astronomy.")
kepler_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267770/Kepler/Johannes-Kepler_liwkuh.jpg"
kepler_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267770/Kepler/Johannes_Kepler_2_aqnibf.jpg"
kepler_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267770/Kepler/Johannes_Kepler_1610_qwgp3b.jpg"
Photo.create!(remote_photo_url: kepler_url1, genius_id: genius_w.id)
Photo.create!(remote_photo_url: kepler_url2, genius_id: genius_w.id)
Photo.create!(remote_photo_url: kepler_url3, genius_id: genius_w.id)

genius_z = user_d.genius.create(name: "Rosalind Franklin", iq: 157, year: 1920, cost: 2500, category: "chemist", description: "Rosalind Elsie Franklin was an English chemist and X-ray crystallographer whose work was central to the understanding of the molecular structures of DNA, RNA, viruses, coal, and graphite.")
franklin_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259323/Rosalind%20Franklin/14.PIC816_VandykStudios_NPG_MASTER_f1i0px.jpg"
franklin_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259324/Rosalind%20Franklin/rosalind-franklin-9301344-1-402_c0fmtc.jpg"
franklin_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560259324/Rosalind%20Franklin/1240ee9f47f65f38e5c201f48a463984-rosalind-franklin-art_n9vbyk.jpg"
Photo.create!(remote_photo_url: franklin_url1, genius_id: genius_z.id)
Photo.create!(remote_photo_url: franklin_url2, genius_id: genius_z.id)
Photo.create!(remote_photo_url: franklin_url3, genius_id: genius_z.id)

genius_y = user_a.genius.create(name: "Nicolaus Copernicus", iq: 157, year: 1473, cost: 2500, category: "astronomer", description: "Nicolaus Copernicus was a Renaissance mathematician and astronomer who formulated a model of the universe that placed the Sun rather than the Earth at its center. The publication of this model in his book De revolutionibus orbium coelestium.66.")
copernicus_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267912/Copernicus/Copernicus3_mqvlzv.jpg"
copernicus_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267912/Copernicus/Copernicus2_skvexu.jpg"
copernicus_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560267911/Copernicus/Copernicus1_ituqqi.jpg"
Photo.create!(remote_photo_url: copernicus_url1, genius_id: genius_y.id)
Photo.create!(remote_photo_url: copernicus_url2, genius_id: genius_y.id)
Photo.create!(remote_photo_url: copernicus_url3, genius_id: genius_y.id)

genius_x = user_b.genius.create(name: "Alan Turing", iq: 172, year: 1912, cost: 500, category: "scientist", description: "Alan Mathison Turing, OBE, FRS was a British pioneering computer scientist, mathematician, logician, cryptanalyst, philosopher, mathematical biologist, and marathon and ultra distance runner. He was highly influential in the development of computer science, providing a formalisation of the concepts of 'algorithm' and 'computation' with the Turing machine, which can be considered a model of a gener.")
alan_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560268056/Alan%20Turning/1_FCZMG2AgKPDXqXyOtV4faA_fmnn9r.png"
alan_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560268055/Alan%20Turning/getty_alan_turing_2_0_g25bcb.jpg"
alan_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560268056/Alan%20Turning/AlanTurning3_xrbgn8.jpg"
Photo.create!(remote_photo_url: alan_url1, genius_id: genius_x.id)
Photo.create!(remote_photo_url: alan_url2, genius_id: genius_x.id)
Photo.create!(remote_photo_url: alan_url3, genius_id: genius_x.id)

genius_ab = user_c.genius.create(name: "Thomas Edison", iq: 172, year: 1847, cost: 2500, category: "entrepreneur", description: "Thomas Alva Edison was an American inventor and businessman. He developed many devices that greatly influenced life around the world, including the phonograph, the motion picture camera, and a long-lasting, practical electric light bulb. Dubbed 'The Wizard of Menlo Park', he was one of the first inventors to apply the principles of mass production and large-scale teamwork.")
thomas_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560268226/Thomas%20Edison/Thomas_Edison2_fmcgyw.jpg"
thomas_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560268224/Thomas%20Edison/ThomasEdison1_nlgm76.png"
thomas_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560268223/Thomas%20Edison/ThomasEdison2_zdvxh7.jpg"
Photo.create!(remote_photo_url: thomas_url1, genius_id: genius_ab.id)
Photo.create!(remote_photo_url: thomas_url2, genius_id: genius_ab.id)
Photo.create!(remote_photo_url: thomas_url3, genius_id: genius_ab.id)

genius_cd = user_d.genius.create(name: "Mark Twain", iq: 172, year: 1835, cost: 2500, category: "journalist", description: "Samuel Langhorne Clemens, better known by his pen name Mark Twain, was an American author and humorist. He wrote The Adventures of Tom Sawyer and its sequel, Adventures of Huckleberry Finn, the latter often called 'the Great American Novel'.")
mark_url1 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560268423/Mark%20Twain/MarkTwain1_bqmkqw.jpg"
mark_url2 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560268423/Mark%20Twain/MarkTwain2_zae2yb.jpg"
mark_url3 = "https://res.cloudinary.com/dvw6gizri/image/upload/v1560268422/Mark%20Twain/MarkTwain3_ukpsdm.jpg"
Photo.create!(remote_photo_url: mark_url1, genius_id: genius_cd.id)
Photo.create!(remote_photo_url: mark_url2, genius_id: genius_cd.id)
Photo.create!(remote_photo_url: mark_url3, genius_id: genius_cd.id)


# genius_n = Genius.create(name: "", year: 1815, cost: 500, category: "", description: "")
# genius_n.user = user_n
# genius_n.save
# genius_o = Genius.create(name: "", year: 1643, cost: 2500, category: "", description: "")
# genius_o.user = user_o
# genius_o.save
# genius_p = Genius.create(name: "", year: 1452, cost: 2500, category: "", description: "")
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

