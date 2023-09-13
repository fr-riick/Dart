import 'dart:mirrors';

import 'package:oop/20_metadatas/pessoa.dart';

import 'fazer.dart';

void main(List<String> args) {
  final p1 = Pessoa();

  var instanceMirror = reflect(p1);

  ClassMirror classMirror = instanceMirror.type;

  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print('Class');
      print(instanceAnnotation.quem);
      print(instanceAnnotation.oque);
    }
  });

  classMirror.declarations.values.forEach((declarationMirror) {
    if (declarationMirror is VariableMirror) {
      declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print('Variaveis');
          print(instanceAnnotation.quem);
          print(instanceAnnotation.oque);
        }
      });
    } else if (declarationMirror is MethodMirror) {
      declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print('Método!!');
          print(instanceAnnotation.quem);
          print(instanceAnnotation.oque);
        }
      });
    }
  });
}
