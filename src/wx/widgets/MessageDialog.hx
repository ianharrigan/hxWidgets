package wx.widgets;

import cpp.ConstCharStar;
import cpp.Pointer;
import cpp.RawPointer;

@:include("wx/msgdlg.h")
@:unreflective
@:native("wxMessageDialog")
extern class MessageDialog extends Dialog {
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // creation functions
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    @:native("new wxMessageDialog")     private static function _new(parent:RawPointer<Window>, message:WxString, caption:WxString, style:Int):RawPointer<Window>;
                                        public static inline function createInstance(parent:RawPointer<Window>, message:WxString, caption:WxString, style:Int):Pointer<Window> return Pointer.fromRaw(_new(parent, message, caption, style));
}
