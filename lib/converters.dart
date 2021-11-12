
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:qomalin_app/models/entities/question.dart';

import 'models/entities/user.dart';

extension DocumentReferenceT<T> on DocumentReference {
  DocumentReference<User> withUserConverter() {
    return withConverter(
        fromFirestore: (DocumentSnapshot<Map<String, dynamic>> ds, _) {
          return User.fromDocument(ds);
        },
        toFirestore: (User user, _) {
          return user.toMap();
        }
    );
  }
}

extension CollectionReferenceT<T> on CollectionReference {
  CollectionReference<User> withUserConverter() {
    return withConverter(
      fromFirestore: (DocumentSnapshot<Map<String, dynamic>> ds, _) {
        return User.fromDocument(ds);
      },
      toFirestore: (User user, _) {
        return user.toMap();
      }
    );
  }

  CollectionReference<Question> withQuestionConverter() {
    return withConverter(
      fromFirestore: (DocumentSnapshot<Map<String, dynamic>> ds, _) {
        return Question.fromDocument(ds);
      },
      toFirestore: (Question question, _) {
        return question.toMap();
      }
    );
  }
}