# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.create(username:"administrator",password:"password", email:"admin@gmail.com")
Article.create(title:"Lorem Ipsum", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut magna eu arcu ornare vulputate et sit amet dolor. Nullam euismod risus ex, eu mollis magna accumsan a. Vivamus commodo id magna vitae congue. Mauris cursus dui ac mi venenatis gravida. Nunc eleifend facilisis enim, in dignissim nibh tincidunt id. Quisque leo nisi, lacinia sed nunc non, rutrum tincidunt nunc. Nam id vestibulum lectus. Nam placerat, mi aliquam porta tempor, lectus quam blandit nisi, sed pharetra urna urna hendrerit lacus. Etiam in rhoncus massa, ac finibus lectus. Proin vitae sem neque. Cras eget aliquam purus, ut rutrum ipsum. Phasellus eros turpis, tristique fermentum libero sagittis, ultricies tincidunt odio.")
