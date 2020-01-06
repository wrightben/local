javascript:(function() {

	var setFont = function(doc, r) {try {

		var f = doc.getElementsByTagName('iframe');
	
		for (e of f) {

			if (r > 1) {
				var body = e.contentDocument.getElementsByTagName('body')[0];
				body.innerHTML = body.innerHTML + "<style>@import url('https://fonts.googleapis.com/css?family=Montserrat');</style>";
				body.style.fontFamily = "Montserrat";			
			}
		
			setFont(e.contentDocument,r + 1);

		}

	} catch (e) {
		console.log(e);
	}};
	setFont(document, 1);
	
})();
// Kindle-Chrome Bookmarklet