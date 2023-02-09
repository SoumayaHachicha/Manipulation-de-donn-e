//INSERT insère des n-uplets (informellement appelés lignes et appelés tuples en anglais) dans une table existante, exemple :

INSERT INTO a_table (field1, field2, field3)
    VALUES ('test', 'N', NULL);


//UPDATE Modifie un ensemble de n-uplets existant dans une table, exemple :

UPDATE a_table
    SET field1 = 'updated value'
WHERE field2 = 'N';

//DELETE Supprime un ensemble de n-uplets existant dans une table, exemple :

DELETE FROM a_table
    WHERE field2 = 'N';
    
//MERGE Combine les données de plusieurs tables. C'est la combinaison de INSERT et UPDATE. Il peut être nommé UPSERT, INSERT OR REPLACE INTO, ou encore INSERT ON DUPLICATE KEY UPDATE dans certains moteurs de base de données.
    
MERGE INTO table_name USING table_reference ON (condition)
   WHEN MATCHED THEN
   UPDATE SET column1 = value1 [, column2 = value2 ...]
   WHEN NOT MATCHED THEN
   INSERT (column1 [, column2 ...]) VALUES (value1 [, value2 .. ])
   
   
