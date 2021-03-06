package wx.widgets;

import cpp.RawPointer;

@:headerCode("
#include <wx/app.h>
#undef RegisterClass
")
@:unreflective
@:native("wxAppConsole")
@:structAccess
extern class AppConsole extends EvtHandler implements EventFilter {
    @:native("SetCLocale")              public function setCLocale():Void;
    @:native("Yield")                   public function yield(onlyIfNeeded:Bool = false):Bool;
    @:native("ScheduleForDestruction")  public function scheduleForDestruction(object:RawPointer<Object>):Void;
}
