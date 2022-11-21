local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

    
    {title="Нощен клуб", colour=34, id=279, x = -430.3988, y = -24.1493, z = 46.2286},
  
    {title="Железария", colour=2, id=402, x = 2752.559, y = 3471.177, z = 55.724},

    {title="Боклуджия", colour=38, id=318, x = -321.8740, y = -1533.2866, z = 27.5786},
    
    {title="Магазин", colour=2, id=52, x = -711.639, y = -917.182, z = 19.214},
    {title="Магазин", colour=2, id=52, x = 29.08515, y = -1349.72, z = 29.329},
    {title="Магазин", colour=2, id=52, x = -53.3202, y = -1757.00, z = 29.439},
    {title="Магазин", colour=2, id=52, x = 376.3401, y = 322.5577, z = 103.43},
    {title="Магазин", colour=2, id=52, x = 2559.593, y = 385.3820, z = 108.62},
    {title="Магазин", colour=2, id=52, x = -2973.95, y = 390.8785, z = 15.034},
    {title="Магазин", colour=2, id=52, x = 544.1170, y = 2672.929, z = 42.155},
    {title="Магазин", colour=2, id=52, x = -1822.10, y = 788.0357, z = 138.18},
    {title="Магазин", colour=2, id=52, x = 2682.240, y = 3282.389, z = 55.240},
    {title="Магазин", colour=2, id=52, x = 1965.205, y = 3740.364, z = 32.332},
    {title="Магазин", colour=2, id=52, x = 1731.083, y = 6411.081, z = 35.000},
    {title="Магазин", colour=2, id=52, x = -53.3202, y = -1757.00, z = 29.439},
    {title="Магазин", colour=2, id=52, x = 1166.483, y = 2703.185, z = 38.179},
    {title="Магазин", colour=2, id=52, x = 1141.536, y = -980.923, z = 46.410},
    {title="Магазин", colour=2, id=52, x = 1159.717, y = -326.919, z = 69.218},
    {title="Брокерска къща", colour=50, id=492, x = -1370.788, y = -503.093, z = 33.157},
    {title="Оръжеен магазин", colour=40, id=110, x = 249.200, y = -46.280, z = 69.940},
    {title="Заложна къща", colour=46, id=59, x = -1459.140, y = -413.690, z = 35.740}
   -- {title="Tokyo Manji", colour=47, id=197, x = -164.280, y = 296.790, z = 98.890}


 
   
    
   

   


   
   
  }

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
