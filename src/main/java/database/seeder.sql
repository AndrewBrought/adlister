USE adlister_db;

TRUNCATE users;

INSERT INTO users (username, email, password) VALUES
('mcanete0', 'freignolds0@house.gov', 'Ba9u0CfSEtf'),
('lpurdon1', 'tbowld1@1und1.de', 'FJNxmY4I'),
('caime2', 'wdruce2@devhub.com', 'ooJ0TV6bpD'),
('ringarfield3', 'nblankett3@slate.com', 'tuVkoFmfr'),
('acolicot4', 'evibert4@ifeng.com', 'hCtt6i3sfsdp'),
('bmacallen5', 'kshave5@4shared.com', 'fM1FqKw'),
('bpina6', 'emelross6@reverbnation.com', 'dwCTNC'),
('vwallbridge7', 'knewall7@moonfruit.com', 'Bq13GRUHs0'),
('dtidcombe8', 'agregr8@nature.com', 'fsmOeG3hZgh'),
( 'aivantyev9', 'cdommersen9@clickbank.net', 'DuvdrZu');


TRUNCATE ads;

INSERT INTO ads (user_id, title, description) VALUES
(1, 'Portable Blender', 'Battery powered. Brand new!'),
(2,'Spider Nail Gel', 'This get''s your nails flossin''!'),
(3,'Wireless Phone Charger', 'Charge anywhere!'),
(4,'Face Shield', 'Get the news and avoid the weather!'),
(1,'Phone Lenses', 'Doesn''t shatter'),
(5,'Inflatable Pet Collars', 'You''re pet will never be found flat!'),
(6,'Eyeshadow Stamp', 'Your eyes will get the seal of approval'),
(6,'Strapless Backless Bra', 'No show on the go!'),
(7,'Child Wrist Leash', 'Keep the little on monster on lockdown!'),
(8,'Front Facing Baby Carrier', 'The carrier your can trust!');

