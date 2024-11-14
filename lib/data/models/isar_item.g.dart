// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarItemCollection on Isar {
  IsarCollection<IsarItem> get isarItems => this.collection();
}

const IsarItemSchema = CollectionSchema(
  name: r'IsarItem',
  id: -655263535120235312,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'imgPath': PropertySchema(
      id: 1,
      name: r'imgPath',
      type: IsarType.string,
    ),
    r'isDiscovered': PropertySchema(
      id: 2,
      name: r'isDiscovered',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    )
  },
  estimateSize: _isarItemEstimateSize,
  serialize: _isarItemSerialize,
  deserialize: _isarItemDeserialize,
  deserializeProp: _isarItemDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {
    r'discoverables': LinkSchema(
      id: -8060638515556374062,
      name: r'discoverables',
      target: r'Discoverables',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _isarItemGetId,
  getLinks: _isarItemGetLinks,
  attach: _isarItemAttach,
  version: '3.1.0+1',
);

int _isarItemEstimateSize(
  IsarItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.imgPath.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _isarItemSerialize(
  IsarItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeString(offsets[1], object.imgPath);
  writer.writeBool(offsets[2], object.isDiscovered);
  writer.writeString(offsets[3], object.name);
}

IsarItem _isarItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarItem();
  object.description = reader.readString(offsets[0]);
  object.imgPath = reader.readString(offsets[1]);
  object.isDiscovered = reader.readBool(offsets[2]);
  object.name = reader.readString(offsets[3]);
  return object;
}

P _isarItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarItemGetId(IsarItem object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarItemGetLinks(IsarItem object) {
  return [object.discoverables];
}

void _isarItemAttach(IsarCollection<dynamic> col, Id id, IsarItem object) {
  object.discoverables
      .attach(col, col.isar.collection<Discoverables>(), r'discoverables', id);
}

extension IsarItemQueryWhereSort on QueryBuilder<IsarItem, IsarItem, QWhere> {
  QueryBuilder<IsarItem, IsarItem, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarItemQueryWhere on QueryBuilder<IsarItem, IsarItem, QWhereClause> {
  QueryBuilder<IsarItem, IsarItem, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarItemQueryFilter
    on QueryBuilder<IsarItem, IsarItem, QFilterCondition> {
  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imgPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imgPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imgPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imgPath',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> imgPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imgPath',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> isDiscoveredEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDiscovered',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }
}

extension IsarItemQueryObject
    on QueryBuilder<IsarItem, IsarItem, QFilterCondition> {}

extension IsarItemQueryLinks
    on QueryBuilder<IsarItem, IsarItem, QFilterCondition> {
  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition> discoverables(
      FilterQuery<Discoverables> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'discoverables');
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition>
      discoverablesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'discoverables', length, true, length, true);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition>
      discoverablesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'discoverables', 0, true, 0, true);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition>
      discoverablesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'discoverables', 0, false, 999999, true);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition>
      discoverablesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'discoverables', 0, true, length, include);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition>
      discoverablesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'discoverables', length, include, 999999, true);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterFilterCondition>
      discoverablesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'discoverables', lower, includeLower, upper, includeUpper);
    });
  }
}

extension IsarItemQuerySortBy on QueryBuilder<IsarItem, IsarItem, QSortBy> {
  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> sortByImgPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgPath', Sort.asc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> sortByImgPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgPath', Sort.desc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> sortByIsDiscovered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDiscovered', Sort.asc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> sortByIsDiscoveredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDiscovered', Sort.desc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension IsarItemQuerySortThenBy
    on QueryBuilder<IsarItem, IsarItem, QSortThenBy> {
  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByImgPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgPath', Sort.asc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByImgPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imgPath', Sort.desc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByIsDiscovered() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDiscovered', Sort.asc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByIsDiscoveredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDiscovered', Sort.desc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }
}

extension IsarItemQueryWhereDistinct
    on QueryBuilder<IsarItem, IsarItem, QDistinct> {
  QueryBuilder<IsarItem, IsarItem, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QDistinct> distinctByImgPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imgPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarItem, IsarItem, QDistinct> distinctByIsDiscovered() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDiscovered');
    });
  }

  QueryBuilder<IsarItem, IsarItem, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }
}

extension IsarItemQueryProperty
    on QueryBuilder<IsarItem, IsarItem, QQueryProperty> {
  QueryBuilder<IsarItem, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarItem, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<IsarItem, String, QQueryOperations> imgPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imgPath');
    });
  }

  QueryBuilder<IsarItem, bool, QQueryOperations> isDiscoveredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDiscovered');
    });
  }

  QueryBuilder<IsarItem, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }
}
