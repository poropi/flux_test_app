import 'IncrementAction.dart';
import 'flux/src/store.dart';
import 'flux/src/store_watcher.dart';


final StoreToken incrementStoreToken = StoreToken(IncrementStore());

class IncrementStore extends FluxStore {

  int _counter = 0;

  IncrementStore() {
    triggerOnAction(incrementAction, onAction: (int value){
      _counter = value + 1;
    });
  }

  int get counter => _counter;
}
