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
    ((CActor)entity).GetMovingAgentComponent().SetGameplayMoveDirection(GetWitcherPlayer().GetHeading());
    ((CActor)entity).ActionCancelAll();
    return entity;
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


//TYPEMOVE
// MT_Walk
// MT_Run
