# JAKE GLASSON - T2A1 WORKBOOK

### BRIEF:

ACME Corporation is looking for devs with an understanding of Rails. The following set of questions relate to this RfQ-requirement.

## Q1 - Describe the architecture of a typical Rails application

The architecture of a typical Rails app is best shown and then explained:

![alt text](./docs/rails_architecture.png)

### BRIEF EXPLANATION:

* Browser: Sends requests to the web server, receives information (HTML file) from the web server based on request and displays it to the user 

* Web Server: sends requests it receives to the routing engine. Receives HTML files and sends them to the browser

* Routing: sends request to the appropriate controller based on the routing URL pattern of the request  

* Controller: receives request, renders a view and/or interacts with the model depending on the type of request  

* model: when invoked by the controller will interact with the database and if required retrieve data for the controller  

* View: constructs a html document to be served to a browser that contains the requested data  

### LIFE OF A REQUEST IN RAILS ARCHITECTURE:

1. User makes a request from their browser, browser makes a request to a web server (that request can be any of the following methods: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE

2. The web server then sends that request to the appropriate routing engine

3. The route engine then sends that request to the appropriate controller based on the routing URL pattern of the request  

4. The controller receives the request from the routing engine and calls upon its appropriate method, it may immediately display a view or interact with the model (this depends on type of request received)

5. If the model is invoked, it will interact with the database and perform operations outlined in the controllers method

6. After invoking the model, the controller may then call upon another of its appropriate methods or choose to render a view. When rendering a view, the controller may request data from the model and then send that data to the view while rendering it. (no data needs to be necessarily sent for a view to be rendered)

7. when the view is rendered, it receives any data sent by the controller. The view than sends a HTML file back to the web server, this HTML file can either be a dynamically generated HTML file (from the data sent over by the controller) or a static file.

8. The web server receives the HTML file and sends it to the browser 

9. Browser receives HTML file and displays it to the user 

REFERENCES:

https://www.tutorialspoint.com/http/http_methods.htm
https://www.bogotobogo.com/RubyOnRails/RubyOnRails_Model_View_Controller_MVC.php

---

## Q2 - Identify a database management system (DBMS) commonly used in web applications (including Rails) and discuss the pros and cons of this database

A database management system commonly used in web applications including rails is PostgreSQL also known as Postgres. PostgreSQL was released in 1996, influenced by the Ingres DBMS, it is a free and open source DBMS used world wide in a variety of applications.

PRO:

* PostgreSQL is free meaning anyone can use it for whatever purpose they desire without cost, this means anyone can start a project that requires a DBMS with little to no startup costs, for a startup company this reduces the risk on their investment.

* PostgreSQL is open-source meaning anyone has access to the code, it is maintained and examined by a large amount of people, new features can be added by anyone and constant improvements are being made.

* PostgreSQL is multiplatform, it can be used on Windows, mac and linux.

CON:

* lacks In-memory capabilities. In-memory databases are faster than disk-optimized databases because disk access is slower than memory access, the internal optimization algorithms are simpler and execute fewer CPU instructions

* No official support as it is open source. If you went with a commercial DBMS you would have access to a tech department that could guide you through issues related to the DBMS. If you were having issues with PostgreSQL in your commercial application you would have to find your solutions in forums where you're not guaranteed an answer, support or a timely response, for a commercial product this could be a costly issue.

* Popularity, PostgresSQL popularity has dropped in recent years making it that much harder to effectively use and implement. 

REFERENCES:

https://en.wikipedia.org/wiki/PostgreSQL  
https://www.trustradius.com/products/postgresql/reviews  
https://en.wikipedia.org/wiki/In-memory_database
https://www.capterra.com/p/48791/PostgreSQL/reviews/

---
### BRIEF:

ACME Corporation is very big on project management, documentation and process. This will be a key metric in their decision to award the project. The following set of questions relate to this RfQ-requirement.

## Q3 - Discuss the implementation of Agile project management methodology

![alt text](./docs/scrum-agile-diagram.jpg)

1. VISION:  
Discuss with your team the goal of your project, what needs are you trying to meet, problems you're attempting to solve? define the mission of your project. 

2. USER STORIES:  
Define user stories for your project, these stories make up the collection of your product backlog (wishlist of features for your product) from these you will develop the features of your product.

3. SCRUM PLANNING:  
Plan out the features you wish to implement for your next release based on your product backlog. Prioritize the features to implement and estimate the time involved to complete each feature. Larger user stories are broken down into more manageable chunks.

4. SPRINT:  
Divide each feature into a sprint to be completed. The sprint duration is set to the release schedule. Each sprint is tracked by a burndown chart to make sure the sprint is on schedule for the next release. When the burndown chart indicates that the project isn't on schedule, the project can be examined and adjusted so its put back on track.

5. DAILY STAND UP:  
Everyday before work commences a stand up takes place. The goal of the stand up is to convey what work was completed since the last stand up, what the plan is for the day and any issues that are getting in the way.

6. SPRINT REVIEW:  
Once a sprint is completed the team will conduct a review. The review will go over what went right in the sprint, what went wrong and what needs improving.

7. RELEASE:  
Once all assigned sprints are completed, the next product release can be issued and the process can begin again from the scrum planning stage until the products final release.

REFERENCES:

https://searchcio.techtarget.com/definition/Agile-project-management
https://plan.io/blog/ultimate-guide-to-implementing-agile-project-management-and-scrum/  
Agile Project Management Tutorial: https://www.youtube.com/watch?v=thsFsPnUHRA  
Intro to Scrum in Under 10 Minutes: https://www.youtube.com/watch?v=XU0llRltyFM

---

## Q4 - Provide an overview and description of a standard source control workflow

A standard source control that is widely used is Git. Git allows you to effectively take snapshots of your projects as you develop them, this allows teams to keep a record of changes to the project which can be rolled back to a previous snapshot if any issues arise, it allows a team to collaboratively work on a project without worrying about conflicting code.
  
The workflow of using Git is as such:  
 
* You create a new folder for that project  

* Inside that new folder you would initialize Git, you are no on the master branch

* from here you can start to design your project

* when working on a new feature for the project you would open a new branch and call that branch something relating to the feature you're developing

* as you develop aspects of your feature you make meaningful commits, snapshots of your feature, that way you can roll back if something doesn't go right

* once you've completed your feature you would merge it with the master branch

* Git has inbuilt conflict detection so any issues with merging files will be highlighted and halt the merging process until they are fixed

* If you experience problems with your project you open the log, note your previous commits and rollback to them

That is the workflow of the standard source control Git.

## Q5 - Provide an overview and description of a standard software testing process (e.g. manual testing)

### SYSTEM TESTING:

System testing is the process of testing the finished product. 

During the process of designing software, the software must pass through unit testing (where each component is tested separately) and integration testing (where components are combined and tested together). Once these tests are complete all components are combined into the final product for system testing.

The purpose of system testing is to ensure that the finished product meets the specified requirements.

For an example of System Testing we will take a look at a very brief overview of how it applies to a car being manufactured.  
  
Each component of the car is designed separately and tested (unit testing).

Key components are combined and tested together (integration testing) like the engine and drive shaft.

After these tests are passed the production moves into System Testing.  
  
From here the car is fully assembled and put through rigorous testing designed to find if the combined components produce unexpected results and if they meet specified requirements. 

If the finished car does not meet requirements or produces undesirable results, the car is disassembled and components are reexamined as well as ran through the testing process again until the finished car meets requirements and produces no unexpected results.

REFERENCES:

https://smartbear.com/learn/automated-testing/software-testing-methodologies/

---

### BRIEF:   
Having suffered several cyber attacks in the past and resultant remedial audits ACME Corporation takes compliance, security and privacy very seriously. The following set of questions relate to this RfQ-requirement.


## Q6 - Discuss and analyze requirements related to information system security and how they relate to the project

Information system security is the process and methods involved with keeping information secure, confidential, available and insuring its integrity.

Requirements:

* Confidentiality: Information is kept available only to those individuals who have the authority to access it.

* Integrity: Maintain and assure the accuracy and completeness of the data over its lifetime.

* Availability: Information must be readily available for when it is needed. This means that all systems in place pertaining to that information (computer systems used to store and process it, security protocols and communication channels the information flows through) are working correctly

In relation to the ACME project what this means is that all data relating to the project needs to be analyzed to determine what needs to be kept confidential and who has access to this data.  
  
The integrity of the project data must be maintained at all times, records and backups are to be kept and stored securely with access limited to only those who are authorized.

The availability of the project data must not be compromised. All systems in place (computer systems, security protocols and communication channels) need to be flowing smoothly so that access to the data isn't impeded preventing work from being done.

REFERENCES:

https://www.techopedia.com/definition/24840/information-systems-security-infosec
https://en.wikipedia.org/wiki/Information_security

---

## Q7 - Discuss common methods of protecting information and data and how you would apply them to the project	

### Risk Assessments:   
  
Data is analyzed to determine how much security is needed for certain types of data. 

#### Applying risk assessments to the project:

* Data will be analyzed and from this different levels of security will be enacted for each data based on the potential severity in case of it being leaked and the probability of a leak happening.   

* The use of different levels of security will lower overall costs for the project. 

* The risk management will be conducted by an outside party (data protection officer).

### Backups:   

Backups are needed to prevent loss of data in the case of user error or technical malfunction.

#### Applying backups to the project:

* Backups are to be made as well as updated regularly.  

* Data is backed up in terms of importance, highly important data is backed up often while less important data is backed up less frequently.

* Backups are to be stored in a safe and secure location.

* Backups are to be encrypted.

* Never store sensitive data backups in the cloud.

* Check backup storage media often for deterioration, replacing backups that may fail due to physical failures. Store the physical backups as per official recommendations.

REFERENCES:

https://gdprinformer.com/gdpr-articles/6-essential-data-protection-methods

---

## Q8 - Research what your legal obligations are in relation to handling user data and how they can be met for the project

All privacy principles are derived from the Australian Privacy Act of 1988.  

https://www.legislation.gov.au/Series/C2004A03712

#### Australia Privacy Principles (APP):

During the course of the project and all other business dealings ACME must adhere to all APP. The following are three out of the thirteen principles.

#### Open and transparent management of personal information:
	
* Manage personal information openly and transparently

* Maintain an up to date APP privacy policy and have it easily accessible, free of charge

In relation to the project, all information is to be gathered openly and transparently while maintaining an APP privacy policy in accordance with the outlined regulations. The APP privacy policy is to be made freely accessible on the project website / ACME website.

https://www.oaic.gov.au/privacy/australian-privacy-principles-guidelines/chapter-1-app-1-open-and-transparent-management-of-personal-information/

#### Anonymity and pseudonymity:

* Provide the option for individuals to NOT identify themselves or the ability to use a pseudonym.

In relation to the project, while gathering information on individuals, ACME must allow individuals to remain anonymous or use a pseudonym to identify themselves if that individual should choose to do so.

https://www.oaic.gov.au/privacy/australian-privacy-principles-guidelines/chapter-2-app-2-anonymity-and-pseudonymity/

#### Collection of solicited personal information:

* Only collect personal information that is reasonably necessary or directly related to the activities or functions of ACME  

* Only collect information if the individual consents to their information being collected

* Only collect information through lawful and fair means aswell as directly from the individual

In relation to the project, ACME must only collect information that is pertinent to the project. Only collect that information if the individual consents as well as only collecting it through lawful, fair means and directly from the individual.

https://www.oaic.gov.au/privacy/australian-privacy-principles-guidelines/chapter-3-app-3-collection-of-solicited-personal-information/

REFERENCES:

https://www.oaic.gov.au/privacy/australian-privacy-principles/

---

### BRIEF:  

ACME Corporation has specifically requested the app to be based on a relational database. The next set of questions relate to this RfQ-requirement.

## Q9 - Describe the structural aspects of the relational database model. Your description should include information about the structure in which data is stored and how relations are represented in that structure.	 100-200

The structural aspects of a database is such that data is stored in tables, these tables consists of columns as well as rows and for some tables relationships exist between them.

#### Table structure:

Each row in a table consists of entries that contain data that relates to one another, for e.g. an entry on a person may contain their name, age, height, gender etc.

Each column holds certain data pertaining to a particular aspect of an entry, in the case of the above example one column may hold all the values for the age of every entry while another contains the heights and so on.

#### Relationships:

One-to-one:

* In a users database (e.g. Facebook) you would have two tables, one that contains a list of users and the other a list of their emails. Each user has one email and vice versa, therefore the relationship between these two tables is said to be one-to-one.

One-to-many/many-to-one:

* In a citizen database you would have a table for each citizen and a table for their addresses. An address may have many citizens that reside there while a citizen has one address, thus the relationship between a person and an address is called one-to-many/many-to-one.

Many-to-many:

* In a library database you may have a table for all your books and a table for all your authors. The relationship between a book and an author is that a book may have many authors and an author also may have many books, this relationship is called many-to-many.

REFERENCES:

https://support.airtable.com/hc/en-us/articles/218734758-A-beginner-s-guide-to-many-to-many-relationships

---
