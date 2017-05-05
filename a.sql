#Höfundar Ágúst Örn Eiðsson og Bjarki Þór Jónsson
#2.5.17

create database 2808002950_lokaverkefni;
use 2808002950_lokaverkefni;

create table flokkur(
	ID int auto_increment primary key,
    nafn varchar(50)
);
create table flytjandi(
	ID int auto_increment primary key,
    nafn varchar(50),
    faedingardagur date,
    danardagur date,
    flokkur_ID int,
    FOREIGN KEY (flokkur_ID) REFERENCES flokkur(ID)
);
create table hofundur(
	ID int auto_increment primary key,
    nafn varchar(50)
);
create table utgefandi(
	ID int auto_increment primary key,
    nafn varchar(50)
);
create table tegund(
	ID int auto_increment primary key,
    nafn varchar(50)
);
create table diskur(
	ID int auto_increment primary key,
    nafn varchar(50),
    utgafudagur date,
    tegund_ID int,
    log text,
    utgefandi_ID int,
    foreign key (tegund_ID) references tegund(ID),
    foreign key (utgefandi_ID) references utgefandi(ID)
);
create table lag(
	ID int auto_increment primary key,
    nafn varchar(50),
    lengd int(4),
    texti longtext,
    flytjandi_ID int,
	hofundur_ID int,
    diskur_ID int,
    foreign key (flytjandi_ID) references flytjandi(ID),
    foreign key (hofundur_ID) references hofundur(ID),
    foreign key (diskur_ID) references diskur(ID)
);
drop table lag;
drop table diskur;
drop table tegund;
drop table utgefandi;
drop table hofundur;
drop table flytjandi;
drop table flokkur;

insert into flokkur
(nafn)
values
	('Einsöngvari'),
    ('Hljómsveit'),
    ('Hljómsveitarstjóri');
    
insert into flytjandi
(nafn,faedingardagur,danardagur,flokkur_ID)
values
	('John Williams','1932-02-08','0000-00-00',3),
    ('Marshmello','1996-05-19','0000-00-00',1),
    ('DJ Khaled','1975-11-26','0000-00-00',1),
    ('Skálmöld','2009-08-23','0000-00-00',2),
    ('Bruce Springsteen','1949-09-23','0000-00-00',1);
    
insert into hofundur
(nafn)
values
	('John Williams'),
    ('DJ Khaled'),
    ('Marshmello'),
    ('Skálmöld'),
    ('Bruce Springsteen');
    
insert into utgefandi
(nafn)
values
	('Lucasfilm'),
    ('Marshmello'),
    ('DJ Khaled'),
    ('Napalm Records'),
    ('Jon Landau');

insert into tegund
(nafn)
values
	('Hip Hop'),
    ('Trap music'),
    ('Klassísk'),
    ('Rock'),
    ('Þungarokk');

insert into diskur
(nafn,utgafudagur,tegund_ID,log,utgefandi_ID)
values
	('Star Wars Trilogy The Skywalker Symphony','1990-03-20',3,'Star Wars - Main Theme, Princess Leia, The Little People, Yoda´s Theme, Parade Of The Ewoks, The Asteroid Field, Luke And Leia, The Cantina Band, Here They Come!, Jabba The Hutt, The Forset Battle, Throne room and finale',1),
	('Joytime','2016-01-08',2,'Know me, Summer, Find me',2),
    ('Major key','2016-07-29',1,'I got the keys, For free',3),
    ('Vögguvísur Yggadrasils','2016-09-30',5,'Múspell, Niðavellir, Miðgarður',4),
    ('The River','1980-10-17',4,'The River, Cadillac Ranch',5),
    ('John Williams Greatest Hits 1969–1999','1999-11-01',3,'Duel Of The Fates, The Raider´s March',1),
    ('Með vættum','2014-11-11',5,'Að vori, Með fuglum, Að sumri',4);

insert into lag
(nafn,lengd,texti,flytjandi_ID,hofundur_ID,diskur_ID)
values
	('Að vori',188,'Þórunn Auðna, þá hún fæddist
	þungt var yfir Ísafold
	Eymd sem allt um lá og læddist

	loftið sverti, vötn og mold

	Myrkur að vori á Melrakkasléttu
	Meybarn var borið í óþökk og nauð
	Fátæk og horuð hún fæddist, með réttu
	Fyrst voru sporin öll hamingjusnauð

	Þakkir fær sá er Þórunni sendi
	þakkir af einingu
	Ég veit ekki hvar hún bernskunni brenndi
	barnið með meiningu

	Þórunn Auðna, þá hún fæddist
	þeyr blés yfir dal og tún
	Varla neina vá hún hræddist
	varin undir galdrarún

	Þakkir fær sá er Þórunni sendi
	þakkir af einingu góðar
	Ég veit ekki hvar hún bernskunni brenndi
	barnið með meiningu þjóðar

	Fyrst varð hún móðurlaus, föðurlaus siðan
	Fjöllin og gróðurinn tóku að sér
	ljóshærða flóðið með lokkinn svo friðan
	læst hennar blóðbönd í örlagakver

	Ég veit ekki hvar hún æskunni eyddi
	eða hvar hófst hennar ferð
	Né hvað það var sem götuna greiddi
	gaf henni bogann og sverð

	Þórunn Auðna, þá hún fæddist
	þa blés von um Íslandsströnd
	Neistinn fyrir norðan glæddist
	nytsamleg sú hjálparhönd',4,4,7),
    ('Með fuglum',389,'Fugl er stærstur Fróni á,
	fjallstindanna milli ná
	vængjafjaðrir.

	Vindinn aðrir
	vinir honum kljúfa hjá.

	Kornung þegar komu fyrst
	kynjaskrímsli, svöng og þyrst.
	Fjalls- af þaki
	flaug á baki
	fuglinum sem ríkir nyrst.

	Blésu hana bitrum móð,
	barði frá sér Íslands fljóð.
	Þegnar sváfu.
	Þessa gáfu
	Þórunn fann er leit hún blóð.

	Fyrsta stríð af fjórum vannst,
	fréttist víða, sagan spannst.
	Þó í ljóðum
	þessum góðum
	Þórunn hvergi fyrirfannst.

	Með fuglum.
	Með fuglum.
	Þórunn hvergi fyrirfannst.
	Með fuglum.
	Með fuglum.

	Þín var ævin þrettán ár
	þegar fórst með fuglum,
	fálkum, örnum, uglum.
	Þá var himinn þungur, grár,
	þegar fórst með fuglum.

	Þórunn var orðin þrettán ára,
	þegar hún fór með fuglum.
	Barðist við djöfla og fjanda, fjára,
	þegar hún fór með fuglum.
	Skammt milli gleði- og tregatára,
	þegar hún fór með fuglum.
	Lærði að svo myndi lífið klára,
	þegar hún fór með fuglum.

	Með fuglum.
	Með fuglum.
	Þegar hún fór með fuglum.
	Með fuglum.
	Með fuglum.

	Þegar sváfu flestir fast
	fuglar vörðu björgin.
	Sökkva lík er sameinast
	sverðin fyrir Fjörgyn.
	Nötraði allt Norðurland,
	níð skal vondum banna.
	Treysti verðmætt vinaband
	vættur meðal manna.',4,4,7),
    ('Að sumri',311,'Allt þar féll í ljúfa löð,
	landið friðsælt, gjöful tröð.
	Bændur, hjú og börnin glöð.

	Beið ein þar snót og þagði.
	Friður geymdi fold og menn,
	fimm ár liðu, nokkur enn.
	Land undir fót þá lagði.
	Land undir fót þá lagði.

	Enginn sína ævi veit.
	Áði hún í Mývatnssveit,
	áfram yfir landið leit:
	Lengra ég þarf að halda!
	Ung hún steig á Austurland,
	eygði skóg og svartan sand.
	Illt skal með góðu gjalda,
	illt skal með góðu gjalda.

	Sjónarspil við dalsins dyr,
	dimmu kljúfa sólstafir.
	Heitböndin munu halda.
	Sitthvað slæmt í lofti lá,
	lamdi brimið klettatá.
	Illt skal með góðu gjalda
	ef fjendur af Gerpinum sjást.
	Goðin þeim hjálpi sem finnast og nást.

	Enga gísla!
	Enga gísla!

	Móti skal tekið af mikilli heift,
	mótherjum bannað sem vinum er leyft.

	Þórunn gaf austrinu bein sín og blóð,
	beið þess að fylgja í vættanna slóð.
	Færum þeim þakkir sem fórnuðu sér,
	fóru gegn ógnar- og óvinaher.

	Fuglarnir syngja og fljótið er tært,
	fjögur að nóttu og sólin skín skært.
	Engin er hindrun og allt virðist fært,
	ekkert fékk Þórunni bugað.

	Lækurinn gljáfrar er líður hann hjá,
	landið er allt ósköp fallegt að sjá.
	Barnið því gleymdi sem bjátaði á,
	bara að það hefði dugað.

	Sumarið kveikir í bróstunum bál,
	brosir og fagnar hver einasta sál.
	Mundu að tileinka mönnunum skál,
	mikið við öll höfum þolað.

	Miðnætursólin er miðpunktur alls,
	móarnir loga frá ströndu til fjalls.
	Kveiknaði ást milli hennar og hals,
	henni fékk ekkert út skolað.',4,4,7),
	('Duel of the Fates',254,'Kor-ah, Mah-tah, Kor-ah, Rah-tah-mah.
	Kor-ah, Rah-tah-mah. Yood-hah, Kor-ah.
	Kor-ah, Syahd-ho. Rah-tah-mah, Daan-yah.
	Kor-ah, Kee-lah, Daan-yah.
	Nyo-hah, Kee-lah, Kor-ah, Rah-tah-mah.
	Syahd-ho, Kee-la, Kor-ah, Rah-tah-mah.
	Kor-ah, Daa-nyah. Kor-ah, Rah-tah-mah.

	Kor-ah, Daa-nyah. Kor-ah, Rah-tah-mah.
	Nyo-hah, Kee-lah, Kor-ah, Rah-tah-mah.
	Syahd-ho, Kee-la, Daan-yah, Rah-tah-mah. Kor-ah!',1,1,6),

	('The Raider´s March',311,'Enginn texti',1,1,6),

	('Star Wars- Main Theme',351,'enginn texti',1,1,1),
	('Princess Leia',283,'enginn texti',1,1,1),
    ('Múspell',325,'Kvika streymir og kraftar losna,
	klettar brenna, (klettar brenna).
	Barnið dreymir en taugar trosna,

	tárin renna (tárin renna).
	Bráðna steinar og bergið flýtur,
	brostnir draumar, (brostnir draumar).
	Ljósið veinar og loginn hvítur,
	landið kraumar, (landið kraumar).

	Bálið sem veldur bardögum
	bjarma á kveldið kastar.
	Surtur fer heldur hamförum,
	hér sefur eldur fastar.

	Jötnar æða um jörð í molum.
	Jöklar gráta.
	Ísinn bræða á æstum kolum.
	Æpir hnáta.
	Móðir huggar þar mædda dóttur.
	Múspell fagnar (Múspell fagnar).
	Dansa skuggar er dofnar þróttur.
	Dagur þagnar (Dagur þagnar).

	Þú deyrð í nótt!

	(Himinninn er hulinn sóti,
	hraunið rennur okkur móti.
	Svartnætti til allra átta,
	illt er myrkur Múspellsnátta).

	(Finnum hvernig fætur svíða,
	feigir eftir okkur bíða.
	Saman munum lífið láta,
	lítil rödd er hætt að gráta.
	Ryðst úr sprungum, gjám og gjótum
	gríðarbál í risafljótum.
	Loki gefur lausan tauminn,
	leikur sér við stríðan strauminn).

	Liggjum við á litlu skeri,
	lyftist glóðin nær.
	Sárt að hérna beinin beri
	barnung dóttir kær.

	Loks ég finn að lítill skrokkur
	lætur eftir sitt, (lætur eftir sitt).
	Hraunið breiðir yfir okkur,
	elsku barnið mitt, (elsku barnið mitt)',4,4,4),
	('The Little People',315,'enginn texti',1,1,1),
	('The Imperial March',183,'enginn texti',1,1,1),
	('Yoda´s Theme',195,'enginn texti',1,1,1),
	('Cadillac Ranch',216,'Well, there she sits buddy justa gleaming in the sun 
	There to greet a working man when his day is done 
	I´m gonna pack my pa and I´m gonna pack my aunt 
	I´m gonna take them down to the Cadillac Ranch 

	Eldorado fins, whitewalls and skirts 
	Rides just like a little bit of heaven here on earth 
	Well buddy when I die throw my body in the back 
	And drive me to the junkyard in my Cadillac 

	Cadillac, Cadillac 
	Long and dark, shiny and black 
	Open up your engines let ´em roar 
	Tearing up the highway like a big old dinosaur 

	James Dean in that Mercury ´49 
	Junior Johnson runnin´ thru the woods of Caroline 
	Even Burt Reynolds in that black Trans-Am 
	All gonna meet down at the Cadillac Ranch 

	Cadillac, Cadillac 
	Long and dark, shiny and black 
	Open up them engines let ´em roar 
	Tearing up the highway just a big old dinosaur 

	Hey, little girlie in the blue jeans so tight 
	Drivin´ alone through the Wisconsin night 
	You´re my last love baby you´re my last chance 
	Don´t let ´em take me to the Cadillac Ranch 

	Cadillac, Cadillac 
	Long and dark, shiny and black 
	Pulled up to my house today 
	Came and took my little girl away',5,5,5),

	('The River',301,'I come from down in the valley 
	where mister when you´re young 
	They bring you up to do like your daddy done 
	Me and Mary we met in high school 
	when she was just seventeen 
	We´d ride out of this valley down to where the fields were green 

	We´d go down to the river 
	And into the river we´d dive 
	Oh down to the river we´d ride 

	Then I got Mary pregnant 
	and man that was all she wrote 
	And for my nineteenth birthday I got a union card and a wedding coat 
	We went down to the courthouse 
	and the judge put it all to rest 
	No wedding day smiles no walk down the aisle 
	No flowers no wedding dress 

	That night we went down to the river 
	And into the river we´d dive 
	Oh down to the river we did ride 

	I got a job working construction for the Johnstown Company 
	But lately there ain´t been much work on account of the economy 
	Now all them things that seemed so important 
	Well mister they vanished right into the air 
	Now I just act like I don´t remember 
	Mary acts like she don´t care 

	But I remember us riding in my brother´s car 
	Her body tan and wet down at the reservoir 
	At night on them banks I´d lie awake 
	And pull her close just to feel each breath she´d take 
	Now those memories come back to haunt me 
	they haunt me like a curse 
	Is a dream a lie if it don´t come true 
	Or is it something worse 
	that sends me down to the river 
	though I know the river is dry 
	That sends me down to the river tonight 
	Down to the river 
	my baby and I 
	Oh down to the river we ride',5,5,5),
	('Parade Of The Ewoks',227,'enginn texti',1,1,1),
    ('Niðavellir',285,'Niðavellir, náhvítur máninn skín.
	Dvergahellir, dulúð þér villir sýn.
	Sindradætur, synir og börnin öll,

	vetrarnætur, verma þau klettafjöll.

	Aðrir byggja hús og hallir, kastala og kofa.
	Komið inn í hellinn því að hér, hér er gott að sofa.

	Galdrastafir, grafnir í stóran stein,
	dvergagrafir, dysjar og gömul bein.
	Heljarstyrkur, hertekur djúpan dal.
	Niðamyrkur, nær inn í gullinn sal.

	Leggist niður börnin mín, já, stór er okkar stofa.
	Steingólfið er tandurhreint og hér, hér er gott að sofa.

	Trónir á mergi tinnugler,
	tindar úr bergi háir.
	Sindri og Hergill halla sér,
	hér sofa dvergar gráir.

	Heyr, mín kæra hefðarfrú,
	hér er gott að sofa.
	Á sig taka náðir nú,
	niðahjón og börnin þrjú.

	Þegar heyrist þrumugnýr,
	Þór við skulum lofa.
	Okkur geymir hellir hlýr,
	hér er gott að sofa.

	Náinn syngur næturljóð,
	núna sefur dvergaþjóð.',4,4,4),
	('The Asteroid Field',274,'enginn texti',1,1,1),
	('Luke And Leia',299,'enginn texti',1,1,1),
	('The Cantina Band',136,'enginn texti',1,1,1),
    ('I Got the Keys',219,'[Intro]
	808 Mafia
	Jay Z; Uh, uh uh uh
	Future: DJ Khaled
	DJ Khaled: We The Best music!
	Jay Z: Oh, this what we doin´ here
	DJ Khaled: Another one!
	Jay Z: I´ma have to put my jewellery on for this one
	Future: Wraith talk, Wraith talk
	Oh, we talkin´ that Wraith talk
	Safe talk, safe talk, here we go talkin´ that safe talk
	DJ Khaled: Major key alert!
	Jay Z: Oh, we good now
	Future: Major bag alert
	DJ Khaled: DJ Khaled!

	[Hook: Future]
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	We go to court, we gon´ plead the fifth
	I know the judge, I´ma shoot him some chips
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys

	[Verse 1: Jay Z]
	Niggas always asking me the key
	´Til you own your own you can´t be free
	´Til you´re on your own you can´t be me
	How we still slaves in 2016?
	Key to life, keep a bag comin´
	Every night another bag comin´
	I ain´t been asleep since ´96
	I ain´t seen the back of my eyelids
	I been speedin´ through life with no safety belt
	One on one with the corner, with no safety help
	I perform like Josh Norman, I ain´t normal, nigga
	Just a project nigga out in Beverly Hills, California, nigga
	That Wraith talk, that´s foreign, nigga
	Special cloth talk here
	All my niggas from the mud damn near
	All my niggas millionaires
	We gon´ take it there, I swear
	You gon´ think a nigga´s psychic
	You ain´t seen nothin´ like this
	I should probably copyright this
	I promise they ain´t gonna like this

	[Hook: Future]
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	We go to court, we gon´ plead the fifth
	I know the judge, I´ma shoot him some chips
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys

	[Post-Hook: Future]
	Radar, radar on, bitches ain´t even on my radar
	Radar, radar on, on, you ain´t on my radar
	Radar, radar, no, no, you hatin´ on my radar
	No, no, you bitches ain´t, bitches ain´t even on my radar

	[Verse 2: Jay Z]
	I got a bag for lawyers, like, ´Fuck your charges!´
	Hop out the courtroom, like, ´What charges?´
	Big pimpin´ on your court steps
	Case y´all ain´t notice, I ain´t lost yet
	Y´all know it´s one of one
	Soon as you hear that uh, uh, uh
	Y´all know the difference right
	From rap facts and fiction, right?
	Real life I´m like HOV, real life I´m life goals
	In real life they´re like me? In real life I´m like, ´No.´
	My swag different, that bag different
	My wife Beyoncé, I brag different
	My baby Blue (What else?)
	I dream in color (What else?)
	That´s too much flavor (What else?)
	I don´t rap to suckas (Ha!)
	God bless you all, I only talk special talk
	I only talk special cloth
	Said I only talk special, ah!

	[Hook: Future]
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys (Wraith talk)
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	We go to court, we gon´ plead the fifth
	I know the judge, I´ma shoot him some chips
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys

	[Post-Hook: Future]
	Radar, radar on, bitches ain´t even on my radar
	Radar, radar on, on, you ain´t on my radar
	Radar, radar, no, no, you hatin´ on my radar
	No, no, you bitches ain´t, bitches ain´t even on my radar

	[Interlude: DJ Khaled & Future]
	I got the keys
	I got the keys, the keys, the keys
	I got the keys to all success!
	I got the keys, the keys, the keys
	We the best!
	I got the keys, the keys, the keys
	Roc Nation! Freebandz!
	Secure the bag alert
	Alert, alert, alert, alert, alert, alert
	Alert, alert, alert, alert, we got ´em alert

	[Hook: Future]
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys
	We go to court, we gon´ plead the fifth
	I know the judge, I´ma shoot him some chips
	I got the keys, the keys, the keys
	I got the keys, the keys, the keys',3,2,3),
	('Miðgarður',280,'Manstu hvað gerðist í Miðgarði þá?
	(Ég sá, ég sá.)

	Margt fyrir löngu var búið til lag,
	ljóðið svo skrautlega skrifað.

	Hetju sem barðist við vængjaða vá?
	(Ég sá, ég sá.)

	Baldur sem barðist af drengskap þann dag,
	dó svo að við gætum lifað.

	Vafrandi enn um hrollkalt hraun,
	hrakin sig glennir vofa.
	Hitinn frá brennu huggar raun,
	hér sofa menn í kofa.

	(Kvöld úr norðri, kalt í hlíðum,
	knýr að dyrum myrkrið svart.
	Þolinmóð við þannig bíðum
	þess að verði aftur bjart.)

	(Traustur máttur réttra rúna
	róar geð er vindur hvín.
	Sorgir allar sefast núna,
	sofðu, unga ástin mín.)',4,4,4),
	('For Free',219,'[Intro: DJ Khaled]
	Would you fuck me for free?
	Another one
	We the Best Music! Major Key! DJ Khaled!

	[Verse 1: Drake]
	I go on and on
	Can´t understand how I last so long
	I must have the superpowers
	Last 223 thousand hours
	It´s cause I´m off of CC
	And I´m off the Hennessy
	And like your boy from Compton said
	You know this dick ain´t free!
	I got girls that I shoulda made pay for it
	Got girls that I shoulda made wait for it
	Got girls that´ll cancel a flight back home
	Stay another day for it
	You got attitude on na na
	And your pussy on agua
	And your stomach on flat flat
	And your ass on what´s that?
	And, yeah, I need it all right now
	Last year I had drama, girl not right now
	I was never gon´ chat what we talkin´ about
	You the only one I know could fit it all in her... man

	[Chorus: Drake]
	I always wonder if you ask yourself
	Is it just me?
	Is it just me?
	Or is this sex so good I shouldn´t have to fuck for free?
	Is it just me?
	Is it just me?
	Or is this sex so good I shouldn´t have to...

	[Verse 2: Drake]
	Fuck for free
	I know you workin´ day and night to get a college degree
	Bet nobody that you´ve been with even know you a freak, right?
	You know you only do that with me, right?
	Yeah, double checkin´ on you
	You know I never put the pressure on you
	You know that you make your own mind up
	You knew what it was when you signed up
	Now you gotta run it up
	I be out of words, tryna sum it up
	Girl you throw it back like one love
	Even let me smash on the tour bus
	Yeah I talk to her but she don´t do enough
	Even though you in the hood I´m still pullin´ up
	Dip, dip, straight to your doorstep
	This the real thing, can you feel the force yet

	[Chorus: Drake]
	I always wonder if you ask yourself
	Is it just me?
	Is it just me?
	Or is this sex so good I shouldn´t have to fuck for free?
	Is it just me?
	Yeah, is it just me?
	Is this sex so good I shouldn´t have to...
	Would you fuck me for free?

	[Outro: DJ Khaled]
	Another one
	They don´t want me to have another anthem
	So I made sure I got another anthem
	It´s We The Best OVO
	Summers ours
	It always has been
	Don´t ever play yourself
	One time for Future the Prince
	One time for 40
	One time for Drake
	Another one
	Bless up',3,2,3),
	('Here They Come!',136,'enginn texti',1,1,1),
	('Jabba The Hutt',187,'enginn texti',1,1,1),
	('The Forset Battle',260,'enginn texti',1,1,1),
	('Throne room and finale',477,'enginn texti',1,1,1),
    ('Know Me',206,'Everybody know me
	Everybody know me
	Everybody know me

	Everybody know Marshmello

	Everybody know me
	Everybody know me
	Everybody know me
	Everybody know Marshmello

	Everybody know me
	Everybody know me
	Everybody know me
	Everybody know Marshmello

	Everybody know me
	Everybody know me
	Everybody know me
	Everybody know Marshmello

	Everybody know me
	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Body know, body know, body know, body know, body know...
	Everybody know Marshmello!
	One two three

	Everybody know me

	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Everybody know me

	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Everybody know me

	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Everybody know me

	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Everybody know me

	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Everybody know me

	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Everybody know me

	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Body know, body know, body know, body know, body know...

	Everybody know Marshmello!
	Everybody know me
	Everybody know me

	Everybody know me
	Everybody know Marshmello
	Everybody know me
	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Everybody know me
	Everybody know me
	Everybody know me
	Everybody know Marshmello
	Everybody know me
	Everybody know me
	Everybody know me
	Everybody know Marshmello',2,3,2),
	('Summer',233,'enginn texti',2,3,2),
	('Find Me',180,'enginn texti',2,3,2)
    ;

