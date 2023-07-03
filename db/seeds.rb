# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create Powers
powers = [
    { name: 'Super Strength', description: 'Gives the hero incredible physical strength.' },
    { name: 'Flight', description: 'Allows the hero to fly in the air.' },
    { name: 'Invisibility', description: 'Enables the hero to become invisible to others.' }
  ]
  
  powers.each do |power_attrs|
    Power.create!(power_attrs)
  end
  
  # Create Heros
  heros = [
    { name: 'Batman', super_name: 'The Dark Knight' },
    { name: 'Superman', super_name: 'Man of Steel' },
    { name: 'Invisible Woman', super_name: 'Mistress of Invisibility' }
  ]
  
  heros.each do |hero_attrs|
    Hero.create!(hero_attrs)
  end
  
  # Create HeroPowers
  hero_powers = [
    { strength: 'Strong', power: Power.find_by(name: 'Super Strength'), hero: Hero.find_by(name: 'Batman') },
    { strength: 'Average', power: Power.find_by(name: 'Flight'), hero: Hero.find_by(name: 'Superman') },
    { strength: 'Weak', power: Power.find_by(name: 'Invisibility'), hero: Hero.find_by(name: 'Invisible Woman') }
  ]
  
  hero_powers.each do |hero_power_attrs|
    HeroPower.create!(hero_power_attrs)
  end
  