# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Image.delete_all
Image.reset_pk_sequence
Image.create([

                 {name: 'P.-A. Renoir, Девушка с веером', file: 'Renoir Девушка с веером.jpg', theme_id: 2},
                 {name: 'P.-A. Renoir, Завтрак гребцов', file: 'Renoir Завтрак гребцов.jpg', theme_id: 2},
                 {name: 'P.-A. Renoir, Лягушатник', file: 'Renoir Лягушатник.jpg', theme_id: 2},
                 {name: 'P.-A. Renoir, Новый мост в Париже', file: 'Renoir Новый мост в Париже.jpg', theme_id: 2},
                 {name: 'P.-A. Renoir, Портрет Жанны Самари', file: 'Renoir Портрет Жанны Самари.jpg', theme_id: 2},
                 {name: 'P.-A. Renoir, Речной пейзаж', file: 'Renoir Речной пейзаж.jpg', theme_id: 2},
                 {name: 'P. Picasso, Авиньонские девицы', file: 'Picasso Авиньонские девицы.jpg', theme_id: 3},
                 {name: 'P. Picasso, Голубь мира', file: 'Picasso Голубь мира.jpg', theme_id: 3},
                 {name: 'P. Picasso, Любительница абсента', file: 'Picasso Любительница абсента.jpg', theme_id: 3},
                 {name: 'P. Picasso, Натюрморт', file: 'Picasso Натюрморт.jpg', theme_id: 3},
                 {name: 'P. Picasso, Средиземноморский пейзаж', file: 'Picasso Средиземноморский пейзаж.jpg', theme_id: 3},
                 {name: 'P. Picasso, Стекляная посуда', file: 'Picasso Стекляная посуда.jpg', theme_id: 3},
                 {name: 'Вася Ложкин, Взрослые игры', file: 'VasyaLogkin Взрослые игры.jpg', theme_id: 4},
                 {name: 'Вася Ложкин, Действительно, почему?', file: 'VasyaLogkin Действительно почему.jpg', theme_id: 4},
                 {name: 'Вася Ложкин, Красота требует жертв', file: 'VasyaLogkin Красота требует жертв.jpg', theme_id: 4},
                 {name: 'Вася Ложкин, Обряд дебуратинизации', file: 'VasyaLogkin Обряд дебуратинизации.jpg', theme_id: 4},
                 {name: 'Вася Ложкин, Уют', file: 'VasyaLogkin Уют.jpg', theme_id: 4},
                 {name: 'Вася Ложкин, Логично', file: 'VasyaLogkin Логично.jpg', theme_id: 4}
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

                 {name: "-----"},      # 1
                 {name: "О.Ренуар. Пример импрессионизма"},      # 2
                 {name: "П.Пикассо. Основоположник кубизма"},      # 3
                 {name: "В.Ложкин. Современный трэш и котики"}      # 4
             ])