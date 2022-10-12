create table class(
Id int primary key,
Name varchar(255),
classroom varchar(255),
);
create table subject(
Code int primary key,
Name varchar(255),
);
create table student(
ID int primary key,
Name varchar(255),
birthday date, 
classSTD int foreign key references class(Id), 
);

create table result(
Id int primary key,
exam int,
result varchar(255),
subResult int foreign key references subject(Code),
STDResult int foreign key references student(ID),
);

create table studentsubject(
studentID int foreign key references student(ID),
subjectCode int foreign key references subject(Code),
);