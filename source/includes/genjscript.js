// ======================================== \
// NasuTek Multi Forum Host v4.0.x
// Copyright (c) 2009 NasuTek Systems
//
// http://nasutek.com/index2/index.php?id=42
// ======================================== /

_uacct = "UA-1125794-7";
urchinTracker();

preload_image("css/images/progress_bar.gif", 280, 16);

function preload_image(url, width, height)
{
	if (document.images) {
		preload_image     = new Image(width, height); 
		preload_image.src = url;
	}
	return;
}

function toggle(id) {
	var blockID = document.getElementById(id);
	blockID.style.display = ((blockID.style.display == "none") ? "block" : "none");
	return;
}

function highlight(field) 
{
       	field.focus();
       	field.select();
	return;
}
