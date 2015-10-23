README * HOW TO RUN THIS CODE
=============================
Clone this repository  
Navigate to the folder 'uni-lf'  
Make sure RVM is installed   
--------------------------
bundle exec install  
rake db:migrate  
rake db:seed  
rails s  

then open localhost:3000 in your browser

ALTERNATIVELY
=============

-If you don’t have a terminal that supports Ruby on Rails and Github, then
download and install cloud9
-Click on create a new workspace
-Enter any name and description and in the “Clone from git” form, enter this
link:
https://github.com/lucasaitch/uni-lf.git
-Select rails as the template  and click on create the workspace

-Once the workspace is created type on the terminal:   bundle install
-And then to run the code and create the website type:   rails server -b $IP -p
$PORT
-The terminal should say the address of where your code is running, copy it and
paste in a browser in order to open the website


HOW TO VIEW THE WEBSITE
=======================

Point your browser to http://104.131.43.227:3000/
