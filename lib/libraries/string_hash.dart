int fastHash(String name) {
    /*var hash = 0xcbf29ce484222325;

    var i = 0;
    while (i < name.length) {
      final codeUnit = name.codeUnitAt(i++);
      hash ^= codeUnit >> 8;
      hash *= 0x100000001b3;
      hash ^= codeUnit & 0xFF;
      hash *= 0x100000001b3;
    }*/

    var hash = 0;
    
    for (var i = 0; i < name.length; ++i){
      hash += name.codeUnitAt(i);
      hash += (hash << 10);
      hash ^= (hash >> 6);
    }

    hash += (hash << 3);
    hash ^= (hash >> 11);
    hash += (hash << 15);

    return hash;
  }

int listHash(List<String> list){
  list.sort();
  final concat = list.join();
  return fastHash(concat);
}