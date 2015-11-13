# Status Report 3
04/24/15

### What was accomplished
- Rails app foundation was built, with most of the models generated
- Devise gem was integrated for user authentication
- Database structure was planned out and implemented; different models were assigned to different team members to build out and add controllers and functionality
- Bare-bones Rails app was pushed to heroku (http://foodtrek.herokuapp.com)
- Basic styling was implemented using Bootstrap
- Hashed out further details on the World Trek that will be showing for this version of the app

### Challenges and Issues
- GitHub: we faced issues pushing the rails app folder to the GitHub repository on the master branch (it was automatically being pushed as a submodule that appeared empty, even though it was registering commits). We ended up creating a new branch called ‘server’ and pushing all rails app code to that branch only.
- Divide and conquer: figuring out how to divide work evenly in a way that all team members can complete without having to be dependent on another to finish work first.
- Rails Server issues: some team members are experiencing issues with firing up the rails environment on their local machine; the rails server indicates it is running, yet localhost is not connecting to the Ruby on Rails app.

###Future Plan
- Complete back-end setup of models and controllers
- Update homepage and World Trek page to show Google Maps with icons on it
- Decide on whether we will use Locu API for the app as well, and if yes, implement it
- Build out the Dashboard where users can track progress
- Finish styling

