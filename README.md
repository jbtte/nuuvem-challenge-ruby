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
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>

### Credits
Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
Developed by:
* @jbtte 

