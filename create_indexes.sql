DROP INDEX nyc_onhand;
DROP INDEX nyc_parts_color;
DROP INDEX sfo_parts_color;
Drop INDEX nyc_suppliers_on_hand;
DROP INDEX sfo_suppliers_on_hand;
drop index nyc_supplier_parts;
drop index sfo_supplier_parts;

CREATE INDEX nyc_onhand
ON part_nyc (on_hand);

CREATE INDEX nyc_parts_color
ON part_nyc(part_number, color);

CREATE INDEX sfo_parts_color
ON part_sfo(part_number, color);

CREATE INDEX nyc_suppliers_on_hand
on part_nyc(supplier,on_hand);

CREATE INDEX sfo_suppliers_on_hand
on part_sfo(supplier,on_hand);

CREATE INDEX nyc_supplier_parts
on part_nyc(supplier, part_number);

CREATE INDEX sfo_supplier_parts
on part_sfo(supplier, part_number);


