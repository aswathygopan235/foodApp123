import 'package:food_blog_app/redux/actions.dart';
import 'package:food_blog_app/redux/scratch_app_state.dart';

ScratchAppState reducer(ScratchAppState prevState, dynamic action) {
  ScratchAppState newState = ScratchAppState.fromScratchAppState(prevState);
  if (action is CartCounter) {
    newState.cartCounter = action.payload;
  }
  return newState;
}
