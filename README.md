# The Reading Room App

This is a full stack web application with an HTML/CSS/JS client and an Express server connected to PostgreSQL database build to give directories of authors and the books they have written.

**This App contains the following functionality**
- Users can see a list of all books 
- Users can see a list of all authors in the database
- Users can select a book to see more details on the book
- Users can select an author to see a list of books by that author
- Users can add a new book to the database
    - If the new book is by an author not currently in the database, a record is created for that author
- Users can delete a book
    - If, upon deletion of a book, the associated author has no more books in the database, that author's record is also deleted

[Here is a clip to demonstrate the App.](https://www.youtube.com/watch?v=fq53QtF-5MU)


## There are some bugs that need to be fixed(As of 10/12/2021, these bugs have now been fixed)
- HTML elements fail to fetch the SQL query results so the books and authors are not being displayed.
![Alt Text](https://github.com/getfutureproof/fp_lap_2_debug_assignment-sf308/blob/souheil/authors_fail.GIF)
![Alt Text](https://github.com/getfutureproof/fp_lap_2_debug_assignment-sf308/blob/souheil/books_fail.GIF)

## Check out the reported test coverage(Updated)
Test Suites: 6 passed, 6 total
Tests:       23 passed, 23 total
Snapshots:   0 total
Time:        12.22 s, estimated 18 s
Ran all test suites.

## Use the commands below to run tests

**bash _scripts/startDev.sh**
- starts client, api & db services
- runs db migrations
- seeds db for development
- serves client on localhost:8080
- serves api on localhost:3000

**bash _scripts/startTest.sh**
- starts api & db services
- runs db migrations
- attaches to api container and triggers full test run
- no ports mapped to local host

**bash _scripts/teardown.sh**
- stop all running services
- removes containers
- removes volumes

These enviroments will take a little time to set up especially the first time you run but both will listen for changes when running *except* for database setup files ie. anything in `db/migrations`. 

***Do not run both dev and test environments at the same time.***

***
