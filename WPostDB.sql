
-- BEGIN TABLE Contents
CREATE TABLE `Contents` (
  `pid` varchar(50) NOT NULL,
  `did` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `pos` int NOT NULL,
  PRIMARY KEY (`pid`),
  KEY `documentLink` (`did`),
  CONSTRAINT `documentLink` FOREIGN KEY (`did`) REFERENCES `Documents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- END TABLE Contents

-- BEGIN TABLE Documents
CREATE TABLE `Documents` (
  `id` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `kicker` text NOT NULL,
  `url` text NOT NULL,
  `author` text NOT NULL,
  `date` bigint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- END TABLE Documents

-- BEGIN TABLE Mentions
CREATE TABLE `Mentions` (
  `pid` varchar(50) NOT NULL,
  `pos` int NOT NULL,
  `mentions` text NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- END TABLE Mentions

