-- Creating student_information table
Create table student_information (
    ID int not null,
    Age int not null,
    Gender varchar(10) not null,
    Stream varchar (40) not null,
    primary key (ID)
);

-- Checking import
Select * From student_information;

-- Creating student_predictors table
Create table student_predictors (
    ID int not null,
    Internships int not null,
    CGPA int not null,
    Hostel int not null,
    HistoryOfBacklogs int not null,
    PlacedOrNot int not null,
    foreign key (ID) references student_information (ID),
    primary key (ID)
);

-- Checking import
Select * From student_predictors;

-- Joining the two tables 
Select si.ID,
    si.Age,
    si.Gender,
    si.Stream,
	sp.Internships,
    sp.CGPA,
    sp.Hostel,
    sp.HistoryOfBacklogs,
    sp.PlacedOrNot
Into placement_predictions
From student_information as si
left join student_predictors as sp
ON si.ID = sp.ID;

-- Confirming join
select * from placement_predictions;
