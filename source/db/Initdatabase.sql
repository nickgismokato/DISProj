CREATE TABLE IF NOT EXISTS Kommune(
	KuID serial not null PRIMARY KEY,
	Name varchar(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS Kom_Shape(
	ShapeID serial not null PRIMARY KEY,
	KuID_pk int not null references Kommune(KuID) ON DELETE CASCADE,
	Lon float not null,
	Lat float not null
);

CREATE TABLE IF NOT EXISTS Users(
	UID serial not null PRIMARY KEY,
	Username varchar(16) UNIQUE,
	Password varchar(32) not null,
	JoinDate date not null,
	OnlineStatus bool not null
);

CREATE TABLE IF NOT EXISTS Subscribers(
	KuID_pk int not null references Kommune(KuID) ON DELETE CASCADE,
	UID_pk int not null references Users(UID) ON DELETE CASCADE,
	PRIMARY KEY(UID_pk, KuID_pk)
);

CREATE TABLE IF NOT EXISTS Posts(
	PID serial not null PRIMARY KEY,
	Content varchar(2000),
	PostDate date,
	KuID_pk int not null references Kommune(KuID) ON DELETE CASCADE,
	UID_pk int references Users(UID) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS Replies(
	RID serial not null PRIMARY KEY,
	Content varchar(300),
	ReplyDate date,
	UID_pk int references Users(UID) ON DELETE SET NULL,
	PID_pk int not null references Posts(PID) ON DELETE CASCADE
);