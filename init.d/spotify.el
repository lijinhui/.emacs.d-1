;;Small minor mode to control spotify from emacs
;; Get the osascript from https://github.com/dronir/SpotifyControl
;; Create file in /usr/bin/spotify with the following contents
;;
;; #! /usr/bash
;; osascript /Users/brady/Scripts/SpotifyControl.scpt "$1"

(defun spotify-play () "Play Spotify" (interactive)
  (shell-command "spotify play"))

(defun spotify-pause () "Pause Spotify" (interactive)
  (shell-command "spotify pause"))

(defun spotify-toggle () "Play/Pause Spotify" (interactive)
  (shell-command "spotify play/pause"))

(defun spotify-previous () "Starts the song over in Spotify" (interactive)
  (shell-command "spotify prev"))

(defun spotify-next () "Next song in Spotify" (interactive)
  (shell-command "spotify next"))

(global-set-key (kbd "<f7>") 'spotify-previous)
(global-set-key (kbd "<f8>") 'spotify-toggle)
(global-set-key (kbd "<f9>") 'spotify-next)
