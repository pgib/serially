window.onload = function()
{
	var i;
	for (i = 0; i < 20; i++)
	{
		setInterval(function(p)
		{
			//window.console.log("i: " + p)
			$("s" + p).update(Math.floor(Math.random() * 10));
		}, (330 + Math.floor(Math.random() * 200)), i);
	}
};