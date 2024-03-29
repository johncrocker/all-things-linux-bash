DELETE FROM query_storage WHERE timestamp <= strftime('%s', datetime('now', '-7 day'));
DELETE FROM domain_by_id WHERE id NOT IN (SELECT domain FROM query_storage);
DELETE FROM client_by_id WHERE id NOT IN (SELECT client FROM query_storage);
DELETE FROM forward_by_id WHERE id NOT IN (SELECT forward FROM query_storage);
DELETE FROM addinfo_by_id WHERE id NOT IN (SELECT additional_info FROM query_storage);
VACUUM;
