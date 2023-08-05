class MyData {
  public var PLAYERENTITYSTATIC : W3PlayerWitcher;
  public var Name, Author, Version : String;
  public var DebugMode : bool;
}

function GetServerSettings() : MyData //Instantiace the settings iF NOT EXIST AND get data
{
  var data: MyData;
  var player_input : CPlayerInput;
  player_input = thePlayer.GetInputHandler();
  if (!player_input.storage) player_input.storage = new MyData in player_input;
  data = player_input.storage;
  return data;
}

function UpdateServerSettings(Data:MyData) //GETCLASS
{
  var player_input : CPlayerInput;
  player_input = thePlayer.GetInputHandler();
  if (!player_input.storage) player_input.storage = new MyData in player_input;
  player_input.storage = Data;
}
