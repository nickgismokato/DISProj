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
((SELECT KuID FROM Kommune WHERE Name = 'Herning'), (SELECT UID FROM Users WHERE Username = 'Aliyev')),
((SELECT KuID FROM Kommune WHERE Name = 'Herning'), (SELECT UID FROM Users WHERE Username = 'Elshan')),
((SELECT KuID FROM Kommune WHERE Name = 'Herning'), (SELECT UID FROM Users WHERE Username = 'Ismayilov')),
((SELECT KuID FROM Kommune WHERE Name = 'Herning'), (SELECT UID FROM Users WHERE Username = 'Huseynov')),
-- Bornholms
((SELECT KuID FROM Kommune WHERE Name = 'Bornholms'), (SELECT UID FROM Users WHERE Username = 'Samira')),
((SELECT KuID FROM Kommune WHERE Name = 'Bornholms'), (SELECT UID FROM Users WHERE Username = 'Allahverdiyev')),
((SELECT KuID FROM Kommune WHERE Name = 'Bornholms'), (SELECT UID FROM Users WHERE Username = 'Arzu')),
((SELECT KuID FROM Kommune WHERE Name = 'Bornholms'), (SELECT UID FROM Users WHERE Username = 'Abbasov')),
-- Randers
((SELECT KuID FROM Kommune WHERE Name = 'Randers'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
((SELECT KuID FROM Kommune WHERE Name = 'Randers'), (SELECT UID FROM Users WHERE Username = 'Gurbanov')),
((SELECT KuID FROM Kommune WHERE Name = 'Randers'), (SELECT UID FROM Users WHERE Username = 'Rustamova')),
-- Esbjerg
((SELECT KuID FROM Kommune WHERE Name = 'Esbjerg'), (SELECT UID FROM Users WHERE Username = 'Emil')),
((SELECT KuID FROM Kommune WHERE Name = 'Esbjerg'), (SELECT UID FROM Users WHERE Username = 'Leyla')),
((SELECT KuID FROM Kommune WHERE Name = 'Esbjerg'), (SELECT UID FROM Users WHERE Username = 'Ismayilov')),
((SELECT KuID FROM Kommune WHERE Name = 'Esbjerg'), (SELECT UID FROM Users WHERE Username = 'Guliyev')),
-- Guldborgsund
((SELECT KuID FROM Kommune WHERE Name = 'Guldborgsund'), (SELECT UID FROM Users WHERE Username = 'Ramin')),
((SELECT KuID FROM Kommune WHERE Name = 'Guldborgsund'), (SELECT UID FROM Users WHERE Username = 'Aygun')),
((SELECT KuID FROM Kommune WHERE Name = 'Guldborgsund'), (SELECT UID FROM Users WHERE Username = 'Abbasov')),
((SELECT KuID FROM Kommune WHERE Name = 'Guldborgsund'), (SELECT UID FROM Users WHERE Username = 'Aysel')),
-- Fanoe
((SELECT KuID FROM Kommune WHERE Name = 'Fanoe'), (SELECT UID FROM Users WHERE Username = 'Nigar')),
((SELECT KuID FROM Kommune WHERE Name = 'Fanoe'), (SELECT UID FROM Users WHERE Username = 'Mehdiyev')),
((SELECT KuID FROM Kommune WHERE Name = 'Fanoe'), (SELECT UID FROM Users WHERE Username = 'Ramin')),
((SELECT KuID FROM Kommune WHERE Name = 'Fanoe'), (SELECT UID FROM Users WHERE Username = 'Mammadov')),
-- Copenhagen
((SELECT KuID FROM Kommune WHERE Name = 'Copenhagen'), (SELECT UID FROM Users WHERE Username = 'Farid')),
((SELECT KuID FROM Kommune WHERE Name = 'Copenhagen'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
((SELECT KuID FROM Kommune WHERE Name = 'Copenhagen'), (SELECT UID FROM Users WHERE Username = 'Abbasov')),
((SELECT KuID FROM Kommune WHERE Name = 'Copenhagen'), (SELECT UID FROM Users WHERE Username = 'Elshan')),
-- Vordingborg
((SELECT KuID FROM Kommune WHERE Name = 'Vordingborg'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
((SELECT KuID FROM Kommune WHERE Name = 'Vordingborg'), (SELECT UID FROM Users WHERE Username = 'Guliyev')),
-- Toender
((SELECT KuID FROM Kommune WHERE Name = 'Toender'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
((SELECT KuID FROM Kommune WHERE Name = 'Toender'), (SELECT UID FROM Users WHERE Username = 'Gurbanov')),
((SELECT KuID FROM Kommune WHERE Name = 'Toender'), (SELECT UID FROM Users WHERE Username = 'Farid')),
-- Langeland
((SELECT KuID FROM Kommune WHERE Name = 'Langeland'), (SELECT UID FROM Users WHERE Username = 'Allahverdiyev')),
((SELECT KuID FROM Kommune WHERE Name = 'Langeland'), (SELECT UID FROM Users WHERE Username = 'Rustamova')),
((SELECT KuID FROM Kommune WHERE Name = 'Langeland'), (SELECT UID FROM Users WHERE Username = 'Guliyev')),
((SELECT KuID FROM Kommune WHERE Name = 'Langeland'), (SELECT UID FROM Users WHERE Username = 'Lala')),
-- Laesoe
((SELECT KuID FROM Kommune WHERE Name = 'Laesoe'), (SELECT UID FROM Users WHERE Username = 'Rustamova')),
((SELECT KuID FROM Kommune WHERE Name = 'Laesoe'), (SELECT UID FROM Users WHERE Username = 'Allahverdiyev')),
((SELECT KuID FROM Kommune WHERE Name = 'Laesoe'), (SELECT UID FROM Users WHERE Username = 'Lala')),
((SELECT KuID FROM Kommune WHERE Name = 'Laesoe'), (SELECT UID FROM Users WHERE Username = 'Guliyev'));


INSERT INTO posts (content, postdate, kuid_pk, uid_pk)
VALUES
-- Herning
('Me and the boys enjoying Danish democracy in Herning! #DemocracyMemes', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Herning'), (SELECT UID FROM Users WHERE Username = 'Aliyev')),
('My top anime picks from Herning! #AnimeLove', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Herning'), (SELECT UID FROM Users WHERE Username = 'Elshan')),
('Herning website: So good, it is meme-worthy! #WebsiteGoals', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Herning'), (SELECT UID FROM Users WHERE Username = 'Ismayilov')),
('Having a laugh with farmer memes in Herning! #FarmLife', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Herning'), (SELECT UID FROM Users WHERE Username = 'Huseynov')),
-- Bornholms
('Exploring Danish democracy on the beautiful island of Bornholms! #IslandVibes', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Bornholms'), (SELECT UID FROM Users WHERE Username = 'Samira')),
('Sharing my favorite anime memes from Bornholms! #AnimeMeme', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Bornholms'), (SELECT UID FROM Users WHERE Username = 'Allahverdiyev')),
('Bornholms website: A meme heaven! #WebsiteHumor', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Bornholms'), (SELECT UID FROM Users WHERE Username = 'Arzu')),
('Laughing at hilarious farmer memes on Bornholms! #FarmHumor', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Bornholms'), (SELECT UID FROM Users WHERE Username = 'Abbasov')),
-- Randers
('Randers: Where democracy rocks! #RandersPride', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Randers'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
('Anime enthusiasts unite in Randers! #AnimeLovers', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Randers'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
('Randers website: Discover the meme side! #RandersMemes', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Randers'), (SELECT UID FROM Users WHERE Username = 'Gurbanov')),
('Join the laughter with farmer memes in Randers! #FunnyFarmers', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Randers'), (SELECT UID FROM Users WHERE Username = 'Rustamova')),
-- Esbjerg
('Esbjerg: A democracy of memes! #EsbjergMemes', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Esbjerg'), (SELECT UID FROM Users WHERE Username = 'Emil')),
('Anime paradise in Esbjerg! #AnimeParadise', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Esbjerg'), (SELECT UID FROM Users WHERE Username = 'Leyla')),
('Esbjerg website: Memes are the highlight! #MemeHighlights', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Esbjerg'), (SELECT UID FROM Users WHERE Username = 'Ismayilov')),
('Laughing together with farmer memes in Esbjerg! #FarmerLaughs', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Esbjerg'), (SELECT UID FROM Users WHERE Username = 'Guliyev')),
-- Guldborgsund
('Guldborgsund: The epitome of meme democracy! #MemeEpitome', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Guldborgsund'), (SELECT UID FROM Users WHERE Username = 'Ramin')),
('Anime lovers unite in Guldborgsund! #AnimeLove', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Guldborgsund'), (SELECT UID FROM Users WHERE Username = 'Aygun')),
('Guldborgsund website: Where memes come alive! #MemeMagic', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Guldborgsund'), (SELECT UID FROM Users WHERE Username = 'Abbasov')),
('Having a great laugh with farmer memes in Guldborgsund! #FarmHumor', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Guldborgsund'), (SELECT UID FROM Users WHERE Username = 'Aysel')),
-- Fanoe
('Democracy and memes collide in Fanoe! #DemocracyMemes', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Fanoe'), (SELECT UID FROM Users WHERE Username = 'Nigar')),
('Sharing the best anime memes from Fanoe! #AnimeMeme', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Fanoe'), (SELECT UID FROM Users WHERE Username = 'Mehdiyev')),
('Fanoe website: A meme paradise! #MemeParadise', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Fanoe'), (SELECT UID FROM Users WHERE Username = 'Ramin')),
('Enjoying the fun of farmer memes in Fanoe! #FunFarmers', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Fanoe'), (SELECT UID FROM Users WHERE Username = 'Mammadov')),
-- Copenhagen
('Living the dream in the meme capital of Denmark, Copenhagen! #CopenhagenMemes', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Copenhagen'), (SELECT UID FROM Users WHERE Username = 'Farid')),
('Geeking out over anime in vibrant Copenhagen! #AnimeGeeks', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Copenhagen'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
('Copenhagen website: Memes that will blow your mind! #MindBlowingMemes', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Copenhagen'), (SELECT UID FROM Users WHERE Username = 'Abbasov')),
('Joining the laughter with farmer memes in Copenhagen! #HilariousFarmers', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Copenhagen'), (SELECT UID FROM Users WHERE Username = 'Elshan')),
-- Vordingborg
('Vordingborg: Where democracy meets memes! #DemocracyMemes', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Vordingborg'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
('Sharing the best anime memes from Vordingborg! #AnimeMeme', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Vordingborg'), (SELECT UID FROM Users WHERE Username = 'Guliyev')),
('Vordingborg website: Memes for days! #MemeMania', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Vordingborg'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
('Having a great laugh with farmer memes in Vordingborg! #FarmHumor', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Vordingborg'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
-- Toender
('Toender: Where memes make democracy fun! #FunDemocracy', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Toender'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
('Anime lovers rejoice in Toender! #AnimeLove', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Toender'), (SELECT UID FROM Users WHERE Username = 'Gurbanov')),
('Toender website: Meme central! #MemeCentral', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Toender'), (SELECT UID FROM Users WHERE Username = 'Farid')),
('Laughing together with farmer memes in Toender! #FunnyFarmers', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Toender'), (SELECT UID FROM Users WHERE Username = 'Huseynova')),
-- Langeland
('Langeland: Where memes and democracy thrive! #MemeThrive', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Langeland'), (SELECT UID FROM Users WHERE Username = 'Allahverdiyev')),
('Spreading anime love in picturesque Langeland! #AnimeLove', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Langeland'), (SELECT UID FROM Users WHERE Username = 'Rustamova')),
('Langeland website: Meme heaven! #MemeHeaven', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Langeland'), (SELECT UID FROM Users WHERE Username = 'Guliyev')),
('Enjoying the humor of farmer memes in Langeland! #FarmHumor', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Langeland'), (SELECT UID FROM Users WHERE Username = 'Lala')),
-- Laesoe
('Laesoe: The island of memes and democracy! #MemeIsland', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Laesoe'), (SELECT UID FROM Users WHERE Username = 'Rustamova')),
('Geeking out over anime on the beautiful island of Laesoe! #AnimeGeeks', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Laesoe'), (SELECT UID FROM Users WHERE Username = 'Allahverdiyev')),
('Laesoe website: Memes that will make your day! #MemeMagic', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Laesoe'), (SELECT UID FROM Users WHERE Username = 'Lala')),
('Joining the laughter with farmer memes on Laesoe! #HilariousFarmers', '2023-06-11', (SELECT KuID FROM Kommune WHERE Name = 'Laesoe'), (SELECT UID FROM Users WHERE Username = 'Guliyev'));

