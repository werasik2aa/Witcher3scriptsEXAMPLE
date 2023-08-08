exec function LaunchCustomFramework() { //INIT THIS INSIDE THE thePlayer Class
   var manager: MyBackgroundWorker;
   manager = new MyBackgroundWorker in thePlayer;
   manager.ExecuteIT();
}
statemachine class MyBackgroundWorker {
    //here can be some vars but for functions inside
    public function ExecuteIT()
    {
        this.GotoState('RunningState');
    }
}
state RunningState in MyBackgroundWorker {
    //var here
    event OnEnterState( prevStateName : name )
    {
        OnStart();
    }
    entry function OnStart() {
        //SET VAR? BEFORE STAR
        OnUpdate(); // updateclass
    }
    latent function OnUpdate() {
        //VAR HERE VARS
        while( true ) {
            //CALL HERE ANY FUNCTIONS
            SleepOneFrame();
        } 
    }
}
/// YOU CAN SET LIKE THAT
state RunningState in MyBackgroundWorker {
    //var here
    event OnEnterState( prevStateName : name )
    {
        OnStart();
    }
    entry function OnStart() {
        //SET VAR? BEFORE STAR
        while( true ) {
            //CALL HERE ANY FUNCTIONS
            SleepOneFrame();
        } 
    }
}
