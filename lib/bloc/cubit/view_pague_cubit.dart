import 'package:flutter_bloc/flutter_bloc.dart';
class ViewPage extends Cubit<int>{
ViewPage():super(1);

void ChanguePague(int pague){
emit(pague);

}


} 