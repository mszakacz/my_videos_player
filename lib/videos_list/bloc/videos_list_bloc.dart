import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'videos_list_event.dart';
part 'videos_list_state.dart';

class VideosListBloc extends Bloc<VideosListEvent, VideosListState> {
  VideosListBloc() : super(VideosListInitial()) {
    on<VideosListEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
