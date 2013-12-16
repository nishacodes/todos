SELECT users.name, sum(NOT choices.correct) as incorrect, sum(choices.correct) as correct, sum(choices.correct*10) as grade
FROM answers
JOIN users on answers.user_id = users.id
JOIN choices on answers.choice_id = choices.id
GROUP BY users.id