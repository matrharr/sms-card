# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: 'Matt', 
            last_name: 'Harris', 
            phone_number: '+16154064891', 
            email: 'matrharr@gmail.com', 
            github: 'https://github.com/matrharr', 
            linkedin: 'https://www.linkedin.com/in/matrharr', 
            portfolio: 'http://matrharr.github.io/', 
            job_title: 'Software Engineer', 
            company: 'Concrn')