# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  [
    {
      email: 'jsoaresgeral@gmail.com',
      name: 'João Soares',
      bdate: Time.new(1985, 11, 13).to_date.to_s(:db)
    },
    {
      email: 'tiago_santos_alves@gmail.com',
      name: 'Tiago Alves',
      bdate: Time.new(1984, 6, 4).to_date.to_s(:db)
    },
    {
      email: 'joanamraposo@gmail.com',
      name: 'Joana Raposo',
      bdate: Time.new(1993, 2, 19).to_date.to_s(:db)
    },
    {
      email: 'mara_rosa@hotmail.com',
      name: 'Mara Rosa',
      bdate: Time.new(1983, 7, 22).to_date.to_s(:db)
    },
    {
      email: 'jose_eduardo_palmeiro@gmail.com',
      name: 'José Eduardo Palmeiro',
      bdate: Time.new(1985, 9, 3).to_date.to_s(:db)
    }
  ]
)