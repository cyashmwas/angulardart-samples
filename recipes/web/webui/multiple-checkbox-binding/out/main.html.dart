// Auto-generated from main.html.
// DO NOT EDIT.

library main_html;

import 'dart:html' as autogenerated;
import 'dart:svg' as autogenerated_svg;
import 'package:web_ui/web_ui.dart' as autogenerated;
import 'package:web_ui/observe/observable.dart' as __observe;
import 'package:web_ui/web_ui.dart';


// Original code

      
      final Map<String, bool> colors = toObservable(
        {'red': false, 'blue': false, 'green': false}
      );
      
      List get selectedColors => colors.keys.where((c) => colors[c]).toList();
      
      void main() {}
   
    
// Additional generated code
void init_autogenerated() {
  var __root = autogenerated.document.body;
  final __html0 = new autogenerated.BRElement(), __html1 = new autogenerated.Element.html('<input type="checkbox">'), __html2 = new autogenerated.BRElement(), __html3 = new autogenerated.Element.html('<ul>\n        <li style="display:none"></li>\n      </ul>'), __html4 = new autogenerated.Element.html('<li template="" repeat="color in selectedColors"></li>');
  var __e2, __e7;
  var __t = new autogenerated.Template(__root);
  __e2 = __root.nodes[3];
  __t.loop(__e2, () => colors.keys, ($list, $index, __t) {
    var key = $list[$index];
    var __e0;
    __e0 = __html1.clone(true);
    __t.listen(__e0.onChange, ($event) { colors[key] = __e0.checked; });
    __t.oneWayBind(() => colors[key], (e) { if (__e0.checked != e) __e0.checked = e; }, false, false);
    var __binding1 = __t.contentBind(() => key, false);
  __t.addAll([new autogenerated.Text('\n      '),
      __e0,
      __binding1,
      __html0.clone(true),
      new autogenerated.Text('\n    ')]);
  });
  __e7 = __root.nodes[5];
  __t.conditional(__e7, () => !selectedColors.isEmpty, (__t) {
    var __e5, __e6;
    __e6 = __html3.clone(true);
    __e5 = __e6.nodes[1];
    __t.loop(__e5, () => selectedColors, ($list, $index, __t) {
      var color = $list[$index];
      var __e4;
      __e4 = __html4.clone(true);
      var __binding3 = __t.contentBind(() => color, false);
      __e4.nodes.add(__binding3);
    __t.add(__e4);
    });
  __t.addAll([new autogenerated.Text('\n      '),
      __html2.clone(true),
      new autogenerated.Text('\n      You picked:\n      '),
      __e6,
      new autogenerated.Text('\n    ')]);
  });

  __t.create();
  __t.insert();
}

//@ sourceMappingURL=main.html.dart.map