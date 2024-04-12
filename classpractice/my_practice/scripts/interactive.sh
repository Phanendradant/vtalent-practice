#!/bin/bash
######################################################
# Author: balu
# Version: 1.0.0
# date:
# descripion: interactive script in shell script
# usage: ./interactive.sh 
######################################################
read -p "name superhero which u like?" hero_name
read -p "which movie has this role?" movie_super_hero
read -p "what is u r name?" name
echo "hi ${name},thanks for watching movie ${movie_super_hero}
and liking the character ${hero_name}"