Die newDie;

void setup()
{
	size(700,500);
	background(78, 164, 186);
	noLoop();
}




void draw()
{
	newDie = new Die(50,50);
	newDie.show();
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
		rect(myX, myY, 150 , 150);

		if (die == 1)
		{
			ellipse(x, y, width, height);
		}
	}
}
