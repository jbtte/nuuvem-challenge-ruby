# Nuuvem Sales Loader
## About
This project was developed as a challenge for a developer position at Nuuvem.

The webapp was developed as a web interface that accepts file uploads, normalizes the data and stores it in a relational database.


## Table of Contents
<!--ts-->
   * [About](#about)
   * [Table of Contents](#table-of-contents)
   * [Project Status](#project-status)
   * [Features](#features)
   * [Instalation](#instalation)
      * [Dependencies](#dependencies)
      * [Local machine](#local-machine)
   * [Code Status](#code-status)
      * [License](#license)
      * [Credits](#credits)
      * [Author](#author)
<!--te-->

## Project Status
In production
Version: 1.0.1

## Features
- [x] Accept (via HTML form) file uploads of TAB-separated files, with the following columns: purchaser name, item description, item price, purchase count, merchant address, merchant name.
- [x] Interpret (parse) the received file, normalize the data, and save the data correctly in a relational database.
- [x] Shows the total gross income represented by the sales data after each file upload, and also the total all-time gross income. 

## Instalation
### Dependency
Before you begin the instalation process, you must have installed:
* [Git](https://git-scm.com)
* [Ruby](https://www.ruby-lang.org/en/) ~2.6.6
* [Rails](https://rubyonrails.org/) ~6.1.3.2
* [Postgresql](https://www.postgresql.org/)

Besides that you should have a code editor, for example [VSCode](https://code.visualstudio.com/)

### Local machine
```bash
# Clone the repository
$ git clone https://github.com/jbtte/react-sti-weather

# Enter project directory
$ cd nuuvem-challenge-ruby

# Install dependecies
$ bundle install

# Start postgresql server
$ brew services start postgresql

# Create database
$ rails db:create db:migrate

# Execute application locally on development mode
$ rails s

# Visit on your browser: localhost:3000
```

## Code Status
### Licença
MIT License

Copyright (c) 2021 JP Baumotte

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

### Credits
Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

### Author

<a href="jbtte.me">
 <img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/4759003?v=4" width="100px;" alt=""/>
 <br />
 <sub><b>JP Baumotte</b></sub></a> <a href="https://jbtte.me">🚀</a>
 
 Made with ❤️ by JP Baumotte 👋🏽 Let's get in touch!

[![Linkedin Badge](https://img.shields.io/badge/-JP-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/jbtte/)](https://www.linkedin.com/in/jbtte/) 
[![Gmail Badge](https://img.shields.io/badge/-jbaumotte@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:jbaumotteo@gmail.com)](mailto:jbaumotteo@gmail.com)

