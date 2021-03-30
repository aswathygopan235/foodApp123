import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:food_blog_app/redux/actions.dart';
import 'package:redux/redux.dart';
import 'package:food_blog_app/redux/scratch_app_state.dart';
import 'package:food_blog_app/redux/reducer.dart';

void main() {
  final _initialState = ScratchAppState(cartCounter: 1);
  final Store<ScratchAppState> _store =
      Store<ScratchAppState>(reducer, initialState: _initialState);
  runApp(ReduxAppTest(store: _store));
}

class ReduxAppTest extends StatelessWidget {
  final Store<ScratchAppState> store;
  ReduxAppTest({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<ScratchAppState>(
      store: store,
      child: MaterialApp(
        home: Scaffold(
          body: StoreConnector<ScratchAppState, ScratchAppState>(
              converter: (store) => store.state,
              builder: (context, state) {
                return SafeArea(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Icon(Icons.shopping_cart_sharp),
                              Text(
                                state.getCartCounter.toString(),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: TextButton(
                            onPressed: () {
                              StoreProvider.of<ScratchAppState>(context)
                                  .dispatch(
                                      CartCounter(state.getCartCounter + 1));
                            },
                            child: Text('Click here to increment'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
