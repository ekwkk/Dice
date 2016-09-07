Die newDie;

void setup()
{
	size(700,500);
	background(78, 164, 186);
	noLoop();
}




void draw()
{
	for (int x = 50; x <= 450; x = x + 200)
	{
		newDie = new Die(x,50);
		newDie.show();
	}
	
}





void mousePressed()
{
	redraw();
}





class Die 
{
	int myX, myY, die;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}


	void roll()
	{
		die = (int)((Math.random()*6)+1);
	}



	void show()
	{
		noStroke();
		fill(153,255,255);
		rect(myX, myY, 150 , 150, 70);

		fill(0);
		if (die == 1)
		{
			ellipse(myX+70, myY+70, 25, 25);
		}
		else if (die == 2)
		{
			ellipse(myX+35, myY+70, 25, 25);
			ellipse(myX+105, myY+70, 25, 25);
		}
		else if (die == 3)
		{
			ellipse(myX+35, myY+35, 25, 25);
			ellipse(myX+70, myY+70, 25, 25);
			ellipse(myX+105, myY+105, 25, 25);
		}
		else if (die == 4)
		{
			ellipse(myX+50, myY+50, 25, 25);
			ellipse(myX+50, myY+100, 25, 25);
			ellipse(myX+100, myY+50, 25, 25);
			ellipse(myX+100, myY+100, 25, 25);
		}
		else if (die == 5)
		{
			ellipse(myX+50, myY+50, 25, 25);
			ellipse(myX+50, myY+100, 25, 25);
			ellipse(myX+100, myY+50, 25, 25);
			ellipse(myX+100, myY+100, 25, 25);
			ellipse(myX+75, myY+75, 25, 25);
		}
		else
		{
			ellipse(myX+50, myY+30, 25, 25);
			ellipse(myX+50, myY+70, 25, 25);
			ellipse(myX+100, myY+30, 25, 25);
			ellipse(myX+100, myY+70, 25, 25);
			ellipse(myX+50, myY+110, 25, 25);
			ellipse(myX+100, myY+110, 25, 25);
		}
	}
}
