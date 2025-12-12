-- init_db.sql
-- 執行指令： sqlite3 lab_inventory.db < init_db.sql

DROP TABLE IF EXISTS equipment;

CREATE TABLE equipment (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    qty INTEGER DEFAULT 0,
    price INTEGER DEFAULT 0,
    location TEXT,
    created_at TEXT DEFAULT (datetime('now', 'localtime'))
);

-- 寫入預設資料 (加入價格)
INSERT INTO equipment (name, qty, price, location) VALUES ('Raspberry Pi 4', 15, 1500, 'Cabinet A');
INSERT INTO equipment (name, qty, price, location) VALUES ('Raspberry Pi 5', 5, 2500, 'Cabinet A');
INSERT INTO equipment (name, qty, price, location) VALUES ('HDMI Cable', 20, 150, 'Box 1');
INSERT INTO equipment (name, qty, price, location) VALUES ('DHT11 Sensor', 30, 80, 'Box 2');
INSERT INTO equipment (name, qty, price, location) VALUES ('USB Keyboard', 10, 300, 'Cabinet B');
INSERT INTO equipment (name, qty, price, location) VALUES ('Broken Monitor', 1, 0, 'Recycle Bin');

-- 驗證
SELECT * FROM equipment;