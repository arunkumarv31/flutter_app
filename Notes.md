* Immutable class - Properties of the class cannot change. All the values are final
* StatelessWidget and StatefulWidget is Immutable, But State class is Mutable.
* StatelessWidget: It has a build method which describes the user interface represented by this widget
* StatefulWidget: It creates an Instance of State class.
* State: persists over the lifetime of the widget.
* Prefixing an identifier with an underscore enforces privacy in the Dart language.
* Text Widget is a child widget and Directionality is a container widget.
* Build method expects at least one container widget.
* _Why not everything stateful ?_
* Whenever a tab is associated with a stateful widget it regenerates the widget everytime the tab is selected.
* A stateless widget is not getting reloaded everytime when the tab is created. 