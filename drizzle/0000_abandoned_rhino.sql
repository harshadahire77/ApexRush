CREATE TABLE `players` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text DEFAULT 'Racer' NOT NULL,
	`coins` integer DEFAULT 0 NOT NULL,
	`best` integer DEFAULT 0 NOT NULL,
	`garage` text DEFAULT '{"owned":["rookie"],"upgrades":{}}' NOT NULL,
	`missions` text DEFAULT '[]' NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_players_best` ON `players` (`best`);--> statement-breakpoint
CREATE TABLE `runs` (
	`id` text PRIMARY KEY NOT NULL,
	`player_id` text NOT NULL,
	`started` integer NOT NULL,
	`finished` integer,
	`score` integer,
	`car` text NOT NULL,
	`track` text NOT NULL
);
