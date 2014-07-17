In this directory you'll find two files containing JSON-serialized data for video and movie metadata. Each video represents a video as found on a host (e.g. YouTube, Netflix) on the internet. Each movie is the canonical representation of a film in the TMS database. Your assignment is to write a script to create a Hash which maps video ids to movie tms_ids.

Video field definitions:

id: unique integer identifier
title: title of the video from the host
description: text description from the host
image_url: a url for an image thumbnail from the page
parsed_duration: length of the video in seconds
url: the url where this video can be found
year: year from the video provided by the host

Movie field definitions:

tms_id: unique string identifier
title: title of the film in TMS' database
description: description of the film in TMS' database
run_time: the size of the "air time" slot for the film for when it's aired on television (includes advertisements)
language: two-character language code
year: the original airing year for the film in TMS' database