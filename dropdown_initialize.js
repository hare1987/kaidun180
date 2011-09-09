		var preloaded = [];

		for (var i = 1; i <= 3; i++) {
			preloaded[i] = [loadImage(i + "_0.gif"), loadImage(i + "_1.gif")];
		}

		function init() {

			if (mtDropDown.isSupported()) {
				mtDropDown.initialize();
			}
		}

		function loadImage(sFilename) {
			var img = new Image();
			img.src ="" + sFilename;
			return img;
		}

		function swapImage(imgName, sFilename) {
			document.images[imgName].src = sFilename;
		}

