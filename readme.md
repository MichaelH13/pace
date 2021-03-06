# Pace

## Current Tasks

### Views
- [ ] HomeViewController
	- [ ] Make Spotify button look clickable (or make a link below to make it more intuitive?)
- [ ] NewRunViewController
	- [ ] Validations for each text field
	- [ ] Conditional segue for height
	- [ ] Conditional segue for genre
	- [ ] Drop-down for genre selection
	- [ ] Change font to Avenir
	- [ ] Create core graphics for rounded Spotify button
- [ ] PastRunTableViewController
	- [ ] Get run data to show up (distance, time, pace)
	- [x] Format prototype cell
- [ ] PlaylistViewController
	- [x] Display song data correctly
- [ ] RunSummaryViewController
	- [ ] Add map view
	- [ ] Match Run Tracker UI
- [ ] RunTrackerViewController
	- [x] Fix font sizes of timer and mileage count when app runs
	- [x] Constraints
	- [x] Fix strange space between timer & pace and respective units
	- [ ] Convert seconds to mm:hh:ss
- [ ] SPTAudioStreamingController
- [ ] SearchViewController
	- [ ] Add auto-search as user edits search bar field
	- [ ] Pass user-selected song to the NewRunViewController to use for target bpm

### Spotify SDK
#### Note: Pull Spotify's demo project from their SDK repo for reference - it uses beta 25
- [ ] Login authentication
	- [x] User authorization
	- [x] Login authentication
	- [ ] Refresh tokens
- [ ] Music playback
	- [x] Single song playback
	- [ ] Playback a playlist of songs using previous/next buttons on run tracker
- [ ] Set up song querying
	- [x] Research Spotify song attributes
	- [x] Make server request for song recs based on genre and tempo
	- [x] Pull song data and store in temp dictionary
	- [ ] Add songs to Core Data
- [ ] Convert user inputs (height, pace, genre, etc.) into relevant query parms
- [x] Create algorithm for pulling songs
	- [x] Randomized playlists for every identical query 

### Run Tracker
- [ ] Save locations to Core Data
- [ ] Convert height into stride rate?
