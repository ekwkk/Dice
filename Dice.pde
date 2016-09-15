Die newDie;
int counter;
PImage img;


void setup()
{
	size(650,800);
	background(78, 164, 186);
	noLoop();
	img = loadImage("download.jpg");
}




void draw()
{

	background(78, 164, 186);
	int sum = 0;
	for (int y = 50; y <= 450; y = y + 200)
	{
		for (int x = 50; x < 650; x+= 200)
		{
			newDie = new Die(x,y);
			newDie.show();
			counter += newDie.die;
			sum += newDie.die;
		}
	}
	textSize(40);
	textAlign(CENTER);
	text("This roll: " + sum, 150, 700);
	text("Total roll: " + counter, 150, 750);

	if (counter > 300)
	{
		background(255);
		textAlign(CENTER);
		textSize(20);
		text("You are over 300! Click to restart.", 350, 250);
		image(img, 350,300);
		counter = 0;
		sum = 0;
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
