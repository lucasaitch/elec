# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all

Category.create(name: "Cars & Vehicles", parent_category_id: nil)
    Category.create(name: "Cars", parent_category_id: Category.find_by(name: "Cars & Vehicles"))
        Category.create(name: "Hatchbacks", parent_category_id: Category.find_by(name: "Cars"))
        Category.create(name: "Sedans", parent_category_id: Category.find_by(name: "Cars"))
        Category.create(name: "Station Wagons", parent_category_id: Category.find_by(name: "Cars"))
    Category.create(name: "Vans", parent_category_id: Category.find_by(name: "Cars & Vehicles"))
    Category.create(name: "Utes", parent_category_id: Category.find_by(name: "Cars & Vehicles"))
    Category.create(name: "Motorcycles", parent_category_id: Category.find_by(name: "Cars & Vehicles"))
Category.create(name: "Books", parent_category_id: nil)
    Category.create(name: "Textbooks", parent_category_id: Category.find_by(name: "Books"))
        Category.create(name: "Engineering and IT", parent_category_id: Category.find_by(name: "Textbooks"))
            Category.create(name: "ELEC3609", parent_category_id: Category.find_by(name: "Textbooks"))
            Category.create(name: "COMP2129", parent_category_id: Category.find_by(name: "Textbooks"))
            Category.create(name: "INFO1003", parent_category_id: Category.find_by(name: "Textbooks"))
        Category.create(name: "Science and Maths", parent_category_id: Category.find_by(name: "Textbooks"))
            Category.create(name: "MATH1011", parent_category_id: Category.find_by(name: "Textbooks"))
        Category.create(name: "Arts", parent_category_id: Category.find_by(name: "Textbooks"))
    Category.create(name: "Other non-fiction", parent_category_id: Category.find_by(name: "Books"))
    Category.create(name: "Fiction", parent_category_id: Category.find_by(name: "Books"))
Category.create(name: "Electronics & Computer", parent_category_id: nil)
    Category.create(name: "Laptops", parent_category_id: Category.find_by(name: "Electronics & Computer"))
    Category.create(name: "Tablets", parent_category_id: Category.find_by(name: "Electronics & Computer"))
    Category.create(name: "Mobile Phones", parent_category_id: Category.find_by(name: "Electronics & Computer"))
Category.create(name: "Houses and Rooms for rent", parent_category_id: nil)
    Category.create(name: "House", parent_category_id: Category.find_by(name: "Houses and Rooms for rent"))
    Category.create(name: "Unit", parent_category_id: Category.find_by(name: "Houses and Rooms for rent"))
    Category.create(name: "Room", parent_category_id: Category.find_by(name: "Houses and Rooms for rent"))
Category.create(name: "Miscellaneous Items", parent_category_id: nil)




