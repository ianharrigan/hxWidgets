package wx.widgets;

import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/choice.h")
@:unreflective
@:native("wxChoice")
@:structAccess
extern class Choice extends Control implements ItemContainer {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxChoice")        private static function _new():RawPointer<Choice>;
                                    public static inline function createInstance():Pointer<Choice> {
                                        return Pointer.fromRaw(_new());
                                    }

    @:native("Create")              @:overload(function(parent:RawPointer<Window>, id:Int):Bool {})
    @:native("Create")              @:overload(function(parent:RawPointer<Window>, id:Int, point:Point, size:Size, n:Int, choices:cpp.RawPointer<WxString>, style:Int):Bool {})
    @:native("Create")              override public function create(parent:RawPointer<Window>, id:Int, point:Point, size:Size, style:Int):Bool;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainer
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("Append")              public function append(string:WxString):Int;
    @:native("Delete")              public function delete(n:Int):Void;
    @:native("Clear")               public function clear():Void;

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ItemContainerImmutable
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("SetString")           public function setString(n:Int, string:WxString):Void;
    @:native("GetString")           public function getString(n:Int):WxString;

    @:native("SetSelection")        public function setSelection(n:Int):Void;
    @:native("GetSelection")        public function getSelection():Int;
    @:native("SetStringSelection")  public function setStringSelection(string:WxString):Void;
    @:native("GetStringSelection")  public function getStringSelection():WxString;
}