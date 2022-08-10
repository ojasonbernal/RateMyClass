<p align="center">
  <a>
    <img src="app/assets/images/logo.png" alt="RateMyClass" width="500" height="auto">
  </a>
  <h3 align="center">RateMyClass</h3>
  <p align="center">
    Rate your courses to help future students know what to expect!
  </p>
</p>


<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>


## About the Project

Our aim is to help all colleges students make informed decisions about their future courses and give them a head start on knowing what to expect regarding workload, difficulty, etc.

### Built With:
* Ruby On Rails
* JavaScript
* CSS
* HTML
* Postgresql

## Usage

* Ruby version: 

3.0.3

* Database initialization:

Use `rake db:migrate` to set up the database. 

* Configuration: 

Use `rbenv` to switch the rails version. 

`bundle install` command to install the gems used in the rails application. 

* Development:

`rails s -b 0.0.0.0 -p 8080` command was used to run the rails app through the EC2 instance.

* Deployment:

`git add <file>` command was used to stage the files to be committed.

`git commit -m “<message here>”` command was used to leave a commit message to the files.

`git push heroku HEAD:master` command was used to deploy the application.

* How to run the test suite: 

Use `rake cucumber` to run cucumber tests. 

Use `rake spec` to run spec. `rake` also has other commands. 

Run `rake –tasks` to see other tasks.

* Services: 

AWS EC2, GitHub

## License
Distributed under the MIT License. See `LICENSE` for more information.

## Contributors:
* Jacob Smith
* Tony Yang
* Jason Bernal
