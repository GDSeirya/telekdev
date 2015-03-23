function map_water.init()

h2o.init()

 function map_water.makewater()

  h2o.add_surface(40, 251, 62, 316)
  h2o.add_surface(153, 251, 196, 316)
  h2o.add_surface(287, 251, 308, 316)

  h2o.add_rect(62, 251, 153, 316)
  h2o.add_rect(196, 251, 287, 316)

 end

end