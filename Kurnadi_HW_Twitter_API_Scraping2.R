# Title     : Twitter API Scraping
# Author    : Kurnadi
# Objective : To Scrap Twitter with API

# Step 1: Install and load rtweet package 
#install.packages("rtweet")
library(rtweet)

#install.packages("devtools")
library(devtools)

#install_github("mkearney/rtweet")
library(mkearney/rtweet)

# Step 2: API Authorization 

# Find out how to get consumer_key and consumer_secret here: 
# https://www.nurandi.id/blog/twitter-authentication-dengan-r/

# With access token / secret
token <- create_token(
  consumer_key = "rhXv1kGjNyPQE3xRdEq9RoRYK",
  consumer_secret = "4zzg7a5LfCVdpHnlbnRMb44Ly37mUcAFKWFbae3Tsdfqw7uQkv",
  access_token = "1188403292-c4nYkR4DLU6ei0bEtarNUfA2VOXjvTcHTOwTuoF",
  access_secret = "H0EvuoOiCzAvZkJxsJUWLWRWadMejoOUDAlF7hN8QdbEP")

# Step 3: Crawling Data Twitter 

# Define your twitter username 
my_username='Kurnadi'

# find 1000 tweets with keywords: "kota jakarta"
tweet <- search_tweets(q = "KPAI", n = 1000)

# to know the column names of tweet 
colnames(tweet)
dim(tweet)

# let's take a look at three columns
k <- tweet[,c("created_at", "screen_name", "text")]
k

# Write to csv file
write.csv(k, 'Recent_Twitter_Trending_Topic.csv')
