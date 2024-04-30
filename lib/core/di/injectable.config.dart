// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:film_mate/application/detail/detail_bloc.dart' as _i9;
import 'package:film_mate/application/explore/explore_bloc.dart' as _i10;
import 'package:film_mate/application/home/home_bloc.dart' as _i3;
import 'package:film_mate/application/main_navigator/main_navigator_bloc.dart'
    as _i4;
import 'package:film_mate/domain/services/detail_services.dart' as _i7;
import 'package:film_mate/domain/services/explore_services.dart' as _i5;
import 'package:film_mate/infrastructure/detail/impl_detail.dart' as _i8;
import 'package:film_mate/infrastructure/explore/impl_explore.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.HomeBloc>(() => _i3.HomeBloc());
    gh.factory<_i4.MainNavigatorBloc>(() => _i4.MainNavigatorBloc());
    gh.lazySingleton<_i5.ExploreServices>(() => _i6.GetLastestImpl());
    gh.lazySingleton<_i7.DetailServices>(() => _i8.ImplDetail());
    gh.factory<_i9.DetailBloc>(() => _i9.DetailBloc(gh<_i7.DetailServices>()));
    gh.factory<_i10.ExploreBloc>(
        () => _i10.ExploreBloc(gh<_i5.ExploreServices>()));
    return this;
  }
}
