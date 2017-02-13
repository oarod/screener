# README

First, thanks for taking the time to complete the project.  We understand that
everyone is busy and taking the time to complete this is greatly appreciated.

Now off to the problem at hand

Our marketing folks have came to us with a problem multiple law firms have come
back to us with while using the filter page.  Apparently our current way of
showing data on the screen is not giving them the data points they need when
filtering the page.

Here are some scenarios they came up with.

Given I have multiple categories of evidence loaded
When I filter on Transcripts
I expect to see a table layout as

Identifier, Title, Name of Person
TAB 100, McDonalds Corp Policy, Ronald McDonald
TAB 101, How to survive the zombie apocalypse, Rick Grimes
...
...

Given I have multiple categories of evidence loaded
When I filter on Emails
I expect to see a table layout as

Identifier, Title, Page 1 Summary
TAB 10, Story Time, Little Miss...
TAB 11, Skyrim Armor, Dragon Scaa...l
...
...


Given I have multiple categories of evidence loaded
When I filter on Documents
I expect to see a table layout as

Id, Identifier, Title, Name of Person, Page 1 Summary
1, TAB 10, In search of Lost Time, Marcel Proust, Some thing ...
5, TAB 23, Ulysses, James Joyce, A book abou...
...
...

----------------
Notes:
----------------

TAB XX is an internal identifier (db:seed should generate these)
Page 1 Summary should show the first 11 characters and then ...

Bonus
-----------------
Some sort of pagination would be great, but not needed for the first
iteration.  If you have time feel free to implement.

Sorting Columns would also be a nice addition.

When adding these features marketing has already told us that we should expect
anywhere from 5+ other categories of documents that will be appearing in the
next 2 months and they will also require different display formats so if there
is a way to make it extensible moving forward we should.

----------------
Setup
----------------
This was original generated with Ruby 2.2.5 and Rails 5.0.1.
There is an rbenv file for ruby 2.2.5 along with an rbenv gemset file.

----------------
Test Data
----------------
We have provided a make shift seed generator in seeds.rb to give some test data
for the changes.

rake db:drop && rake db:create && rake db:migrate && rake db:seed

Please treat this a is you were coding this for a production deployment.
Your free to add any testing tools you feel most comfortable with.

Also if you run out of time or feel you have spent enough time working on the
problem but feel if you had more time you would do things a different way or
refactor more to a cleaner design, please include your notes in an email or
in the 'what_i_would_have_done.txt' file.

----------------
Questions
----------------

If you run into any quesions that are not covered in this README, please
email jobs@allegorylaw.com and someone will respond to your questions.

----------------
Submittal
----------------

The easiest way to submit would be to:
1. Fork the project.
2. Complete as much as possible
3. Make sure the forked repo is up to date
4. Send a email to jobs@allegorylaw noting its complete with the forked url.

--------------------------------
Time frame & next steps
--------------------------------

We normally give about a full week from when the time you recieve the email
with a link to the project

Once we receive an email that your repository is updated and your project
complete our engineering team will review it within a week.  At that point
expect an email back from us on whether we would like to move forward.

Again we appreciate the time your taking to try this.
