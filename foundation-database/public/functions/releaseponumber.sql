CREATE OR REPLACE FUNCTION releasePoNumber(INTEGER) RETURNS BOOLEAN AS $$
-- Copyright (c) 1999-2019 by OpenMFG LLC, d/b/a xTuple. 
-- See www.xtuple.com/CPAL for the full text of the software license.
  SELECT releaseNumber('PoNumber', $1) > 0;
$$ LANGUAGE 'sql';


CREATE OR REPLACE FUNCTION releasePoNumber(TEXT) RETURNS BOOLEAN AS $$
-- Copyright (c) 1999-2019 by OpenMFG LLC, d/b/a xTuple. 
-- See www.xtuple.com/CPAL for the full text of the software license.
  SELECT releaseNumber('PoNumber', $1::INTEGER) > 0;
$$ LANGUAGE 'sql';
