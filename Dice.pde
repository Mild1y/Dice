int sum = 0;
void setup()
{
	size (800,800);
	noLoop();
}
void draw()
{
	for (int x = 15; x < 750; x = x + 70)
	{
		for (int y = 15; y < 700; y = y + 70)
		{
			Die un = new Die(x,y);
			un.show();
		}
	}
	System.out.println(sum);
	fill(255);
	rect(365,740,100,50);
	fill(0);
	text("Total " + sum,390,755,50);
}
void mousePressed()
{
	sum = 0;
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int dieNum;
	int myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		//your code here
		if ((Math.random()*6) < 1)
		{
			dieNum = 1;
		}
		else if ((Math.random()*6) < 2)
		{
			dieNum = 2;
		}
		else if ((Math.random()*6) < 3)
		{
			dieNum = 3;
		}
		else if ((Math.random()*6) < 4)
		{
			dieNum = 4;
		}
		else if ((Math.random()*6) < 5)
		{
			dieNum = 5;
		}
		else 
		{
			dieNum = 6;
		}
		sum = sum + dieNum;
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,60,60,10);
		fill(0);
		if (dieNum == 1)
		{
			ellipse(myX + 30, myY + 30,10,10);
		}
		else if (dieNum == 2)
		{
			ellipse(myX + 20, myY + 20,10,10);
			ellipse(myX + 40, myY + 40,10,10);
		}
		else if (dieNum == 3)
		{
			ellipse(myX + 20, myY + 20,10,10);
			ellipse(myX + 30, myY + 30,10,10);
			ellipse(myX + 40, myY + 40,10,10);
		}
		else if (dieNum == 4)
		{
			ellipse(myX + 20, myY + 20,10,10);
			ellipse(myX + 40, myY + 40,10,10);
			ellipse(myX + 20, myY + 40,10,10);
			ellipse(myX + 40, myY + 20,10,10);
		}
		else if (dieNum == 5)
		{
			ellipse(myX + 20, myY + 20,10,10);
			ellipse(myX + 40, myY + 40,10,10);
			ellipse(myX + 20, myY + 40,10,10);
			ellipse(myX + 40, myY + 20,10,10);
			ellipse(myX + 30, myY + 30,10,10);
		}
		else if (dieNum == 6)
		{
			ellipse(myX + 20, myY + 20,10,10);
			ellipse(myX + 40, myY + 40,10,10);
			ellipse(myX + 20, myY + 40,10,10);
			ellipse(myX + 40, myY + 20,10,10);
			ellipse(myX + 20, myY + 30,10,10);
			ellipse(myX + 40, myY + 30,10,10);
		}
	}
}
