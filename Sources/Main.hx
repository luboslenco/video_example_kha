package;

import kha.System;

class Main {
	public static function main() {
		System.start({title: "Empty", width: 800, height: 600}, function(win: kha.Window) {
			new Empty();
		});
	}
}
