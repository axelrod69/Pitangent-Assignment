import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/network/apiClient.dart';
import 'package:movie_app/features/homeScreen/data/datasource/translationDatasource.dart';
import 'package:movie_app/features/homeScreen/data/repository/translationRespositoryImpl.dart';
import 'package:movie_app/features/homeScreen/domain/repository/translationRepository.dart';
import 'package:movie_app/features/homeScreen/domain/usecase/translationUsecase.dart';

final apiClientProvider = Provider<BaseApiClient>((ref) => ApiClient());

final datasourceProvider = Provider<TranslationDatasource>(
    (ref) => TranslationDatasourceImpl(ref.read(apiClientProvider)));

final repositoryProvider = Provider<TranslationRepository>(
    (ref) => TranslationRepositoryImpl(ref.read(datasourceProvider)));

final translateTextUseCaseProvider = Provider<TranslationUseCase>(
    (ref) => TranslationUseCase(ref.read(repositoryProvider)));
