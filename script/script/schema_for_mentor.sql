
CREATE TABLE real_mate.mentor
    id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age_range TEXT,
    gender TEXT,
    conditions TEXT[],
    feelings TEXT[],
    situations TEXT[],
    locations TEXT[],
    ethnicities TEXT[],
    languages TEXT[],
    educations TEXT[],
    ocupations TEXT[]
);


CREATE TABLE real_mate.mentor
    id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age TEXT,
    gender TEXT,
    conditions TEXT[],
    feelings TEXT[],
    situations TEXT[],
    locations TEXT[],
    ethnicities TEXT[],
    languages TEXT[],
    educations TEXT[],
    ocupations TEXT[]
);



CREATE TABLE realmates.real_mate 
(
    id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age TEXT,
    gender TEXT,
    feelings TEXT[]
);

INSERT INTO realmates.real_mate
(id, first_name, last_name, age, gender, feelings)
VALUES(0, 'Maria', 'Cano', '29', 'F', ARRAY['sad', 'anxiey', 'angry']);

INSERT INTO realmates.real_mate
(id, first_name, last_name, age, gender, feelings)
VALUES(1, 'Nati', 'Lara', '24', 'F', ARRAY['anxiey', 'angry']);

select * from realmates.real_mate where 'sad' = ANY(feelings);


select * from realmates.real_mate where feelings @> '{"anxiey", "angry"}';




const mockData = {
 "helpSeekerID": 1,
 "filteOptions" : {
  "feelings": [
        "sad",
        "anxiey",
        "angry"
      ],
   "situations": null,
   "locations": null,
   "ethnicities": null,
 } 
}
