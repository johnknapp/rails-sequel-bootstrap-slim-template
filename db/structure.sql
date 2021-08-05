CREATE TABLE `schema_migrations` (`filename` varchar(255) NOT NULL PRIMARY KEY);
CREATE TABLE `blogs` (`id` integer NOT NULL PRIMARY KEY AUTOINCREMENT, `title` varchar(255), `text` varchar(255), `category` integer);
CREATE TABLE sqlite_sequence(name,seq);
INSERT INTO `schema_migrations` (`filename`) VALUES ('20210805084255_create_blogs.rb');