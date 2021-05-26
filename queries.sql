SELECT COUNT(part_number) FROM part_nyc WHERE on_hand > 70;
SELECT COUNT(on_hand) FROM part_nyc WHERE color = 0 UNION SELECT COUNT(on_hand) FROM part_sfo WHERE color = 0;
SELECT DISTINCT part_nyc.supplier FROM part_nyc,part_sfo WHERE part_nyc.on_hand > part_sfo.on_hand;
SELECT supplier from part_sfo WHERE NOT EXISTS  (SELECT  part_number from part_nyc);
UPDATE part_nyc SET on_hand = on_hand-10;
DELETE FROM part_nyc WHERE on_hand <30;
