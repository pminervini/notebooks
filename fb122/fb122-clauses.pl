/location/location/containedby(X,Y) :- /location/capital_of_administrative_division/capital_of./location/administrative_division_capital_relationship/administrative_division(X,Y)
/location/location/contains(X,Y) :- /location/administrative_division/capital./location/administrative_division_capital_relationship/capital(X,Y)
/location/location/containedby(X,Y) :- /location/administrative_division/country(X,Y)
/location/location/contains(X,Y) :- /location/country/administrative_divisions(X,Y)
/location/location/containedby(X,Y) :- /location/administrative_division/second_level_division_of(X,Y)
/location/location/contains(X,Y) :- /location/country/second_level_divisions(X,Y)
/location/location/contains(X,Y) :- /location/country/capital(X,Y)
/location/location/containedby(X,Y) :- /location/administrative_division/first_level_division_of(X,Y)
/location/location/contains(X,Y) :- /location/country/first_level_divisions(X,Y)
/location/location/containedby(Y,X) :- /location/location/contains(X,Y)
/location/location/contains(Y,X) :- /location/location/containedby(X,Y)
/location/administrative_division/capital./location/administrative_division_capital_relationship/capital(Y,X) :- /location/capital_of_administrative_division/capital_of./location/administrative_division_capital_relationship/administrative_division(X,Y)
/location/capital_of_administrative_division/capital_of./location/administrative_division_capital_relationship/administrative_division(Y,X) :- /location/administrative_division/capital./location/administrative_division_capital_relationship/capital(X,Y)
/location/administrative_division/country(Y,X) :- /location/country/administrative_divisions(X,Y)
/location/country/administrative_divisions(Y,X) :- /location/administrative_division/country(X,Y)
/location/location/partially_contains(Y,X) :- /location/location/partially_containedby(X,Y)
/location/location/partially_containedby(Y,X) :- /location/location/partially_contains(X,Y)
/sports/sports_team/roster./sports/sports_team_roster/player(Y,X) :- /sports/pro_athlete/teams./sports/sports_team_roster/team(X,Y)
/sports/pro_athlete/teams./sports/sports_team_roster/team(Y,X) :- /sports/sports_team/roster./sports/sports_team_roster/player(X,Y)
/sports/sports_position/players./sports/sports_team_roster/team(Y,X) :- /sports/sports_team/roster./sports/sports_team_roster/position(X,Y)
/sports/sports_team/roster./sports/sports_team_roster/position(Y,X) :- /sports/sports_position/players./sports/sports_team_roster/team(X,Y)
/sports/sports_position/players./sports/sports_team_roster/player(Y,X) :- /sports/pro_athlete/teams./sports/sports_team_roster/position(X,Y)
/sports/pro_athlete/teams./sports/sports_team_roster/position(Y,X) :- /sports/sports_position/players./sports/sports_team_roster/player(X,Y)
/sports/sports_team/sport(Y,X) :- /sports/sport/teams(X,Y)
/sports/sport/teams(Y,X) :- /sports/sports_team/sport(X,Y)
/sports/sports_team/location(Y,X) :- /sports/sports_team_location/teams(X,Y)
/sports/sports_team_location/teams(Y,X) :- /sports/sports_team/location(X,Y)
/people/person/ethnicity(Y,X) :- /people/ethnicity/people(X,Y)
/people/ethnicity/people(Y,X) :- /people/person/ethnicity(X,Y)
/people/person/place_of_birth(Y,X) :- /location/location/people_born_here(X,Y)
/location/location/people_born_here(Y,X) :- /people/person/place_of_birth(X,Y)
/people/profession/people_with_this_profession(Y,X) :- /people/person/profession(X,Y)
/people/person/profession(Y,X) :- /people/profession/people_with_this_profession(X,Y)
/people/profession/specializations(Y,X) :- /people/profession/specialization_of(X,Y)
/people/profession/specialization_of(Y,X) :- /people/profession/specializations(X,Y)
/people/person/spouse_s./people/marriage/spouse(Y,X) :- /people/person/spouse_s./people/marriage/spouse(X,Y)
/people/person/spouse_s./people/marriage/type_of_union(Y,X) :- /people/marriage_union_type/unions_of_this_type./people/marriage/spouse(X,Y)
/people/marriage_union_type/unions_of_this_type./people/marriage/spouse(Y,X) :- /people/person/spouse_s./people/marriage/type_of_union(X,Y)
/people/person/languages(X,Z) :- /people/person/nationality(X,Y), /location/country/official_language(Y,Z)
/sports/sports_position/players./sports/sports_team_roster/team(X,Z) :- /sports/sports_position/players./sports/sports_team_roster/player(X,Y), /sports/pro_athlete/teams./sports/sports_team_roster/team(Y,Z)
/sports/sports_team/roster./sports/sports_team_roster/position(X,Z) :- /sports/sports_team/roster./sports/sports_team_roster/player(X,Y), /sports/pro_athlete/teams./sports/sports_team_roster/position(Y,Z)
/people/person/spouse_s./people/marriage/type_of_union(X,Z) :- /people/person/spouse_s./people/marriage/spouse(X,Y), /people/person/spouse_s./people/marriage/type_of_union(Y,Z)
/people/marriage_union_type/unions_of_this_type./people/marriage/spouse(X,Z) :- /people/marriage_union_type/unions_of_this_type./people/marriage/spouse(X,Y), /people/person/spouse_s./people/marriage/spouse(Y,Z)
/location/administrative_division/second_level_division_of(X,Z) :- /location/capital_of_administrative_division/capital_of./location/administrative_division_capital_relationship/administrative_division(X,Y), /location/administrative_division/country(Y,Z)
/location/location/containedby(X,Z) :- /location/capital_of_administrative_division/capital_of./location/administrative_division_capital_relationship/administrative_division(X,Y), /location/administrative_division/country(Y,Z)
/location/country/second_level_divisions(X,Z) :- /location/country/administrative_divisions(X,Y), /location/administrative_division/capital./location/administrative_division_capital_relationship/capital(Y,Z)
/location/location/contains(X,Z) :- /location/country/administrative_divisions(X,Y), /location/administrative_division/capital./location/administrative_division_capital_relationship/capital(Y,Z)
