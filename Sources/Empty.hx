package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;
import kha.Video;
import kha.input.Mouse;

class Empty {
	
	var video:Video;
	
	public function new() {
		Assets.loadEverything(loadFinished);
	}
	
	function loadFinished() {
		video = kha.Assets.videos.movie;

		Mouse.get(0).notify(mouseDown, null, null, null, null);	
		System.notifyOnFrames(render);
	}

	function mouseDown(button: Int, x: Int, y: Int) {
		video.play(true);
		Mouse.get(0).remove(mouseDown, null, null, null, null);
	}

	function render(frames: Array<Framebuffer>): Void {
		var g2 = frames[0].g2;
		g2.drawVideo(video, 0, 0, video.width(), video.height());
	}
}
