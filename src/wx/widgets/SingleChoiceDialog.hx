package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/choicdlg.h")
@:unreflective
@:native("wxSingleChoiceDialog")
extern class SingleChoiceDialog extends Dialog {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxSingleChoiceDialog")    private static function _new(parent:RawPointer<Window>, message:WxString, caption:WxString, choices:ArrayString):RawPointer<Window>;
                                            public static inline function createInstance(parent:RawPointer<Window>, message:WxString, caption:WxString, choices:ArrayString):Pointer<Window> return Pointer.fromRaw(_new(parent, message, caption, choices));
}
