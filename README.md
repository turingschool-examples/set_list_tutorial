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
|[Songs Index](https://www.youtube.com/watch?v=At4fD_zkHJU) | none | [songs_index](https://github.com/turingschool-examples/set_list_tutorial/tree/songs_index)|
| [Songs Show](https://www.youtube.com/watch?v=oZGZEJWt8qQ) | [songs_index](https://github.com/turingschool-examples/set_list_tutorial/tree/songs_index) | [songs_show](https://github.com/turingschool-examples/set_list_tutorial/tree/songs_show)|
| [ActiveRecord Associations](https://www.youtube.com/watch?v=oOFUnTPC_jU) (homework video) | [songs_show](https://github.com/turingschool-examples/set_list_tutorial/tree/songs_show) | [artist_songs_index](https://github.com/turingschool-examples/set_list_tutorial/tree/artist_songs_index) |
| [Feature Testing](https://backend.turing.edu/module2/lessons/feature_testing_2) | [feature_testing_practice](https://github.com/turingschool-examples/set_list_tutorial/tree/feature_testing_practice)  | [feature_testing_solutions](https://github.com/turingschool-examples/set_list_tutorial/tree/feature_testing_solutions)
| [ActiveRecord Associations](https://backend.turing.edu/module2/lessons/active_record_associations_tdd) (live class) | [associations_practice](https://github.com/turingschool-examples/set_list_tutorial/tree/associations_practice) | [associations_practice_solutions](https://github.com/turingschool-examples/set_list_tutorial/tree/associations_practice_solutions) |
| [SQL and ActiveRecord](https://backend.turing.edu/module2/lessons/sql_and_active_record) | [associations_practice](https://github.com/turingschool-examples/set_list_tutorial/tree/associations_practice) |
| [Forms](https://www.youtube.com/watch?v=VNHriUP7zKE&list=PL1Y67f0xPzdMpqo5GG-P8oVd-OvkNMSAN&index=5) (homework video) | [artist_songs_index](https://github.com/turingschool-examples/set_list_tutorial/tree/artist_songs_index) | [artist_new](https://github.com/turingschool-examples/set_list_tutorial/tree/artist_new) |
| [Class vs Instance Methods](https://backend.turing.edu/module2/lessons/class_vs_instance_methods) | [class_instance_methods_setup](https://github.com/turingschool-examples/set_list_tutorial/tree/class_instance_methods_setup) | [class_instance_methods_solutions](https://github.com/turingschool-examples/set_list_tutorial/tree/class_instance_methods_solutions)
| [Many to Many](https://backend.turing.edu/module2/lessons/many_to_many) | [many_to_many_practice](https://github.com/turingschool-examples/set_list_tutorial/tree/many_to_many_practice) | [many_to_many](https://github.com/turingschool-examples/set_list_tutorial/tree/many_to_many)
| [Joins](https://backend.turing.edu/module2/lessons/joins) | [many_to_many](https://github.com/turingschool-examples/set_list_tutorial/tree/many_to_many) |
| [Data Validations](https://backend.turing.edu/module2/lessons/data_validation) | [validations](https://github.com/turingschool-examples/set_list_tutorial/tree/validations) |
| [Sad Path Testing & Flash Messages](https://backend.turing.edu/module2/lessons/sad_path_and_flash) | [sad_path_setup](https://github.com/turingschool-examples/set_list_tutorial/tree/sad_path_setup) | [sad_path_complete](https://github.com/turingschool-examples/set_list_tutorial/tree/sad_path_complete)
| [Partials](https://backend.turing.edu/module2/lessons/partials) | [partials](https://github.com/turingschool-examples/set_list_tutorial/tree/partials) | [partials_solutions](https://github.com/turingschool-examples/set_list_tutorial/tree/partials_solutions)
| [Advanced Routing](https://backend.turing.edu/module2/lessons/rails_resources) | [advanced_routing](https://github.com/turingschool-examples/set_list_tutorial/tree/advanced_routing) | [advanced_routing_solutions](https://github.com/turingschool-examples/set_list_tutorial/tree/advanced_routing_solutions) |
| Grouping & Aggregating | `advanced_routing` (no completed branch) |
| Binding Models to Forms | `main` (no completed branch) |

_Note: This table is always being updated. Please submit a pull request if something needs changed!_
