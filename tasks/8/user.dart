class User {
  static var _userManager = UserManager();
  String email;

  static void printUsers() {
    _userManager._printUsers();
  }

  void remove() {
    _userManager._removeUser(this);
    this.email = '';
  }

  User(this.email) {
    _userManager._addUser(this);
  }
}

mixin HaveMailSystem on User {
  String getMailSystem() {
    return this.email.substring(this.email.indexOf(RegExp(r'@.')) + 1);
  }
}

class AdminUser extends User with HaveMailSystem {
  AdminUser(super.email);
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

class UserManager<T extends User> {
  var _cache = <T>{};

  void _addUser(T user) {
    this._cache.add(user);
  }

  void _removeUser(T user) {
    this._cache.remove(user);
  }

  void _printUsers() {
    print('List of users:');

    for (var user in _cache) {
      if (user is AdminUser) {
        print(user.getMailSystem());
      } else {
        print(user.email);
      }
    }
  }
}
