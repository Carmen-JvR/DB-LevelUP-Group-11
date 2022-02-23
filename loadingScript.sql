

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