#devtools::install_github('charlie86/spotifyr')
library(spotifyr)
Sys.setenv(SPOTIFY_CLIENT_ID = 'b33e97e44aee4d4babbff9daac56b01c')
Sys.setenv(SPOTIFY_CLIENT_SECRET = '0cd4448d0a8f4070846f60719f0c3a90')

access_token <- get_spotify_access_token()
beatles <- get_artist_audio_features('the beatles')
beatles
joy <- get_artist_audio_features('joy division')
joy
