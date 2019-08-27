package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class Game extends MovieClip {
		
		var o:Orc;
		//public var moon:MovieClip;
		
		public function Game() {
			/*
			Below is test code, figuring out how things work and how to set up variables and reference them
			trace("Hello word");
			int x = 42;
			var x:int = 42;
			trace("x is: " + x);
			
			addChild(new Orc());*/
			
			//Creates an Orc
			o = new Orc();	
			//Positions the Orc
			o.x = 275;
			o.y = 275;
			//Spawns the Orc
			addChild (o);
			
			//Creates a Crate
			var c = new Crate();
			//Positions the Crate
			c.x = 100;
			//Spawns the Crate
			o.addChild(c);
			
			o.addEventListener(MouseEvent.CLICK, handleClick);
			addEventListener(Event.ENTER_FRAME, gameLoop);
		}//End Game
		public function gameLoop(e:Event): void{
			o.rotation += 10;
			
			moon.x = Math.random() *550;
			moon.y = Math.random() *550;
		}//End gameLoop
		public function handleClick(e:MouseEvent): void{
			trace("You poked me!");
		}//End handleClick
		

		
	}//End Class
	
}//End Package
