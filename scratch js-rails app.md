notes on starting js-rails app from scratch:

--------create backend app / repo 1-------------------------------
API-only Rails build
rails new appname-preferred-here --api --database=postgresql

navigate to new rails app:
cd 
--------create backend app / repo 1-------------------------------

--------create frontend app / repo 2-------------------------------
Make a new directory in your top-level project for your frontend and cd into it.
mkdir walkthrough-frontend
cd walkthrough-frontend
Tip: you can open up a new tab in terminal with command + t if you'd like to have your rails server up and running in another tab.

In the new folder, create a single HTML page for your application, and a folder to hold your JavaScript files.
touch index.html
touch index.css
mkdir src
touch src/index.js

add some sample html to index.html
open the file to make sure working:
open index.html 

To get the JavaScript part of the project up and running, link the JavaScript file to your HTML page with a <script> tag:
add this to your html file inside the <html> tags at btm of code
<script type="application/javascript" src="src/index.js" charset="UTF-8"></script>

add this to your index.js file and check browser console for the log:
option - command - j
console.log("testing...")

--------create frontend app / repo 2-------------------------------

--------create database-------------------------------
command line run:
rake db:create

make sure your rails server and console are working
rails s 
rails c
--------create database-------------------------------

--------CORS-------------------------------
cd into the new project folder you just created.

Navigate to your Gemfile and uncomment gem 'rack-cors'. This will allow us to setup Cross Origin Resource Sharing (CORS) in our API. You can read more about CORS here.

Run bundle install

Inside of config/initializers/cors.rb uncomment the following code:

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
--------CORS-------------------------------

--------Uploading to GitHub------------------------
https://docs.github.com/en/github/importing-your-projects-to-github/adding-an-existing-project-to-github-using-the-command-line
Create a new repository on GitHub. To avoid errors, do not initialize the new repository with README, license, or gitignore files. You can add these files after your project has been pushed to GitHub.
Create New Repository drop-down
Open Terminal.
Change the current working directory to your local project.
Initialize the local directory as a Git repository.
$ git init
Add the files in your new local repository. This stages them for the first commit.
$ git add .
# Adds the files in the local repository and stages them for commit. To unstage a file, use 'git reset HEAD YOUR-FILE'.
Commit the files that you've staged in your local repository.
$ git commit -m "First commit"
# Commits the tracked changes and prepares them to be pushed to a remote repository. To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.
At the top of your GitHub repository's Quick Setup page, click  to copy the remote repository URL.
Copy remote repository URL field
In Terminal, add the URL for the remote repository where your local repository will be pushed.
$ git remote add origin remote repository URL
# Sets the new remote
$ git remote -v
# Verifies the new remote URL
Push the changes in your local repository to GitHub.
$ git push -u origin master
# Pushes the changes in your local repository up to the remote repository you specified as the origin
--------Uploading to GitHub------------------------

--------Fast JSON API------------------------
----unless chose to code out serializers----
https://learn.co/tracks/online-software-engineering-structured/front-end-web-programming/rails-as-an-api/using-the-fast-json-api-gem

Setting up Fast JSON API
To include Fast JSON API, add gem 'fast_jsonapi' to your Rails project's Gemfile and run bundle install.

Once installed, you will gain access to a new generator, serializer.
rails g serializer Item
rails g serializer Cart
--------Fast JSON API------------------------
