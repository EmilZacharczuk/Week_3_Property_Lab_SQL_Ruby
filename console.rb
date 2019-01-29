require_relative('models/property')
require('pry')

Property.delete_all()

  property_1 = Property.new({
    'address' => '37 Castle Terrace',
    'value' => 1000,
    'number_of_bedrooms' => 5,
    'year_built' => 2015
    })

  property_2 = Property.new({
    'address' => '101 Princess Street',
    'value' => 2000,
    'number_of_bedrooms' => 7,
    'year_built' => 1899
    })

  property_3 = Property.new({
    'address' => '56 Easter Langside Avenue',
    'value' => 200,
    'number_of_bedrooms' => 3,
    'year_built' => 2008
      })

    property_1.save()
    property_2.save()
    property_3.save()

    property_2.delete()

    property_1.address = 'CodeClan'
    property_1.update()


    properties = Property.all()
    easter = Property.find(property_3.id)
    codeclan = Property.find_by_address("CodeClan")

binding.pry
nil
