USE webDevelopment;
ALTER TABLE languagess ADD versions VARCHAR(10);
ALTER TABLE frameworks ADD IF NOT EXISTS version INT;
ALTER TABLE languagess RENAME COLUMN "versions" TO "version";
ALTER TABLE frameworks RENAME COLUMN "name" TO "framework";
ALTER TABLE frameworks MODIFY COLUMN version VARCHAR(10);
USE codex;
ALTER TABLE clients DROP COLUMN "secondPhoneNumber";
ALTER TABLE clients RENAME COLUMN "firstPhoneNumber" TO "phoneNumber";
ALTER TABLE clients MODIFY COLUMN phoneNumber VARCHAR(15);
ALTER TABLE clients ADD zipcode VARCHAR(5);
ALTER TABLE clients ADD city VARCHAR(25);
