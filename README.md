# Video Example
Who needs a movie player when you can roll your own in Kha?

To learn how to let khamake convert videos using ffmpeg, check commands in the [wiki](https://github.com/KTXSoftware/Kha/wiki/Examples).

For HTML5, mp4 and webm formats are used. Example of calling khamake:

	node Kha/make html5 --webm "/path/to/ffmpeg -i {in} {out}" --h264 "/path/to/ffmpeg -i {in} {out}"
	
If you plan to use videos in your shaders, make sure to use samplerVideo.

![](bunny.jpg)
Note:
Video is the first minute from the cc-by licenced “open movie” Big Buck Bunny.
