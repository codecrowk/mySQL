SELECT 
  cars.id_car AS ID,
  cars.plate AS plate,
  brands.type_brand AS Type, 
  colors.type_color AS Color
FROM cars
INNER JOIN brands
  ON cars.brand_id = brands.id_brand 
INNER JOIN colors 
  ON cars.color_id = colors.id_color;