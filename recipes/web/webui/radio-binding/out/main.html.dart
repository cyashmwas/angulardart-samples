// Auto-generated from main.html.
// DO NOT EDIT.

library main_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';


// Original code


    // Do I need the @observable?
    final __changes = new __observe.Observable();

    String __$veg = "spinach";
    String get veg {
      if (__observe.observeReads) {
        __observe.notifyRead(__changes, __observe.ChangeRecord.FIELD, 'veg');
      }
      return __$veg;
    }
    set veg(String value) {
      if (__observe.hasObservers(__changes)) {
        __observe.notifyChange(__changes, __observe.ChangeRecord.FIELD, 'veg',
            __$veg, value);
      }
      __$veg = value;
    } // Sets an initial value. Spinach is auto-selected.

    void main() {}
    
  
// Additional generated code
void init_autogenerated() {
  var __root = autogenerated.document.body;
  var __e0, __e1, __e2, __e4;
  var __t = new autogenerated.Template(__root);
  __e0 = __root.nodes[1].nodes[1];
  __t.listen(__e0.onChange, ($event) { veg = 'kale'; });
  __t.oneWayBind(() => veg == 'kale', (e) { if (__e0.checked != e) __e0.checked = e; }, false, false);
  __e1 = __root.nodes[1].nodes[5];
  __t.listen(__e1.onChange, ($event) { veg = 'spinach'; });
  __t.oneWayBind(() => veg == 'spinach', (e) { if (__e1.checked != e) __e1.checked = e; }, false, false);
  __e2 = __root.nodes[1].nodes[9];
  __t.listen(__e2.onChange, ($event) { veg = 'carrots'; });
  __t.oneWayBind(() => veg == 'carrots', (e) { if (__e2.checked != e) __e2.checked = e; }, false, false);
  __e4 = __root.nodes[3];
  var __binding3 = __t.contentBind(() => veg, false);
  __e4.nodes.addAll([new autogenerated.Text('veg = '),
      __binding3]);
  __t.create();
  __t.insert();
}

//@ sourceMappingURL=main.html.dart.map