if(alphaUp)
{
	image_alpha -= 0.05
	
	if(image_alpha <= 0.2)
	{
		alphaUp = false;
	}
}
else
{
	image_alpha += 0.05;
	
	if(image_alpha == 1)
	{
		alphaUp = true;
	}
}