#Health Tracker

A personal app where you can track your health by adding information about your daily activities such as eating, walking, running, swimming, etc.

###What it does

This simple app can only have one user. You can enter your weight, certain exercises you completed, the number of calories you burned during that exercise, the caloires you consumed from food. You can see a summary of your activities in the home screen.

###How it does it

Health tracker stores your information on an online database and displays it back to you when you visit any of the tabs in the navigation bar. The database started out as empty, but will grow with time due to people entering information. You can create, edit, and destroy all available entries. There is not authentications.

###How to use it

*See full documentation of each option below*

* `/exercises`: returns all exercise entries in the database
* `/steps`: returns all step entries in the database
* `/calories`: returns all calorie entries in the database
* `/weights`: returns all personal weight measurements in the database

####Results

Required keys:

* `start` (City, State)
* `stop` (City, State)
* `mpg` (integer)
* `fuel_type` (diesel, regular, midgrade, premium)
* `start_code` (3-letter airport code)
* `end_code` (3-letter airport code)
* `date` (YYYY-MM-DD)

Example URL input:
`http://enigmatic-journey-6766.herokuapp.com/steps`
