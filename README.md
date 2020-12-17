# Pamela Panel

This is a fun Client-side Oriented, Admin Panel to easily manage data regarding fictitious coures, cohorts, students, instructors, and reminders. <br>
This application was build with Ruby on Rails.<br><br>

<a href="https://murmuring-hamlet-99473.herokuapp.com/"><img src='/app/assets/images/wave2.png'></a>

<p>The user can login as an Admin and create records to the ficitious school,
From students, instructors, cohorts, courses, reminders, and so on. <br>
The homepage gives an overview of all the possible things an admin can do, but to see in more details, the admin can use the navbar and go into each specific section. <br>
There is CRUD all around this application.</p>

## Demo
<a href='https://youtu.be/-KmdzI8OZVQ'><img src='/youtube-logo.png'></a><br>


## Features
Admin can log in and log out <br>
Can create students, instructors, cohorts, courses, reminders <br>
Can create cohorts and added several students at once <br>
There is client validation around all functions in the application <br>
There is dependency using the domain model, in other words, if an active record association is not supported when deleting one of the models, rather than seeing an error, the application will delete the dependencies as well. <br>

## Active Record Associations
There are 8 models in total. 
Rather than following a typical pattern when drawing the associations, I explored into a different approach, and the associations are as follow: 

<img src='app/assets/images/Domain_model.png'>
In here there is the <strong>Admin</strong> and <strong>Reminders</strong> models where they are free to exist without dependencies on the others. <br>
For the <strong>Cohort </strong> model, there are three dependencies, a student, a course, and a instructor. The reason of my approach, is to mimic the reality of a school, and how there is a need for this two models to exist in order to create a cohort <br>
The model <strong>Cohort-Students </strong> can have one cohort at times, but one or more students can be added at once for the model.

## Tech Stack
<p>Ruby on Rails v.2.5.1</p>
<p> PostgreSQL </p>
<p> devise gem </p> 
<p> sentry-raven gem </p>
<p> Bootstrap </p>

## Build Status 
<p>Deployed</p>
<p>Other features may come in the future</p>

## Next Steps 
<p> If I were to continue working in this project I will add the following: <br>
<li> Grades for students </li>
<li> Make the application mobile responsive </li>

## Visit a deploy version here
<a href='https://murmuring-hamlet-99473.herokuapp.com/'> Pamela Panel </a>
