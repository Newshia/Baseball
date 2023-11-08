-- Create the database
CREATE DATABASE BaseballAnalyticsDB;

-- Use the database
USE BaseballAnalyticsDB;

-- Create the 'team' table
CREATE TABLE team (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR(255) NOT NULL
);

-- Create the 'offensive_players' table
CREATE TABLE offensive_players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    batting_average FLOAT,
    runs_batted_in INT
);

-- Create the 'defensive_players' table
CREATE TABLE defensive_players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(255) NOT NULL,
    position VARCHAR(255) NOT NULL,
    fielding_percentage FLOAT,
    assists INT
);

-- Create the 'baseball_analytics' table
CREATE TABLE baseball_analytics (
    analytics_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT NOT NULL,
    runs_scored INT,
    stolen_bases INT,
    earned_run_average FLOAT,
    wins INT
);

-- Create a view for offensive players
CREATE VIEW offensive_player_view AS
SELECT player_id, player_name, position, batting_average, runs_batted_in
FROM offensive_players;

-- Create a view for defensive players
CREATE VIEW defensive_player_view AS
SELECT player_id, player_name, position, fielding_percentage, assists
FROM defensive_players;
