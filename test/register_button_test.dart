import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_test/flutter_test.dart';
import 'package:keaz_clone/main.dart';
//import 'package:keaz_clone/views/screens/auth/auth_screen.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObServer extends Mock implements NavigatorObserver {}

void main() {
  testWidgets(
    'Test de transition vers la page d\'inscription',
    (WidgetTester tester) async {
      final mockObserver = MockNavigatorObServer();
      //tester.view.physicalSize = const Size(9900, 9440);

      await tester.pumpWidget(MaterialApp(
        home: const MainApp(),
        navigatorObservers: [mockObserver],
      ));
      await tester.pumpAndSettle();

      //final Finder authButton = find.text("Se connecter");
      final Finder authButton = find.byKey(const ValueKey('authButton'));
      expect(authButton, findsOneWidget);
      await tester.tap(authButton);
      await tester.pumpAndSettle();
      //verify(mockObserver.didPush(MaterialPageRoute(builder: (_) => const AuthScreen()), any));

      /*final Finder authScreen = find.byType(AuthScreen);
      expect(authScreen, findsOneWidget);
      final usernameField = find.text("Nom d'utilisateur");
      expect(usernameField, findsOneWidget);*/
    },
  );
}
