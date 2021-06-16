# Nuuvem Sales Loader
## Presentation
This project was developed as a challenge for a developer position at Nuuvem.

The webapp was developed as a web interface that accepts file uploads, normalizes the data and stores it in a relational database.


## Resources
1. Accept (via HTML form) file uploads of TAB-separated files, with the following columns: purchaser name, item description, item price, purchase count, merchant address, merchant name.
2. Interpret (parse) the received file, normalize the data, and save the data correctly in a relational database.
3. Shows the total gross income represented by the sales data after each file upload, and also the total all-time gross income. 

## Dependency
* Ruby ~2.6.6

## Instalation
* clone the repository - git@github.com:jbtte/nuuvem-challenge-ruby.git
* `cd nuuvem-challenge-ruby`
* `bundle` (Install dependencies)
* `rails db:create db:migrate` (Create db)
* `rails s` (fire up the server)
* Visit on your browser: localhost:3000

## Version
0.1.0

## Code Status
### Licença
MIT License

Copyright (c) 2021 JP Baumotte

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

### Credits
Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
Developed by:
* @jbtte 

