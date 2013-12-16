INSERT INTO users (name)
value ("ariel");

INSERT INTO users (name)
value ("armando");

INSERT INTO users (name)
value ("kate");

INSERT INTO quizzes (name)
value ("Getting to know us");

INSERT INTO quizzes (name)
value ("Getting to know us - REMIX");

INSERT INTO questions (content, quiz_id)
value ("Which of the following is a valid group member's superhero name?", 1);

INSERT INTO questions (content, quiz_id)
value ("What was Kate for Halloween this year?", 1);

INSERT INTO questions (content, quiz_id)
value ("What does Armando say when a friend he hasn't heard from in awhile ask him for a favor?", 1);

INSERT INTO questions (content, quiz_id)
value ("What is Nisha's favorite comeback?", 1);

INSERT INTO questions (content, quiz_id)
value ("What's Ariel's least favorite vegetable?", 1);

INSERT INTO questions (content, quiz_id)
value ("Which group member does NOT wash their arms?", 2);

INSERT INTO questions (content, quiz_id)
value ("Name the ingredients of Armando's Leftovers Jambalaya?", 2);

INSERT INTO questions (content, quiz_id)
value ("What did Amine say about Nisha?", 2);

INSERT INTO questions (content, quiz_id)
value ("What's the correct pronunciation of Ariel's name?", 2);

INSERT INTO questions (content, quiz_id)
value ("Which group member was prom queen/king?", 2);

INSERT INTO choices (content, correct, question_id) value
("Gnarley Nisha",0,1),
("Awkward Ariel",0,1),
("Angry Armando",1,1),
("Clapping Kate",0,1),

("CatDog",1,2),
("A unicorn",0,2),
("Betty Spaghetti",0,2),
("Dolly the cloned sheep",0,2), 

("What does it pay?",0,3),
("Of course, man.",0,3),
("Your face needs a favor!",0,3),
("It's quiet.",1,3),

("Your face is [insult here]>",1,4),
("Your momma [insult here]",0,4),
("That's what you think",0,4),
("What-dash-ev",0,4),

("Carrots",0,5),
("Kale",1,5),
("Spinach",0,5),
("Cauliflower",0,5),

("Ariel",0,6),
("Armando",0,6),
("Kate",1,6),
("Nisha",0,6),

("Gods knows",0,7),
("Turkey, ham, Ragu, cheese, pasta",1,7),
("Eggs, turkey, corn, onion, rice",0,7),
("Sausage, bacon, shrimp, bologna, anchovies, sour cream",0,7),

("Nisha's really good at coding but she really SUCKS at this game",0,8),
("Nisha, You smell like an old lady from the Upper East Side",0,8),
("Nisha, I thought you are Indian but you are realy white",0,8),
("All of the above",1,8),

("arr-ee-EL",1,9),
("AIR-ee-ul",0,9),
("air-eel",0,9),
("None of the above",0,9),

("Ariel",0,10),
("Kate",0,10),
("Nisha",0,10),
("Armando",1,10);