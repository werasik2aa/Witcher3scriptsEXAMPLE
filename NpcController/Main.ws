function _SpawnIT(npc_templ:string, position:Vector, rotation:EulerAngles) : CEntity
{
    var template: CEntityTemplate;
    var entity: CEntity;
    template = (CEntityTemplate)LoadResource(npc_templ, true);
    entity = theGame.CreateEntity(
      template,
      position,
      rotation
    );
    ((CActor)entity).GetMovingAgentComponent().SetGameplayRelativeMoveSpeed(4);
    //ID DON'T ATTACK set
    ((CActor)entity).SetTemporaryAttitudeGroup(
      'q104_avallach_friendly_to_all',
      AGP_Default
    );
    ((CActor)entity).GetMovingAgentComponent().SetGameplayMoveDirection(0);
    ((CActor)entity).ActionCancelAll();
    return entity;
}

//=COMMENTS=//
//((CActor)entity).GetMovingAgentComponent().SetGameplayMoveDirection(0);
//GetWitcherPlayer().GetHeading() for head to you or VecHeading(positionP1 - positionP2) 
#where: 
       #P1 - targetpos
       #P2 - entityPOS

//KILL NPC 
function kill()
{
  var entity: CNewNPC// DEFINE HERE ENTITY any way CNewNPC or CEntity or CActor...
  //entity = your.var.from another scripts or ?
  ((CActor)entity).SignalGameplayEvent( 'Death' );
  ((CActor)entity).SetAlive(false);
  ((CActor)entity).OnDeath( action );
}
//ACTIONS (ASYNC = FINAL FUNCTIN) (Without sync = Latent function Example # ActionMoveTo(pos, moveType) #)
// ((CActor)entity).ActionMoveToAsync(pos, moveType);
// ((CActor)entity).ActionMoveToWithHeadingAsync( pos, pos.Y, MT_Walk, 0.f, 0.1f );
// ((CActor)entity).GetMovingAgentComponent().SetGameplayMoveDirection(VecHeading(pos - entity.GetWorldPosition()));
// ((CActor)entity).ActionRotateToAsync(pos);
// ((CActor)entity).Teleport(pos);
// ((CActor)entity).TeleportWithRotation(pos, rot);
// ((CActor)entity).ActionCancelAll();
// ((CActor)entity).GetMovingAgentComponent().SetGameplayRelativeMoveSpeed(st); // 1 is for Walking, 2 jogging, 4 sprinting.
// ((CActor)entity).SetCombatTarget(entity2);
// ((CActor)entity).ActivateBehaviorsSync(stupidArray);
// ((CActor)entity).SetBehaviorMimicVariable('gameplayMimicsMode', (float)(int)GMM_Combat);
// ((CActor)entity).SetBehaviorMimicVariable('gameplayMimicsMode', (float)(int)GMM_Default);
// ((CActor)entity).SetBehaviorMimicVariable('gameplayMimicsMode', (float)(int)PGMM_None);
// ((CActor)entity).SetBehaviorMimicVariable('gameplayMimicsMode', (float)(int)PGMM_Default);
// ((CActor)entity).SetBehaviorMimicVariable('gameplayMimicsMode', (float)(int)PGMM_None);
// ((CActor)entity).SetBehaviorMimicVariable('gameplayMimicsMode', (float)(int)GMM_Death);
// ((CActor)entity).SetBehaviorMimicVariable('gameplayMimicsMode', (float)(int)PGMM_Inventory);
// ((CActor)entity).GetMovingAgentComponent().SetGameplayRelativeMoveSpeed(act); // 1 is for Walking, 2 jogging, 4 sprinting.
// ((CActor)entity).ActivateBehaviorsSync(act); array<name>
// ((CNewNPC)vehicleEntity).GetHorseComponent(); WRONG?
// riderGetServerSettings().sharedParams.GetHorse();
// riderData = entity.GetRiderData();
// vehicleEntity = riderData.sharedParams.GetHorse();
// ((CActor)entity).MountActor(riderData, 'VehicleHorse', vehicleComponent);
//TYPEMOVE
// MT_Walk
// MT_Run
//...
