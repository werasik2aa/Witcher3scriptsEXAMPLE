function GetMovingTypeState() : int
{
    if(!thePlayer.GetIsWalking() && !thePlayer.GetIsRunning())
        return 0
    else if(thePlayer.GetIsWalking())
        return 2
    else if(thePlayer.GetIsWalking() && thePlayer.GetIsRunning())
        return 4
    else if(!thePlayer.GetIsWalking() && thePlayer.GetIsRunning())
        return 1
}

//ACTIONS
//thePlayer.GetIsRunning()
//thePlayer.GetIsWalking()
//theGame.IsPaused()
//theGame.IsStopped()
//theGame.GetGuiManager().GetRootMenu()
//thePlayer.GetCurrentStateName() (EXPLORATION, JUMP LIKE THAT)
//thePlayer.GetActorAnimState()
//thePlayer.GetWorldRotation()
//thePlayer.GetLocalRotation()
//thePlayer.GetWorldPosition()
//thePlayer.GetLocalPosition()
//thePlayer.GetLevel() Level of player which he reach by given xp
//thePlayer.GetCurrentHealth()
//theGame.GetCommonMapManager().GetCurrentArea() The are of player where he exists
