-- info: USER 
INSERT INTO PINPAL.PUBLIC.USER(ID, NAME, EMAIL, PASSWORD, ABOUT, PBLC)
VALUES
  ('mike','mike beebe','mike@gmail.com','password','example bio',1),
  ('megan', 'megan zhang', 'megan@gmail.com', 'password', 'ittssss MEGAN!', 1),
  ('chester', 'chester beebe', 'chester@gmail.com', 'password', 'bow wow wow yippie yo yippie yay', 1),
  ('matt', 'matt beebe', 'matt@gmail.com', 'password', 'this is my example bio', 0);
  

-- info: GUIDE 
-- ID: USER_ID + "~" + NAME
INSERT INTO PINPAL.PUBLIC.GUIDE(ID, USER_ID, NAME, ABOUT, PBLC, DEFAULT_ZOOM, DEFAULT_LAT, DEFAULT_LNG)
VALUES
  ('mike~1','mike','Test Map','Primary test map',1,10,48.860357,2.336998),
  ('megan~1', 'megan', 'Megan\'s Test Map', '', 1, 10, 48.860357, 2.336998),
  ('chester~1', 'chester', 'Chester\'s Test Map', 'Chester\'s test map', 1, 10, 48.860357, 2.336998),
  ('matt~1', 'matt', 'Matt\'s Test Map', '', 0, 10, 48.860357, 2.336998);

-- info: ICON 
-- ID: PIN_COLL_ID + "~" + NAME
INSERT INTO PINPAL.PUBLIC.ICON(ID, PIN_COLL_ID, NAME, COLOR, STYLE)
VALUES('GLOBAL~ICON','GLOBAL~PIN_COLL','map-pin-simple','#2e5e99','regular');

-- info: PIN_COLL 
-- ID: GUIDE_ID + "~" + NAME
INSERT INTO PINPAL.PUBLIC.PIN_COLL(ID, USER_ID, GUIDE_ID, ICON_ID, NAME)
VALUES('GLOBAL~PIN_COLL','GLOBAL~USER','GLOBAL~GUIDE','GLOBAL~ICON','PIN_COLL');

-- info: PIN 
-- ID: PIN_COLL_ID + "~" + PLACE_ID
INSERT INTO PINPAL.PUBLIC.PIN(ID, PLACE_ID, PIN_COLL_ID, NAME, ABOUT, PHOTO)
VALUES('GLOBAL~PIN','PLACE_ID','GLOBAL~PIN_COLL','PIN','ABOUT','PHOTO');

-- info: PLACE_DETAILS  
-- ID: PLACE_ID (via Google Places API) 
INSERT INTO PINPAL.PUBLIC.PLACE_DETAILS(PLACE_ID, LAT, LNG, ADDRESS, COUNTRY, WEBSITE, PHONE, BUSINESS_STATUS, OPENING_HOURS, RATING, RATING_COUNT, SUMMARY, TYPES, PHOTOS)
VALUES('PLACE_ID',48.860357,2.336998,'ADDRESS','COUNTRY','WEBSITE','PHONE','BUSINESS_STATUS','OPENING_HOURS',5,5,'SUMMARY','TYPES','PHOTOS');
