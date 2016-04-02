package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import kha.Assets;
import kha.Video;

class Empty {
	
	var video:Video;
	
	public function new() {
		Assets.loadEverything(loadFinished);
	}
	
	function loadFinished() {
		video = kha.Assets.videos.movie;
		video.play(true);
		
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);
	}

	function update(): Void {
		
	}

	function render(framebuffer: Framebuffer): Void {
		var g2 = framebuffer.g2;
		g2.drawVideo(video, 0, 0, video.width(), video.height());
	}
}
