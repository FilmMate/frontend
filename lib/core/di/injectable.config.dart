// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:film_mate/application/detail/detail_bloc.dart' as _i396;
import 'package:film_mate/application/explore/explore_bloc.dart' as _i673;
import 'package:film_mate/application/home/home_bloc.dart' as _i476;
import 'package:film_mate/application/main_navigator/main_navigator_bloc.dart'
    as _i873;
import 'package:film_mate/application/search/search_bloc.dart' as _i539;
import 'package:film_mate/application/user/user_bloc.dart' as _i316;
import 'package:film_mate/domain/services/detail_services.dart' as _i438;
import 'package:film_mate/domain/services/explore_services.dart' as _i909;
import 'package:film_mate/domain/services/genre_services.dart' as _i211;
import 'package:film_mate/domain/services/home_services.dart' as _i507;
import 'package:film_mate/domain/services/search_services.dart' as _i772;
import 'package:film_mate/infrastructure/detail/impl_detail.dart' as _i435;
import 'package:film_mate/infrastructure/explore/impl_explore.dart' as _i298;
import 'package:film_mate/infrastructure/genres/impl_genre.dart' as _i495;
import 'package:film_mate/infrastructure/home/impl_home.dart' as _i48;
import 'package:film_mate/infrastructure/search/impl_serch.dart' as _i520;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i873.MainNavigatorBloc>(() => _i873.MainNavigatorBloc());
    gh.factory<_i316.UserBloc>(() => _i316.UserBloc());
    gh.lazySingleton<_i909.ExploreServices>(() => _i298.GetLastestImpl());
    gh.lazySingleton<_i211.GenreServices>(() => _i495.ImplGenre());
    gh.lazySingleton<_i507.HomeServices>(() => _i48.ImplHome());
    gh.lazySingleton<_i438.DetailServices>(() => _i435.ImplDetail());
    gh.lazySingleton<_i772.SearchServices>(() => _i520.ImplSearch());
    gh.factory<_i396.DetailBloc>(
        () => _i396.DetailBloc(gh<_i438.DetailServices>()));
    gh.factory<_i476.HomeBloc>(() => _i476.HomeBloc(
          gh<_i507.HomeServices>(),
          gh<_i211.GenreServices>(),
        ));
    gh.factory<_i673.ExploreBloc>(
        () => _i673.ExploreBloc(gh<_i909.ExploreServices>()));
    gh.factory<_i539.SearchBloc>(
        () => _i539.SearchBloc(gh<_i772.SearchServices>()));
    return this;
  }
}
