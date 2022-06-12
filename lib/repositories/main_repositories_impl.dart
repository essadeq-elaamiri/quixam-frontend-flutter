import 'package:quixam_frontend_flutter/entities/teacher.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

class MainRepositoryImp implements MainRepository{
  // lets concider that this is teachers login
  String logedinTeacher = """
{
            "_id": "62718bf3fc6495a9942d2a59",
            "firstname": "sslma",
            "lastname": "test",
            "email": "loubna@gmail.com",
            "password": "password",
            "createdAt": "2022-05-03T20:09:23.269Z",
            "updatedAt": "2022-05-04T14:34:00.982Z",
            "__v": 0,
            "quizes": [
                "62725c788e92aab06719995d"
            ]
        }
""";

  @override
  Teacher? login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
  
}