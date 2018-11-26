# Idea board application

## About

Multimedial website designed to collect creative inspiration and innovative ideas for projects in one place and in different formats: text, graphics or video. An additional feature in form of a calendar allows users to plan their work and to add important events to it. The aim of this project was to create a simple and effective application providing tools to plan work and stock multimedial information. 

## How to get the application up and running

	git clone 
	- clone the repository from GitHub to the current directory 

	cd idea-board-app
	- change the working directory to the application directory 

	bundle install
	- install necessary gems  

	bin/rails db:migrate
	- initialize the database

	bin/rails s
	- run the application on the local server http://127.0.0.1:3000

## Technical requirements
	- ruby '~> 2.3.4' or newer
	- postrgreSQL
	- Bundler 
	- Ruby on Rails '~> 9.5' or newer 

## Deployment instructions (for Heroku)
	
	git push heroku master 
	- deploy the application to Heroku
	
	heroku run rails db:migrate
	- migrate the database 

## Future steps

### BACKEND
* alow user to diplay the calendar in different formats: weekly/monthly/yearly
* change displaying of the UTC time in meetings views  
* add the link / area to add a new note when displaying all notes  

### FRONTEND
* Change the color of the links:light grey/white on the dark grey backgroung 
* Style the calendar
* Style dispaying of the notes 
	when the mouse mouse is over a note (idea:hover)
	size of the image in miniature 
* Style alerts


