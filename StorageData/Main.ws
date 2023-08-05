class MyData { //this like In Any Language Class For
  public var PLAYERENTITYSTATIC : W3PlayerWitcher;
  public var Name, Author, Version : String;
  public var DebugMode : bool;

  //YOU CAN SET HERE ANY FUNCTON ALL YOU WANT
  //public function
  //private function
  //... 
}

function GetSettings() : MyData //Instantiace the settings iF NOT EXIST AND get data
{
  var data: MyData;
  var player_input : CPlayerInput;
  player_input = thePlayer.GetInputHandler();
  if (!player_input.storage) player_input.storage = new MyData in player_input;
  data = player_input.storage;
  return data;
}

function UpdateSettings(Data:MyData) //GETCLASS
{
  var player_input : CPlayerInput;
  player_input = thePlayer.GetInputHandler();
  if (!player_input.storage) player_input.storage = new MyData in player_input;
  player_input.storage = Data;
}
