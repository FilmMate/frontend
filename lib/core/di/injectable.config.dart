// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:film_mate/application/detail/detail_bloc.dart' as _i13;
import 'package:film_mate/application/explore/explore_bloc.dart' as _i15;
import 'package:film_mate/application/home/home_bloc.dart' as _i14;
import 'package:film_mate/application/main_navigator/main_navigator_bloc.dart'
    as _i3;
import 'package:film_mate/application/search/search_bloc.dart' as _i16;
import 'package:film_mate/application/user/user_bloc.dart' as _i4;
import 'package:film_mate/domain/services/detail_services.dart' as _i9;
import 'package:film_mate/domain/services/explore_services.dart' as _i5;
import 'package:film_mate/domain/services/home_services.dart' as _i7;
import 'package:film_mate/domain/services/search_services.dart' as _i11;
import 'package:film_mate/infrastructure/detail/impl_detail.dart' as _i10;
import 'package:film_mate/infrastructure/explore/impl_explore.dart' as _i6;
import 'package:film_mate/infrastructure/home/impl_home.dart' as _i8;
import 'package:film_mate/infrastructure/search/impl_serch.dart' as _i12;
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
    gh.factory<_i3.MainNavigatorBloc>(() => _i3.MainNavigatorBloc());
    gh.factory<_i4.UserBloc>(() => _i4.UserBloc());
    gh.lazySingleton<_i5.ExploreServices>(() => _i6.GetLastestImpl());
    gh.lazySingleton<_i7.HomeServices>(() => _i8.ImplHome());
    gh.lazySingleton<_i9.DetailServices>(() => _i10.ImplDetail());
    gh.lazySingleton<_i11.SearchServices>(() => _i12.ImplSearch());
    gh.factory<_i13.DetailBloc>(
        () => _i13.DetailBloc(gh<_i9.DetailServices>()));
    gh.factory<_i14.HomeBloc>(() => _i14.HomeBloc(gh<_i7.HomeServices>()));
    gh.factory<_i15.ExploreBloc>(
        () => _i15.ExploreBloc(gh<_i5.ExploreServices>()));
    gh.factory<_i16.SearchBloc>(
        () => _i16.SearchBloc(gh<_i11.SearchServices>()));
    return this;
  }
}
