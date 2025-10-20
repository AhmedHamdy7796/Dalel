import 'package:go_router/go_router.dart';

void customRepalcementNavigate(context, String path) {
  GoRouter.of(context).push(path);
}

void customRepalacementNavigate(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
