This sample shows you how to create a one way binding between a controller
variable and a component field. 

The controller defines a single `text` variable:

    // file: my_controller.dart
    @NgController(
        selector: '[my-controller]',
        publishAs: 'ctrl'
    )
    class MyController {
      String text = 'Angular Dart';
    }

The component defines a `text` variable and uses the `@NgOneWay` 
annotation to create a one way binding:
 
    // file: my_component.dart
    @NgComponent(
        selector: 'my-component',
        templateUrl: 'my_component.html',
        publishAs: 'cmp',
        applyAuthorStyles: true
    )
    class MyComponent {
      @NgOneWay('text')
      String text;
    }

You can see the one way binding at work by running the sample. Notice that
changing the value of the `<input>` bound to the controller's `text` changes
the value of the `<input>` inside the component, but the reverse is not the 
case: 

    // file: index.html
    <div my-controller>
      <div class="well">
        <my-component text='ctrl.text'></my-component>
      </div>
      <div>
        <input type="text" ng-model="ctrl.text" value="{{ctrl.text}}">
      </div>
    </div>