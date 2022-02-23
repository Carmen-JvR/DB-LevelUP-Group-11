

INSERT INTO Country(Name) VALUES
 ('South Africa')
,('United Kingdom')
,('India');

INSERT INTO City(Name) VALUES
 ('Johannesburg')
,('Cape Town')
,('London')
,('Pune');


INSERT INTO Address(CountryID,CityID,StreetName,StreetNumber) VALUES
 (1,1,'Newton Avenue','1')
,(1,2,'Bank Lane','1')
,(2,3,'Lloyds Avenue','3')
,(3,4,'Wadgaon Sher','7')
,(1,2,'Schoeman Street','5')
,(1,1,'Daffodil Drive','4')
,(1,1,'Dorp Street','2')
,(1,2,'John Street','7')
,(1,1,'Langley Avenue','9')
,(1,1,'Main Rd','12')
,(1,2,'President Street','1')
,(1,1,'Nelson Mandela Avenue','14')
,(1,1,'Union Lane','9')
,(1,2,'Orange Street','18')
,(1,2,'Killarney Avenue','21')
,(2,3,'Prospect Hill','47')
,(2,3,'Overton Circle','19')
,(2,3,'Boughton Drive','67')
,(2,3,'Eastbourne Avenue','66')
,(2,3,'High Street','37')
,(2,3,'Lairg Rd','22')
,(2,3,'Dumberton Drive','72')
,(2,3,'Cantebury Avenue','97')
,(2,3,'Victoria Street','97')
,(2,3,'Park Avenue','44')
,(3,4,'Kankulia Rd','69')
,(3,4,'Kelkar Road','20')
,(3,4,'Garibdas Street','19')
,(3,4,'Agashi Rd','32')
,(3,4,'Patel Rd','28')
,(3,4,'Kasturba Rd','100')
,(3,4,'Sukhmani Rd','19');


INSERT INTO Office(AddressID,PhoneNumber) VALUES
 (1,'+27834748033')
,(2,'+27827445548')
,(3,'+447700900396')
,(4,'+911127442272');

INSERT INTO Employee(OfficeID,FirstName,LastName,Email) VALUES
 (1,'Callen','Parrish','callenp@bbd.co.za')
,(3,'Carlton','Carey','carreyc@bbd.co.za')
,(1,'Randall','Drew','randalld@bbd.co.za')
,(1,'Huda','Weiss','hudaw@bbd.co.za')
,(2,'Graham','Rose','grahamr@bbd.co.za')
,(2,'Ridwan','Carver','ridwanc@bbd.co.za')
,(3,'Juliet','Childs','julietc@bbd.co.za')
,(3,'Susan','Haworth','susanh@bbd.co.za')
,(1,'Eliana','Cohen','elianac@bbd.co.za')
,(2,'Priya','Naaidoo','priyan@bbd.co.za')
,(2,'Khloe','Mackenzie','khloem@bbd.co.za')
,(1,'Rajesh','Naik','rajeshn@bbd.co.za')
,(1,'Hamaad','Peel','hamaadp@bbd.co.za')
,(2,'Kaleem','Noble','kaleemn@bbd.co.za')
,(3,'Eitan','Hoffman','eitanh@bbd.co.za')
,(3,'Patrick','Johnson','patrick@bbd.co.za')
,(1,'Fatima','Noor','fatiman@bbd.co.za')
,(2,'Eoghan','Rooney','eoghanr@bbd.co.za')
,(3,'Dakota','Robertson','dakotar@bbd.co.za')
,(4,'Nurayn','Khan','nuraynk@bbd.co.za')
,(4,'Pravin','Patel','pravinp@bbd.co.za')
,(4,'Shilpa','Singh','shilpas@bbd.co.za')
,(4,'Devi','Govinder','devig@bbd.co.za')
,(4,'Uzair','Das','uzaird@bbd.co.za')
,(4,'Mohammed','Ismail','mohmmedi@bbd.co.za')
,(4,'Gita','Kumari','gitak@bbd.co.za')
,(4,'Pranay','Giga','pranayg@bbd.co.za')
,(3,'Jolene','Gurthrie','joleneg@bbd.co.za')
,(3,'Donald','Pham','donaldp@bbd.co.za');



INSERT INTO Vendor(OfficeID,AddressID,MenuID,Name,PhoneNumber,WebsiteAddress) VALUES
 (2,5,1,'Mcdonalds','+27834742989','mcd.co.za')
,(1,6,1,'Mcdonalds','+27982981829','mcd.co.za')
,(1,7,2,'King Pie','+27927872980','kingpie.com')
,(2,8,3,'Nandos','+27837728788','nandos.co.za')
,(1,9,3,'Nandos','+27029190190','nandos.co.za')
,(1,10,3,'Nandos','+27298282989','nandos.co.za')
,(2,11,4,'Spur Steak Ranches','+27990290230','spur.co.za')
,(1,12,5,'Rocomamas','+27829829289','rocomamas.co.za')
,(1,13,6,'Romans','+27928928299','romans.com')
,(2,14,7,'KFC','+27983973999','kfc.co.za')
,(2,15,8,'Debonairs','+27938293289','debonairs.co.za')
,(3,16,9,'Wimpy','+447702988329','wimpy.co.uk')
,(3,17,10,'Wendy''s','+447873837483','wendys.co.uk')
,(3,18,11,'Papa Johns','+448938298928','papajohns.co.uk')
,(3,19,12,'Greggs','+440929032988','greggs.com')
,(3,20,13,'Krispy Kreme','+449298293829','krispykreme.co.uk')
,(3,21,14,'SpudULike','+448982823727','spudulike.co.uk')
,(3,22,15,'Yo! Sushi','+448278732891','yosushi.com')
,(3,23,16,'Wrapchic','+442917071381','wrapchic.com')
,(3,24,17,'Mcdonalds','+443099340939','mcd.cu.uk')
,(3,25,18,'Bagel Nash','+442083298329','bagelnash.co.uk')
,(4,26,19,'KFC','+919039203290','kfc.co.ind')
,(4,27,20,'The Burger Barn Cafe','+919028080207','burgerbarn.co.ind')
,(4,28,21,'Terrasinne','+918398239839','terrasinne.co.ind')
,(4,29,22,'Hotel Sanskruti Misal','+917947384115','sanskruti.com')
,(4,30,23,'Shree Krishna Pure Veg','+917947241889','krishnaveg.co.ind')
,(4,31,24,'CHinjabi','+918328211982','chinjabi.com')
,(4,32,25,'Burger king','+919981891780','burgerking.co.ind');



INSERT INTO Menu(Title,Summary,CreatedAt,UpdatedAt) VALUES
 ('Mcdonalds South Africa','World''s largest restaurant chain serving burgers and fries','03/13/2019','01/06/2021')
,('King Pie','Delivering world-class pies to royal fans','07/03/2017','07/21/2020')
,('Nandos','PERi-PERi is the heart and soul of Nandos.','10/11/2018','03/30/2020')
,('Spur','Legendary Steaks and all','01/01/2020','07/27/2020')
,('Rocomamas','Best burgers in town','11/04/2017','09/12/2020')
,('Romans','Two pizzas for the price of one','11/30/2019','08/29/2020')
,('KFC South Africa','Kentucky fried chicken seasoned with 11 herbs and spices','05/17/2018','10/26/2020')
,('Debonairs','Debonairs Pizza, the home of that iconic pizza','08/21/2018','11/07/2020')
,('Wimpy','Still the breakfast leaders','11/27/2018','12/10/2020')
,('Wendy''s','In no time, Wendy''s known for its square beef patties, made from fresh beef, and iconic Frosty desserts.','08/16/2019','04/09/2020')
,('Papa Johns','Our pizza family is as hungry for perfection today as we were when we first began','07/03/2019','08/21/2020')
,('Greggs','From sandwiches to pasties, pick a great deal for breakfast and lunch at your local Greggs today','05/22/2018','05/12/2020')
,('Krispy Kreme','To use our unlimited passion and knowledge to create a fun filled magical experience, by serving craveable doughnuts and premium coffee at value for money and accessible to all..','03/20/2017','04/25/2020')
,('SpudULike','SpudULike has been baking delicious potatoes since first opening its doors in 1974. Some might say it was ahead of its time, serving fast & filling food to the natio','05/10/2018','04/30/2020')
,('Yo! Sushi','We''re all about fresh, flavoursome, authentic Japanese food. Sushi is what we''re known for. But we also have a mouth-watering range of hot street food available - from traditional classics to innovative fusion dishes. All packed with rich, aromatic flavours and all-natural ingredients','10/17/2019','05/08/2020')
,('Wrapchic','The passion for Indian & Mexican food coupled with a desire to bring Indian food in a 21st century format.','09/30/2019','01/07/2021')
,('Mcdonalds London','From drive-thru restaurants to Chicken McNuggets to college credits from Hamburger U, we have had quite a journey. And we are still going. But to take a look into our past, we need to share the story of one man.','05/29/2017','08/12/2020')
,('Bagel Nash','Our bagels are created from unique recipes and are crafted with care to create bagels that are deliciously different. Bagel Nash bagels take 9 hours to perfect. Our bakers take time to create their recipes then leave our bagels to prove overnight. We then bake them slowly to give them their distinctive glossy outside and soft middle','06/25/2018','03/31/2020')
,('KFC','Finally, the Colonel perfects his unique blend off 11 herbs and spices that are still used today... and still top secret','01/16/2019','12/12/2020')
,('The Burger Barn Cafe','A great place to hangout with friends. Lots of variety of burgers, salads, chicken dishes and many more.','12/04/2019','08/05/2020')
,('Terrasinne','International, farm-to-table specialties & desserts dished up in an airy, laid-back venue.','07/07/2017','11/02/2020')
,('Hotel Sanskruti Misal','Hotel Sanskruti Misal in Pune is one of the leading businesses in the Coffee Shops.','11/05/2017','05/18/2020')
,('Shree Krishna Pure Veg','Serves borth North Indian and SOuth indian vegetarian food','02/19/2019','04/03/2020')
,('CHinjabi','North Indian,Chinese,Seafood,Thai,Desserts,Beverages','03/09/2017','08/10/2020')
,('Burger king Pune','the original HOME OF THE WHOPPER, our commitment to premium ingredients, signature recipes, and family-friendly dining experiences is what has defined our brand for more than 50 successful years.','04/27/2017','08/25/2020');
GO



INSERT INTO Dish(MenuID,Name,Description) VALUES
 (1,'Big Mac & Fries','Mouthwatering perfection starts with two 100% pure beef patties and special Big Mac sauce sandwiched between a sesame seed bun. Its topped with pickles, shredded lettuce, onions and cheese for a taste like no other, with a side of fries')
,(1,'Quarter Pounder, Fries & a Drink','Our Quarter Pounder with Cheese burger features a 100% beef patty, fresh onions, tangy pickles, ketchup, mustard and 2 slices of cheese on a freshly toasted sesame seed bun. Served with fries and a drink.')
,(2,'Spinach Pie','This is an authentic, really rich pie stuffed with spinach and herbs that are all enfolded by crispy, flaky phyllo dough.')
,(2,'Chicken & Mushroom Pie','A yummy chicken and mushroom pie that everyone will love.')
,(3,'Peri chicken','1/4 Chicken with a single portion side of your choice')
,(3,'Mozambican Paprika chicken wrap','Saucy chicken strips, tomato, lettuce & cucumber mix in a wrap, with side options of your choice')
,(4,'Cheddarmelt Steak & Fries','Rump or sirloin topped with a slice of melted cheese and pepper or creamy mushroom sauce.')
,(4,'Bacon, Cheese & Guacamole Burger','Topped with melted cheese, grilled bacon and guacamole.')
,(5,'Shackster Burger','2 X 100g Smashed Beef, American Cheese, Tomato, Butter Lettuce & Yomayo.')
,(5,'Cheese Burger','150g Smashed Beef, Aged Cheddar, Sweet Pickle, Tomato, Red Onion & Rocomayo')
,(6,'Peperoni Delux','Tomato base, pepperoni & garlic')
,(6,'Three Cheese','Tomato base & mozzarella, gouda, ricotta & feta cheese')
,(7,'Dunked wings','Our famous KFC Zinger Wings dunked in honey, ginger and soy sauce.')
,(7,'Colonel Burger','An Original Recipe fillet topped with fresh lettuce, a slice of tomato & Colonel dressing on a burger bun.')
,(8,'Sweet Chilli chicken','Chicken, sweet bell pepper, feta, sweet chilli sauce, spring onion.')
,(8,'Vegetarian','Mushroom, olives, pineapple, onion, tomato, spring onion.')
,(9,'Farmhouse Breakfast','2 Eggs, 3 rashers of back bacon and a full portion of chips, served with white or wholewheat toast')
,(9,'Muffin & Cuppuccino combo','Assorted muffins with Regular Cappuccino')
,(10,'Big Bacon Cheddar Cheeseburger','A quarter-pound* of fresh, never-frozen beef, covered in creamy cheddar cheese and bacon jam, topped with Applewood smoked bacon, crispy onions, and a slice of American cheese, all on a pillow-soft, toasted cheddar bun')
,(10,'Dave''s SIngle','A quarter-pound* of fresh beef, American cheese, crisp lettuce, tomato, pickle, ketchup, mayo, and onion on a toasted bun — just the way Dave intended.')
,(11,'Beef Steak & Mushroom','Beef steak pieces, mushroom, tomato, onion, papa johns sauce.')
,(11,'Mexican FIesta','Ground beef, jalapeno, green pepper, onion, Mexican sauce.')
,(12,'Vegetarian Sausage roll','Deliciously light puff pastry with a seasoned Quorn filling')
,(12,'Cheese & onion bake','A classic duo of cheese and onion wrapped in a light puff pastry.')
,(13,'Krispy Kreme peanut brittle','When people talk about a Krispy Kreme doughnut, they are usually referring to our signature treat: the original birttle. Made from a recipe dating back to the 1930s, our peanut brittle doughnuts have helped set us apart. And if you have not had a birttle HOT off-the-line, you need to try one!')
,(13,'Maple Iced glazed','Our smooth and creamy maple icing creates a delectable taste that will remind you of pure maple syrup. It tops a classic Original Glazed doughnut to create a distinctively delicious variety.')
,(14,'Chilli Con Carne','A classic comfort food, our chilli is made with slow cooked British minced beef, turtle beans and a warming, spicy sauce topped with guacamole, salsa, reduced fat crème fraiche and fresh coriander!')
,(14,'BBQ Pork Ribs','Our 4 hour slow cooked marinated rack of pork ribs is smothered in a rich BBQ sauce, topped with reduced fat crème fraiche, crispy onions and fresh chives. Served with Rainbow slaw.')
,(15,'Avocado Maki','Avocado & mayo wrapped in a nori roll.')
,(15,'California Temaki','Surimi, avocado, mayo & toasted sesame seeds in a nori rice cone.')
,(16,'Chicken Methi Burrito','Roasted chicken pieces marinated in hot aromatic spices with a hint of fenugreek')
,(16,'Chicken TIkka Wrap','Tikka style chicken & mango chutney')
,(17,'McFeast Burger','The McFeast is served with two 100% beef patties, 4.5 inch bun, two slices of cheese, fresh onion, lettuce, tomato with our special braai and McChicken sauces.')
,(17,'Veggie Burger Meal','A great meat free alternative. Our Veggie Burger patty is made from a blend of vegetables served with fresh onion, lettuce, tomato, ketchup and mustard. Accompanied with fries and a drink.')
,(18,'Super seed','Delicious bagels bakes with quinoa, linseed,poppr,pumpkin & sunflower seeds')
,(18,'cheese & jalapeno','declicious bagels bakes with cheese & the warm of fresh jalapeno')
,(19,'Nugget Box Buddy','4 Nuggets, a crunch burger, small chips and a buddy drink.')
,(19,'9 Piece Bucket','Golden brown & delicious Original Recipe chicken seasoned with the 11 secret herbs and spices.')
,(20,'Barn Veggie Burger','medley of veggies rolled into one nutricious & tasty patty')
,(20,'Barn Crunchy Mushroom Burger','A delicious mushroom infused delicacy deep fried to perfection')
,(21,'Crunchy Chicken Burger','SPicy crumb fried fillet of chicken topped with our special sauce')
,(21,'Thick Shakes','Ice cream milkshakes: strawberry, chocolate & salted caramel')
,(22,'Paneer Makhni','Indian cottage cheese cooked on butter and tomato gravy. Served with Rice')
,(22,'Lamb Rogan Josh','Lamb cooked with Indian spices and yogurt. Served with Rice')
,(23,'Yellow Dhal Fry','Yellow lentils cooked with garlic and cumin seeds, served with rice')
,(23,'Cheese & Garlic Naan','Naan bread stuffed with garlic and cheese')
,(24,'Peshawari Naan','A special Naan, stuffed with Nuts and Dried Fruits, baked in oven')
,(24,'Prawn','Prawn cooked with basmati rice.')
,(25,'Double Whopper meal','The DOUBLE WHOPPER is the start of a new dimension with freshly flame-grilled beef and the same tasty ingredients as the WHOPPER.')
,(25,'Vegan Royale','Made with the perfect blend of SOY and WHEAT protein and a perfect mix of spices, our plant-based patty is packed with flavour, texture and crunch. Top it with shredded lettuce and creamy vegan mayonnaise on a sesame seed bun and you have got the BK  Vegan Royale.');

