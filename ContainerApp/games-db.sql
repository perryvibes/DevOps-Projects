CREATE TABLE IF NOT EXISTS Games (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    type VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

INSERT INTO Games (id, title, type, price) VALUES
(1, 'The Witcher 3: Wild Hunt', 'RPG', 29.99),
(2, 'Grand Theft Auto V', 'Action', 19.99),
(3, 'Minecraft', 'Sandbox', 26.95),
(4, 'Red Dead Redemption 2', 'Action', 39.99),
(5, 'Elden Ring', 'RPG', 59.99),
(6, 'Cyberpunk 2077', 'RPG', 29.99),
(7, 'Stardew Valley', 'Simulation', 14.99),
(8, 'Hades', 'Roguelike', 24.99),
(9, 'Hollow Knight', 'Metroidvania', 14.99),
(10, 'Baldur''s Gate 3', 'RPG', 59.99),
(11, 'DOOM Eternal', 'Shooter', 39.99),
(12, 'Portal 2', 'Puzzle', 9.99),
(13, 'Half-Life 2', 'Shooter', 9.99),
(14, 'Terraria', 'Sandbox', 9.99),
(15, 'The Elder Scrolls V: Skyrim', 'RPG', 39.99),
(16, 'God of War', 'Action', 49.99),
(17, 'Sekiro: Shadows Die Twice', 'Action', 59.99),
(18, 'Celeste', 'Platformer', 19.99),
(19, 'Subnautica', 'Survival', 29.99),
(20, 'Resident Evil 4 Remake', 'Horror', 39.99),
(21, 'Factorio', 'Simulation', 35.00),
(22, 'Dark Souls III', 'RPG', 59.99),
(23, 'BioShock Infinite', 'Shooter', 29.99),
(24, 'Fallout: New Vegas', 'RPG', 9.99),
(25, 'Left 4 Dead 2', 'Shooter', 9.99);
