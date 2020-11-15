# README

## About

Community-connect is a two sided-marketplace app designed to bring people willing to volunteer their time together with local charities or community groups. It was developed in accordance with the requirements of Coder Academy T2A2 Marketplace Project.

This README would normally document whatever steps are necessary to get the
application up and running.

## Installation

Things you may want to cover:

* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions

## R9 R10 Links for this app

Github - <https://github.com/bronwyncarr/marketplace>

Heroku - <https://volunteer-marketplace.herokuapp.com/>

Trello - <https://trello.com/b/KXzaMOYT/marketplace-app>

## R7 Identification of the problem you are trying to solve by building this particular marketplace app.

Volunteers are relied upon to provide many services and functions critical to Australian society. However, since 2010, The Australian Bureau of Statistics reports that the amount people who volunteer is decreasing. A report by Volunteering Australia cited some of the common barriers people faced to volunteering were:

- Did not have time – 67%
- Unable to make a long-term commitment – 62%
- No one asked – 45%
- Did not know how to become involved – 22%

Due to barriers, the amount of people volunteering in our community is decreasing. This problem affects small charities that rely 100% of volunteers in addition to larger ones that still have a large volunteer workforce.

## R8 Why is it a problem that needs solving

Charities and community groups play a critical role supporting our society and a wider range of services we rely on. Most notably, in Australia over 3 million people live below the poverty line and almost half of them regularly rely on food relief. However, almost everyone in Australia would draw benefit from the wide range of services charities and local community groups provide. These include services such as: keeping beaches safe, looking after elderly, fighting fires, running local facilities, accessing medical care and championing equality; in fact, there are over 50,000 Australian registered charities.

COVID19 has had devastating economic and social effects on our community contributing to an increase in alcohol and addiction related issues, food insecurity, isolation, loneliness, financial stress, job loss, family stress and domestic violence. This has increased the demands placed on Australian charities including a 47% increase in the demand for food relief and a 25-30% increase in requests for assistance for mental health services.

Many charities are completely reliant on volunteers and are facing unprecedented demand for assistance. In addition to the social benefits, volunteer contribute billions of dollars to the Australian economy and in general, personally benefit from an increase to their physical and mental wellbeing.

## R11 Description of your marketplace app (website), including

### Purpose

The purpose of this app is to connect charities/community groups and volunteers. It will remove some of the barrier’s volunteers face, allow charities to raise awareness and support local connections. Charities can register requests for assistance for a specific task which volunteers register for on a one-of basis. Volunteers can become aware of what opportunities exist in their local area and see the date, time commitment and skills required. This will remove some of the barriers identified.

| Problem | Targeted solution |
| ------------- | ------------- |
| Did not have time | Volunteers can see the time commitment and date so they can fit it around a busy or unpredictable schedule without on-going commitment |
| Unable to make a long-term commitment | Volunteers make a one-off commitment to a specific task with no on-going requirment |
| No one asked | Community groups can post requests for assistance |
| Did not know how to become involved | Raises awareness of the volunteering opportunities |

Benefits include:

- Assist charities to find volunteers to help complete task
- Raise awareness of the importance role charities play in our society
- Allows people to build social connections within their local community
- Allow people to give back to their community
- Encourage people to be considerate of others
- Encourages bridging social and cultural divides by bringing people together
- Allows people to share knowledge and learn new skills
- Encourages a sense of achievement by being able to contribute to specific tasks
- Encourages a sense of fulfilment by assisting others
- Enables more people to be involved in their community who might previously not been

### Features

The app will allow charities to log in and post information on a one-off request for assistance such as building garden beds at a neighbourhood house or holding a second-hand book sale. Requests can include a picture, title, summary, description, date, time commitment, list of skills required, address and a map. Charities can update or delete these details at any time and see a full list of their requests.

Volunteers can log in and see a list of all the requests for assistance order by date. They can search for a particular task or by the skillset they have. They can click on a request to get more information about what is required including the time commitment, date, skills required and location. If they are interested in a task they can register.

If a volunteer registered their interest in a task an email will be sent to them confirming this. Volunteers can view a list of tasks they have expressed interest in for their records and will recieve a confirmation email. Charities can view a list of the contact details of everyone who has expressed interest in each task so they can contact them with further information or to make arrangements.

### Sitemap

### Screenshots

### Target audience

This app is targeted people who wish to volunteer and charities or local community groups who require assistance. The app will appeal to those who already actively volunteer in their community but is also designed to break down some barriers to volunteering and encourage more people to become involved. This will include people who previously:

-	were unaware of non-stereotypical volunteer opportunities that they could do
-	thought they didn’t have the time or availability
-	didn’t want to make an ongoing commitment
-	thought they didn’t have any useful skills to help
-	thought there wasn’t a need
- want to help but didn't know how/where to start

Target audience examples might include:

-	Charity/local groups who need extra assistance
-	Charity/local groups who require an increase in demand such as in lead up to Christmas
-	Charity groups who require a task outside the skillset of their normal volunteers
-	People who want to build social connections in their community especially if they now work from home/lost their job due to COIVD19 or are new to the area. 
-	People who want to volunteer as a family but need tasks suitable to their family
-	People who want to volunteer but at a time convenient to them without an ongoing commitment
-	People who want more information about what is required before having to commit

### Techstack

Teck stack used for this project is:

| Tech | Usage |
| ------------- | ------------- |
| Ruby on Rails | Back end |
|Javascript | Dynamic content |
| Postgres database | Relational database |
| HTML with EMB | Controls the content to be displayed |
| Bootstrap CSS | Framework for most styling |
| SASS | In addition to bootstrap for additional styling |
| Third party services and gems | [As detailed below](#r16-detail-any-third-party-services-that-your-app-will-use) |

| Other | Usage |
| ------------- | ------------- |
| Heroku | Deployment |
| Github | Version control |
| Trello | Project management planning |

### R12 User stories for your app

#### Guest

- As a guest I want to see a bit about the app and opportunites listed before I have to sign up so that I can see if I'm interested.
- As a guest I want an easy sign up process so that I can use the app further.

#### Volunteer

- As a volunteer I want to be able to have an account
- As a volunteer I want to be ablet to see opportunities so that I can see what's available.
- As a volunteer I want to be able to search based on a name or my skillset so that I can find opportunities suitable to me.
- As a volunteer I want to be able to express interest in a task.
- As a volunteer I want to be able to save tasks I’ve expressed interest in so that I can refer back to them.

#### Charity

- As a charity I want to be able to list tasks I need assistance with so I can attrach volunteers.
- As a charity I want to be able to manage my listed tasks so that I can change or delete them as necessary.

#### User

- As a user I want a navigation section and a clean layout so I can easily use the app.

#### Developer

- As a developer I want clean, commented code so I can easily understand what has already been writen.
- As a developer I want a readme that explained about the project so I can understand it's purpose.

### R13 Wireframes

x5 for different layouts

### R14

### 15 Explain the different high-level components (abstractions) in your app

Abstraction via inheritance 
Inheritance all over rails
ActionController::Base => params, redirect_to, render
ActiveRecord::Base => all the active record methods, .save, .create, .find
All of these methods are abstracted away, we don't actually need to know how they're implemented we just need to know they exist
Through the ORM we abstract SQL


### R16 Detail any third party services that your app will use

### R17 Describe your projects models in terms of the relationships (active record associations) they have with each other

#### Final models and associations

The models I have in my application are:
-	tasks
-	interests
-	users
-	required_skills
-	addresses
-	charities
-	charity_kind

Their relationships are:

LINK!!!!!!!!!!!!!!!!!!!!!!!!!

#### Initial plan

Initially I had a solid idea of what I wanted my application to achieve but was unsure of how to achieve that. This would determine what the models and relationships I would neede. After sketching my first rough ERD, see below, I found that there were some core questions about the functionality I had to answer to be able to finalise it.

LINK!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#### Clarifying questions

Firstly, would the person who lists the task be a charity or a user? Would they be a charity with a charity account specific to that charity or would they be an individual with a personal account. This determined whether I needed one `users` entity that could post and register for tasks or two separate `charities` and `volunteers` entities with separate functionality. This would also determine the relationship between the users and the tasks that were created.

Secondly, I imagined the app would be used in real life once a volunteer found a task they were interested in. I wanted volunteers to be able to register an interest in a task and for their contact email to then be accessible to the charity to contact them with further information. I wanted the volunteer to see a list of tasks they had registered an interest in and a charity to see a list of interested volunteers for each task. This meant I needed reference of the user who created the task, designating them the charity contact person for that task. Only they would be able to edit and delete the task and access a list of all interested volunteers. I also needed a reference of users who were interested in the task. A user should be able to see a list of all tasks they have volunteered for and add or delete tasks from this list.

To achieve this I created a one to many relationship between `tasks` and `users`. I also created a `interests` table that references a user expressing an interest in a task. I initially called this table `eois` (expression of interests) however I was not sure that this abbreviation would be clear to other developers. After researching on abbreviations.com I found eoi could also stand for:

-	Explode On Interrupt
-	Export Oriented Industry
-	European Ombudsman Institute
-	Egyptian Olympiad in Informatics
-	Earth Orbit Insertion (NASA)
-	End Of Injection

Hence I renamed it `user_tasks` and then `interest` for clarity.

Lastly, I wanted to be able to list skills required to help charities attract suitable volunteers and volunteers to feel confident that they were able to fulfill the role. Would a task be specific to each skill where the information could be tailored, or would it be better than multiple skills could be referenced? If a charity had an event that they needed multiple skills for, it would be quicker for them if they didn't have to create multiple listings. However if they needed multiple skills, would they know if the interest they received was for all the required skills. For example, if they were planning a bake sale, they might need people:

-	who can bake
-	with a drivers license to transport equipment
-	with basic construction skills to set up a stage
-	with cashier skills to oversee money practises
-	unskilled assistance for selling products

It would be time consuming for the charity to have to post 5 times rather than once but they might also want to know the interest they receive meets the skills eg, not everyone has construction skills and no-one bakes.

I decided to go with multiple skills to make the process efficient for the charity and if I was to further develop the app I would like to add the functionality that when a user registers, they can select the skills they want to contribute.

Once I was able to answer these questions, I was able to refine my ERD as showed in question 19 and settle on the models and relationships for the application.

### R18 Discuss the database relations to be implemented in your application

The database entities and relations implemented in my application were as follows:

#### Tasks

My database is centred around the `tasks` model. This represents a single request for assistance posted by a charity/community group. It contains a unique id integer as the primary key and contains other attributes that describe the task such as title, a short summary, a longer description, hours and date.

#### Skills

I wanted to be able to make a list of skills required for each task so charities could get targeted skills and volunteers could see if the task was suitable to them. These could include things like baking, carpentry, car license, working with children check etc. I created a `skills` table that had a unique id number as the foreign key and a name of the skill as an attribute. A task could require many skills and skills could be assigned to many tasks.

I decided `tasks` and `skill`s had a **many-to-many** relationship so created a joining table called `task_skills` to connect them this. This table would contain the foreign key task_id and the foreign key skills_id to reference both. This means that:

-	 task *has_many* skills *through* task_skills
-	skills *has_many* tasks *through* task_skills
-	task_skills *belongs_to* both skills and tasks

#### Addresses

Each task would need an address. I chose to break the address into street address (eg 8/120 Spenser Street) suburb, state and country. The address table also had a lat (latitude) and long (longitude) attribute which is generated by geocoder when the address is added.

I debated if country was necessary or if it depended on state as per the third normal form but decided for scalability, if it was to used globally, country would be required and country would not necessarily depend on state. I also decided postcode would not be required as the suburb, state and country combination would be enough to determine the address. I considered breaking street address up further into street number, an integer and street name, a string. However, I know that this format is not consistent with all addresses, especially address conventions used in other countries so I felt having a string was the best option to include all addresses.

I decided that `tasks` and `addresses` had a **one-to-one** relationship. Each task *has_one* address and the address would belongs_to one task so I put a task_id foreign key on the address table.

#### Charities

Each task would be for a specific charity. I wanted to include specific information about the charity so volunteers could learn more about the causes they could support. To be consistent with the second normal form, I separated charity from being an attribute of task to a separate `charities` entity. This way I could include information such as the charities name and a description. It has a unique id as a primary key.

I decided a task would be for only one charity but charity could have many tasks coming up so they had a **one-to-many** relationship. A charity *has_many* tasks and a task *belongs_to* a charity so I put a foreign key on the tasks table.

#### Charity_kinds

I initially planned for the charity to have a category/type attribute as a string for example, environmental, social welfare, education etc. There would only be some dozen different kinds of charities that were applicable to the charities so I decided they should be a seperate entity `charity_kinds` As the app grew further I imagined more information about the kinds of charities being added and referenced. Charities currently have a **one-to-many** relationship with charity-kind as a charity *belongs_to* a charity-kind but a charity-kind *has_many* charities so the foreign key charity_kind_id was put on the charity table.

#### Users

I debated the relationship between `users` and `tasks` based on the functionality I wanted the application to have. The user model represents a person using the app, whether they be a volunteer, a contact person for a charity or both. It has attributes including a username, encrypted password and email. I considered adding a more comprehensive profile such as phone number, picture, skills. Whilst this might be utilised if the app was developed further, with the timeframe available I decided it was unnecessary and thus, in accordance with the Privacy Act, the app shouldn't store more personal information than necessary. I considered making the email a primary key due to it’s unique nature but decided should a user change emails or want to update their email, a unique id number would be better.

A user creates a task so has a direct relationship with it. A user can create many tasks but a task is created by only one user. I decided there was a **one-to-many** relationship between `task` and `user`, a user `has_many` tasks and a task `belongs_to` a user so I put the foreign key user_id on tasks.

#### Interests

I also wanted a user to be able to volunteer or express interest in a task. This would be a different relationship to the direct relationship between a user creating a task as above. A user could be interested in many tasks and a task could have many interested users. I decided they had a **many-to-many** relationship between `tasks` and `users` through a joining table, called `interests`. This means that:

- `user` *has_many* tasks *through* `interests`
- `task` *has_many* interested `users` *through* `interests`
- `interests` would *belong_to* `tasks` and `users`
- `interests` would have the foreign key for both in addition to a unique id number as the primary key.

### R19 Provide your database schema design

The schema for my database design is:

![]() LLLIIIIIINNNNNNKKIKKKKKKKKK

It can also be found here: <https://dbdiagram.io/d5f9b7ae53a78976d7b79c53b>

### R20 Describe the way tasks are allocated and tracked in your project

#### Overall

I knew planning and task allocation would be critical to this project to balance what I hoped to achieve and the timeframe allocated. I spent the first day and a half planning my time and how I would achieve a project that meet MVP in the timeframe.

First, I had to work out what I considered an MVP. I knew I wanted to develop an app that would contribute to social good by encouraging people to volunteer and connect in their local community, and, at the same time, assist charity and community groups struggling to meet the unprecedented demand due to COVID19. I used user stories to tease out the problem and help determine what functionality I wanted the app to have as an MVP and as a stretch goal if I had time.

#### Big picture

I first planned the ‘big-picture’ work that I needed to do in a logical order on a calendar allowing for plenty of time to get to MVP before the deadline, fix bugs, and then work on extra features if I had time. This gave me goals to reach and meant I could compare where I was at the start of each day with where I planned to be and make adjustments early if I was having issues.

I participated in class stand-ups (virtually) and did one myself on mornings we didn’t have one. I found they were a concise way to review what I had done yesterday, what I wanted to achieve that day, what blockers I had and how my progress compared to my plan. This way I could monitor my progress, get help early and adapt my plan as necessary.

An example of this was on Monday the 9th I was working on my models and schema but as I started to develop the code I felt that they were not correct. I reviewed my ERD from Friday and thought it needed amending. I had planned to finish this on Friday and it was a core part of the app so before continuing with other tasks like searching that I had planned for that day, I stopped and worked on fixing the ERD. I started getting confused between the functionality of tasks and users so sought help from my educators, talked through my problem and looked for ways to simplify the diagram. Once I sorted the core problem I adjusted my timing plan accordingly and then felt comfortable to continue with secondary tasks like the searching feature.

#### Detailed

I used a Trello board for a detailed breakdown of tasks that needed to be completed. I divided planned tasks down into user stories, assignment requirements such as the slide deck and ‘pretty bits’/stretch goals. I also kept a list of bugs I could quickly add to and come back to at an appropriate time. I labelled each task with a High-Medium-Low priority and a Start-Midway-Final-Ongoing phase to help me visually see what I should be working on and at what stage. I set deadlines for tasks consistent with my calendar plan so I could easily see where I needed to focus attention or adapt my plan. I moved cards to ‘doing’ when I was working on them and ‘done’ when complete.

#### Deployment

Heeding advise from my educators; I also deployed my app to Heroku a week before it was due and redeployed regularly. This helped me catch any bugs when deployed to Heroku that I had not found running my application locally.
