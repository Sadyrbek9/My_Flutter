import 'package:cubit_get_info/repositories/info_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  final InfoRepository infoRepository;

  HomeCubit(this.infoRepository)
      : super(HomeCubitState.init(productItems: infoRepository.getInfo(),),);
        
}
