INSERT INTO users (username, password, joindate, onlinestatus)
VALUES
('Aliyev', 'Aliyev123', '2018-07-15', False),
('Nigar', 'Nigar2023', '2019-03-22', False),
('Mehdiyev', 'Mehdiyev_89', '2017-11-03', False),
('Leyla', 'LeylaPass22', '2022-09-11', False),
('Huseynov', 'HuseynovPwd1', '2020-05-02', False),
('Farid', 'Farid!Pass', '2023-10-19', False),
('Ismayilov', 'Ismayilov#2023', '2017-12-28', False),
('Aysel', 'Aysel@123', '2021-06-05', False),
('Jabbarov', 'Jabb@rov567', '2019-08-14', False),
('Elshan', 'ElshanPass2023', '2022-01-27', False),
('Abbasov', 'AbbasovPass!', '2017-03-07', False),
('Aygun', 'Aygun_2023', '2020-09-30', False),
('Guliyev', 'Guliyev#123', '2023-06-08', False),
('Arzu', 'Arzu_567', '2018-04-17', False),
('Mammadov', 'MammadovPass22', '2022-12-01', False),
('Ramin', 'Ramin!2023', '2017-08-23', False),
('Hasanov', 'Hasanov@pwd', '2021-02-11', False),
('Samira', 'Samira123!', '2020-01-19', False),
('Allahverdiyev', 'All@hverdiyev22', '2023-04-30', False),
('Tahir', 'Tahir#2023', '2017-06-12', False),
('Huseynova', 'HuseynovaPwd1', '2022-03-08', False),
('Lala', 'Lala@123', '2019-10-05', False),
('Gurbanov', 'Gurbanov22!', '2021-07-27', False),
('Emil', 'Emil_567', '2023-09-14', False),
('Rustamova', 'Rust@moVa22', '2018-02-03', False);

INSERT INTO Subscribers (kuid_pk, uid_pk)
VALUES
-- Herning
((SELECT kuid FROM kommune WHERE name = 'Herning'), (SELECT UID FROM users WHERE username = 'Aliyev')),
((SELECT kuid FROM kommune WHERE name = 'Herning'), (SELECT UID FROM users WHERE username = 'Elshan')),
((SELECT kuid FROM kommune WHERE name = 'Herning'), (SELECT UID FROM users WHERE username = 'Ismayilov')),
((SELECT kuid FROM kommune WHERE name = 'Herning'), (SELECT UID FROM users WHERE username = 'Huseynov')),
-- Bornholms
((SELECT kuid FROM kommune WHERE name = 'Bornholms'), (SELECT UID FROM users WHERE username = 'Samira')),
((SELECT kuid FROM kommune WHERE name = 'Bornholms'), (SELECT UID FROM users WHERE username = 'Allahverdiyev')),
((SELECT kuid FROM kommune WHERE name = 'Bornholms'), (SELECT UID FROM users WHERE username = 'Arzu')),
((SELECT kuid FROM kommune WHERE name = 'Bornholms'), (SELECT UID FROM users WHERE username = 'Abbasov')),
-- Randers
((SELECT kuid FROM kommune WHERE name = 'Randers'), (SELECT UID FROM users WHERE username = 'Huseynova')),
((SELECT kuid FROM kommune WHERE name = 'Randers'), (SELECT UID FROM users WHERE username = 'Gurbanov')),
((SELECT kuid FROM kommune WHERE name = 'Randers'), (SELECT UID FROM users WHERE username = 'Rustamova')),
-- Esbjerg
((SELECT kuid FROM kommune WHERE name = 'Esbjerg'), (SELECT UID FROM users WHERE username = 'Emil')),
((SELECT kuid FROM kommune WHERE name = 'Esbjerg'), (SELECT UID FROM users WHERE username = 'Leyla')),
((SELECT kuid FROM kommune WHERE name = 'Esbjerg'), (SELECT UID FROM users WHERE username = 'Ismayilov')),
((SELECT kuid FROM kommune WHERE name = 'Esbjerg'), (SELECT UID FROM users WHERE username = 'Guliyev')),
-- Guldborgsund
((SELECT kuid FROM kommune WHERE name = 'Guldborgsund'), (SELECT UID FROM users WHERE username = 'Ramin')),
((SELECT kuid FROM kommune WHERE name = 'Guldborgsund'), (SELECT UID FROM users WHERE username = 'Aygun')),
((SELECT kuid FROM kommune WHERE name = 'Guldborgsund'), (SELECT UID FROM users WHERE username = 'Abbasov')),
((SELECT kuid FROM kommune WHERE name = 'Guldborgsund'), (SELECT UID FROM users WHERE username = 'Aysel')),
-- Fanoe
((SELECT kuid FROM kommune WHERE name = 'Fanoe'), (SELECT UID FROM users WHERE username = 'Nigar')),
((SELECT kuid FROM kommune WHERE name = 'Fanoe'), (SELECT UID FROM users WHERE username = 'Mehdiyev')),
((SELECT kuid FROM kommune WHERE name = 'Fanoe'), (SELECT UID FROM users WHERE username = 'Ramin')),
((SELECT kuid FROM kommune WHERE name = 'Fanoe'), (SELECT UID FROM users WHERE username = 'Mammadov')),
-- Copenhagen
((SELECT kuid FROM kommune WHERE name = 'Copenhagen'), (SELECT UID FROM users WHERE username = 'Farid')),
((SELECT kuid FROM kommune WHERE name = 'Copenhagen'), (SELECT UID FROM users WHERE username = 'Huseynova')),
((SELECT kuid FROM kommune WHERE name = 'Copenhagen'), (SELECT UID FROM users WHERE username = 'Abbasov')),
((SELECT kuid FROM kommune WHERE name = 'Copenhagen'), (SELECT UID FROM users WHERE username = 'Elshan')),
-- Vordingborg
((SELECT kuid FROM kommune WHERE name = 'Vordingborg'), (SELECT UID FROM users WHERE username = 'Huseynova')),
((SELECT kuid FROM kommune WHERE name = 'Vordingborg'), (SELECT UID FROM users WHERE username = 'Guliyev')),
-- Toender
((SELECT kuid FROM kommune WHERE name = 'Toender'), (SELECT UID FROM users WHERE username = 'Huseynova')),
((SELECT kuid FROM kommune WHERE name = 'Toender'), (SELECT UID FROM users WHERE username = 'Gurbanov')),
((SELECT kuid FROM kommune WHERE name = 'Toender'), (SELECT UID FROM users WHERE username = 'Farid')),
-- Langeland
((SELECT kuid FROM kommune WHERE name = 'Langeland'), (SELECT UID FROM users WHERE username = 'Allahverdiyev')),
((SELECT kuid FROM kommune WHERE name = 'Langeland'), (SELECT UID FROM users WHERE username = 'Rustamova')),
((SELECT kuid FROM kommune WHERE name = 'Langeland'), (SELECT UID FROM users WHERE username = 'Guliyev')),
((SELECT kuid FROM kommune WHERE name = 'Langeland'), (SELECT UID FROM users WHERE username = 'Lala')),
-- Laesoe
((SELECT kuid FROM kommune WHERE name = 'Laesoe'), (SELECT UID FROM users WHERE username = 'Rustamova')),
((SELECT kuid FROM kommune WHERE name = 'Laesoe'), (SELECT UID FROM users WHERE username = 'Allahverdiyev')),
((SELECT kuid FROM kommune WHERE name = 'Laesoe'), (SELECT UID FROM users WHERE username = 'Lala')),
((SELECT kuid FROM kommune WHERE name = 'Laesoe'), (SELECT UID FROM users WHERE username = 'Guliyev'));


INSERT INTO posts (content, postdate, kuid_pk, uid_pk)
VALUES
-- Herning
('Me and the boys enjoying Danish democracy in Herning! #DemocracyMemes', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Herning'), (SELECT UID FROM users WHERE username = 'Aliyev')),
('My top anime picks from Herning! #AnimeLove', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Herning'), (SELECT UID FROM users WHERE username = 'Elshan')),
('Herning website: So good, it is meme-worthy! #WebsiteGoals', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Herning'), (SELECT UID FROM users WHERE username = 'Ismayilov')),
('Having a laugh with farmer memes in Herning! #FarmLife', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Herning'), (SELECT UID FROM users WHERE username = 'Huseynov')),
-- Bornholms
('Exploring Danish democracy on the beautiful island of Bornholms! #IslandVibes', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Bornholms'), (SELECT UID FROM users WHERE username = 'Samira')),
('Sharing my favorite anime memes from Bornholms! #AnimeMeme', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Bornholms'), (SELECT UID FROM users WHERE username = 'Allahverdiyev')),
('Bornholms website: A meme heaven! #WebsiteHumor', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Bornholms'), (SELECT UID FROM users WHERE username = 'Arzu')),
('Laughing at hilarious farmer memes on Bornholms! #FarmHumor', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Bornholms'), (SELECT UID FROM users WHERE username = 'Abbasov')),
-- Randers
('Randers: Where democracy rocks! #RandersPride', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Randers'), (SELECT UID FROM users WHERE username = 'Huseynova')),
('Anime enthusiasts unite in Randers! #AnimeLovers', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Randers'), (SELECT UID FROM users WHERE username = 'Huseynova')),
('Randers website: Discover the meme side! #RandersMemes', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Randers'), (SELECT UID FROM users WHERE username = 'Gurbanov')),
('Join the laughter with farmer memes in Randers! #FunnyFarmers', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Randers'), (SELECT UID FROM users WHERE username = 'Rustamova')),
-- Esbjerg
('Esbjerg: A democracy of memes! #EsbjergMemes', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Esbjerg'), (SELECT UID FROM users WHERE username = 'Emil')),
('Anime paradise in Esbjerg! #AnimeParadise', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Esbjerg'), (SELECT UID FROM users WHERE username = 'Leyla')),
('Esbjerg website: Memes are the highlight! #MemeHighlights', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Esbjerg'), (SELECT UID FROM users WHERE username = 'Ismayilov')),
('Laughing together with farmer memes in Esbjerg! #FarmerLaughs', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Esbjerg'), (SELECT UID FROM users WHERE username = 'Guliyev')),
-- Guldborgsund
('Guldborgsund: The epitome of meme democracy! #MemeEpitome', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Guldborgsund'), (SELECT UID FROM users WHERE username = 'Ramin')),
('Anime lovers unite in Guldborgsund! #AnimeLove', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Guldborgsund'), (SELECT UID FROM users WHERE username = 'Aygun')),
('Guldborgsund website: Where memes come alive! #MemeMagic', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Guldborgsund'), (SELECT UID FROM users WHERE username = 'Abbasov')),
('Having a great laugh with farmer memes in Guldborgsund! #FarmHumor', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Guldborgsund'), (SELECT UID FROM users WHERE username = 'Aysel')),
-- Fanoe
('Democracy and memes collide in Fanoe! #DemocracyMemes', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Fanoe'), (SELECT UID FROM users WHERE username = 'Nigar')),
('Sharing the best anime memes from Fanoe! #AnimeMeme', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Fanoe'), (SELECT UID FROM users WHERE username = 'Mehdiyev')),
('Fanoe website: A meme paradise! #MemeParadise', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Fanoe'), (SELECT UID FROM users WHERE username = 'Ramin')),
('Enjoying the fun of farmer memes in Fanoe! #FunFarmers', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Fanoe'), (SELECT UID FROM users WHERE username = 'Mammadov')),
-- Copenhagen
('Living the dream in the meme capital of Denmark, Copenhagen! #CopenhagenMemes', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Copenhagen'), (SELECT UID FROM users WHERE username = 'Farid')),
('Geeking out over anime in vibrant Copenhagen! #AnimeGeeks', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Copenhagen'), (SELECT UID FROM users WHERE username = 'Huseynova')),
('Copenhagen website: Memes that will blow your mind! #MindBlowingMemes', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Copenhagen'), (SELECT UID FROM users WHERE username = 'Abbasov')),
('Joining the laughter with farmer memes in Copenhagen! #HilariousFarmers', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Copenhagen'), (SELECT UID FROM users WHERE username = 'Elshan')),
-- Vordingborg
('Vordingborg: Where democracy meets memes! #DemocracyMemes', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Vordingborg'), (SELECT UID FROM users WHERE username = 'Huseynova')),
('Sharing the best anime memes from Vordingborg! #AnimeMeme', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Vordingborg'), (SELECT UID FROM users WHERE username = 'Guliyev')),
('Vordingborg website: Memes for days! #MemeMania', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Vordingborg'), (SELECT UID FROM users WHERE username = 'Huseynova')),
('Having a great laugh with farmer memes in Vordingborg! #FarmHumor', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Vordingborg'), (SELECT UID FROM users WHERE username = 'Huseynova')),
-- Toender
('Toender: Where memes make democracy fun! #FunDemocracy', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Toender'), (SELECT UID FROM users WHERE username = 'Huseynova')),
('Anime lovers rejoice in Toender! #AnimeLove', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Toender'), (SELECT UID FROM users WHERE username = 'Gurbanov')),
('Toender website: Meme central! #MemeCentral', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Toender'), (SELECT UID FROM users WHERE username = 'Farid')),
('Laughing together with farmer memes in Toender! #FunnyFarmers', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Toender'), (SELECT UID FROM users WHERE username = 'Huseynova')),
-- Langeland
('Langeland: Where memes and democracy thrive! #MemeThrive', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Langeland'), (SELECT UID FROM users WHERE username = 'Allahverdiyev')),
('Spreading anime love in picturesque Langeland! #AnimeLove', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Langeland'), (SELECT UID FROM users WHERE username = 'Rustamova')),
('Langeland website: Meme heaven! #MemeHeaven', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Langeland'), (SELECT UID FROM users WHERE username = 'Guliyev')),
('Enjoying the humor of farmer memes in Langeland! #FarmHumor', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Langeland'), (SELECT UID FROM users WHERE username = 'Lala')),
-- Laesoe
('Laesoe: The island of memes and democracy! #MemeIsland', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Laesoe'), (SELECT UID FROM users WHERE username = 'Rustamova')),
('Geeking out over anime on the beautiful island of Laesoe! #AnimeGeeks', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Laesoe'), (SELECT UID FROM users WHERE username = 'Allahverdiyev')),
('Laesoe website: Memes that will make your day! #MemeMagic', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Laesoe'), (SELECT UID FROM users WHERE username = 'Lala')),
('Joining the laughter with farmer memes on Laesoe! #HilariousFarmers', '2023-06-11', (SELECT kuid FROM kommune WHERE name = 'Laesoe'), (SELECT UID FROM users WHERE username = 'Guliyev'))

