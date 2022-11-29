# Set List


This repository serves as an in-class project for Turing's Mod 2 BE program. Through working on this tutorial, students will gain an understanding of and practice the following topics (among others): 
* Model testing
* Migrations
* Feature testing
* MVC
* ActiveRecord & SQL
* Forms

## Setup

Fork/clone or clone this repo. Then, run the following commands in Terminal: 
```
bundle install
rails db:{drop,create,migrate,seed}
```

You should then be able to access the databases called `set_list_development` and `set_list_test`. 

## How to Use
This application starts with schema and corresponding tests for `Artists` and `Songs`. Throughout classes in mod 2, students will be asked to work on adding various features to this application. It is recommended that students use the `main` branch of this repo, and add to it on their own machines. There is no need to submit any pull requests to the original repo, as this is a practice application. 

Students can also check out the branches in this repo to visit the code at different points in time. The following table lists the classes in mod 2, the branch for where the class starts, and the branch with the completed code from the class.

| Class | Starting Branch | Completed Branch |
|-------|------|------|
|[Songs Index](https://www.youtube.com/watch?v=At4fD_zkHJU) | none | songs_index|
| [Songs Show](https://www.youtube.com/watch?v=oZGZEJWt8qQ) | songs_index | songs_show|
| [ActiveRecord Associations](https://www.youtube.com/watch?v=oOFUnTPC_jU) | songs_show | artist_songs_index |
| [Feature Testing](https://backend.turing.edu/module2/lessons/feature_testing_2) | `feature_testing_practice`  |
| ActiveRecord Associations | `associations_practice` |
| SQL and ActiveRecord | `associations_practice` |
| Forms | `associations_practice` |
| Class vs Instance Methods | `class_instance_methods_setup` |
| Many to Many | `many_to_many_practice` |
| Joins | `many_to_many` |
| Data Validations | `validations` |
| Sad Path Testing & Flash Messages | `validations` |
| Partials | `many_to_many` (no completed branch) |
| Advanced Routing | `advanced_routing` |
| Grouping & Aggregating | `advanced_routing` (no completed branch) |
| Binding Models to Forms | `main` (no completed branch) |

_Note: This table is always being updated. Please submit a pull request if something needs changed!_
