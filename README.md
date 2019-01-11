# Team Water Spillers working on Makers BnB project built with Ruby, Sinatra.
---

### Program Outline ###

A program to enable members of the public to list a property or properties to be rented by other Users.

### What you need installed ###

```
- Ruby
- Sinatra
- ActiveRecord/PSQL
- A text editor - Atom used in production
- RSpec
- Capybara
- Rack
```

### Gems ###

```
gem 'activerecord'
gem 'pg'
gem 'pry', '~> 0.12.2'
gem 'shotgun', '~> 0.9.2'
gem 'sinatra', '~> 2.0'
gem 'sinatra-activerecord'
gem 'rack'
gem 'rake'
gem 'capybara', '~> 3.12'
gem 'database_cleaner'
gem 'rspec', '~> 3.8'
gem 'rubocop', '0.56.0'
gem 'simplecov', require: false
gem 'simplecov-console', require: false
```

### User Stories

```
As a User,
So I can save my details
I want to be able to Sign Up.
```
```
As a User,
So I can access the website
I want to be able to Log In/Log Out.
```
```
As a User,
So I can rent out my property
I want to be able to list a new space.
```
```
As a User,
So I can rent out my properties
I want to be able to list multiple spaces.
```
```
As a User,
So customers want to rent my space
I want to be able to add a description of my space.
```
```
As a User,
So customers know what they are renting
I want to be able to add a name of my space.
```
```
As a User,
So customers know what they can afford it
I want to be able to add a rate of my space.
```
```
As a User,
So customers know when they can book
I want to be able to offer a range of dates of availability.
```
```
As a Customer,
So I can book a place
I want to be able to request to hire a space.
```
```
As a User,
So I can control who books my space
I want to be able to approve a potential customer.
```
```
As a User,
So I do not get double booked
I want to only display available dates.
```  
```
As a User,
So I can ensure I get booked
I want a booking to appear as available until I have approved a customer's request.
```
---



### Models ###

![image](https://user-images.githubusercontent.com/44489447/50907218-bdf47600-141e-11e9-96f5-03def7a339d0.png)
```
The above model was implemented at the start of the project to help decide workflow.
```

![image](https://user-images.githubusercontent.com/44489447/50969697-2c950a80-14d7-11e9-884b-93e5d1572051.png)
```
The above model was created to enhance on the previous model to give us a clearer picture of how we predicted the final product to work.
```
### Approach ###

Our approach to this project was two fold, we wanted to focus on the learning objective of the project and really work on and take note of how we worked as a team. We implemented a Trello board to organise and manage our work and used its features to assign tasks and direct workflow.

We also implemented two models (see above) at the start of the process to guide our development. Initially planning on using three classes as we modelled the programs interactions we found the need for a fourth class, the calendar class.

Further as a group we decided to focus on the learnings of collaborative growth, methodical approach and the ability to TDD anything. By focusing on these goals we aimed to enhance our learning experience. The testing approach has gone well with our first feature tests passed and refactored by the morning of Day 2.

After the day 2 retro our focus was on implementing functionality and a minimum viable product to demo at the end of the day. This means that our app lacks any form of design or style, but we are happy that the app functions as it should currently and we can demo future features as part of our MVP.

### User Journey ###
```
Here the user logs in clicking log in
```
![screenshot 2019-01-11 at 15 18 06](https://user-images.githubusercontent.com/44489447/51042521-7273d080-15b4-11e9-9365-1cf6f8d2973d.png)

```
Here the user inputs their details and they can login if they have signed up.
```
![screenshot 2019-01-11 at 15 19 00](https://user-images.githubusercontent.com/44489447/51042666-c1ba0100-15b4-11e9-8d17-274a51d7a76e.png)


```
Here the user sees their basic profile and options. Giving them the options to list a space, log out or Browse available properties.
```
![screenshot 2019-01-11 at 15 19 09](https://user-images.githubusercontent.com/44489447/51042745-f928ad80-15b4-11e9-8cae-170da91dd0f7.png)

```
Here the user has chosen to browse the available properties.
```
![screenshot 2019-01-11 at 15 59 21](https://user-images.githubusercontent.com/44489447/51044814-f2e90000-15b9-11e9-988e-93a0bc8627f2.png)

```
Clicking on more information, currently displays the same short description. Future work would enable a short description on browse page leading to longer information on dedicated property page.
```
![screenshot 2019-01-11 at 16 02 05](https://user-images.githubusercontent.com/44489447/51044947-452a2100-15ba-11e9-90bd-7b28ad80a511.png)

```
Here we have two options, we can return to the property list, or we can request to book the property, the user has selected to book the property.
```
![screenshot 2019-01-11 at 16 04 19](https://user-images.githubusercontent.com/44489447/51045075-9fc37d00-15ba-11e9-8b07-573cdbaa4b6a.png)

```
And is returned a message to confirming the request has been sent to the owner. With the option to go to the homepage.
```
### User Experience ###
```
Not very good
```
### How we would move forward ###

If we had more time there are several functionalities we would fully implement to create an app that fulfils the basic specifications.

- We would implement a booking confirm method that is available to the booker so bookings can be confirmed to the owner.

- We would implement a calendar class as shown in the class model to fulfil the need for date blocking and avoid properties becoming double booked.

- We would implement an associations system for our spaces so that each property is assigned to the correct user within the database, as currently a user can list multiple spaces but they are not registered to the user.

- We would create either a new class or a child class of user which contains all the necessary methods for listing and  associating properties, as well as being able to confirm bookings.

- We would re-write the Domain model to be more reflective of the finished product.

- We would update the Class model to be more reflective of the program.

- We would update our tests to work, lint our project and complete final refactoring.

### Reflections ###

- Please see folder called RETROS for team reflections at the end of each day.
