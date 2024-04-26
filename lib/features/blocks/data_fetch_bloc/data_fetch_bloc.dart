// import 'dart:developer';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter_package_data_fetching_data_repository/data_repository.dart';

// part 'data_fetch_event.dart';
// part 'data_fetch_state.dart';

// class DataFetchBloc extends Bloc<DataFetchEvent, DataFetchState> {
//   DataFetchBloc() : super(DataFetchInitial()) {
//     final MyDataRepo dataRepository = MyDataRepo();

//     on<DataFetch>((event, emit) async {
//       try {
//         emit(DataFetchLoading());
//         final dataList = await dataRepository.fetchData();
//         emit(DataFetchSuccess(dataList));
//       } catch (e) {
//         log(e.toString());
//         emit(DataFetchFailure());
//       }
//     });

//     on<UpdatePicture>((event, emit) async {
//       try {
//         log('UpdatePicture');
//       } catch (e) {
//         log(e.toString());
//         emit(DataFetchFailure());
//       }
//     });
//   }
// }
