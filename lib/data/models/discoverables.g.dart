// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discoverables.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDiscoverablesCollection on Isar {
  IsarCollection<Discoverables> get discoverables => this.collection();
}

const DiscoverablesSchema = CollectionSchema(
  name: r'Discoverables',
  id: 8081473871589367575,
  properties: {
    r'discoverables': PropertySchema(
      id: 0,
      name: r'discoverables',
      type: IsarType.stringList,
    ),
    r'item': PropertySchema(
      id: 1,
      name: r'item',
      type: IsarType.string,
    )
  },
  estimateSize: _discoverablesEstimateSize,
  serialize: _discoverablesSerialize,
  deserialize: _discoverablesDeserialize,
  deserializeProp: _discoverablesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _discoverablesGetId,
  getLinks: _discoverablesGetLinks,
  attach: _discoverablesAttach,
  version: '3.1.0+1',
);

int _discoverablesEstimateSize(
  Discoverables object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.discoverables.length * 3;
  {
    for (var i = 0; i < object.discoverables.length; i++) {
      final value = object.discoverables[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.item.length * 3;
  return bytesCount;
}

void _discoverablesSerialize(
  Discoverables object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.discoverables);
  writer.writeString(offsets[1], object.item);
}

Discoverables _discoverablesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Discoverables();
  object.discoverables = reader.readStringList(offsets[0]) ?? [];
  object.id = id;
  object.item = reader.readString(offsets[1]);
  return object;
}

P _discoverablesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _discoverablesGetId(Discoverables object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _discoverablesGetLinks(Discoverables object) {
  return [];
}

void _discoverablesAttach(
    IsarCollection<dynamic> col, Id id, Discoverables object) {
  object.id = id;
}

extension DiscoverablesQueryWhereSort
    on QueryBuilder<Discoverables, Discoverables, QWhere> {
  QueryBuilder<Discoverables, Discoverables, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DiscoverablesQueryWhere
    on QueryBuilder<Discoverables, Discoverables, QWhereClause> {
  QueryBuilder<Discoverables, Discoverables, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DiscoverablesQueryFilter
    on QueryBuilder<Discoverables, Discoverables, QFilterCondition> {
  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discoverables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discoverables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discoverables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discoverables',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'discoverables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'discoverables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'discoverables',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'discoverables',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discoverables',
        value: '',
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'discoverables',
        value: '',
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discoverables',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discoverables',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discoverables',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discoverables',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discoverables',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      discoverablesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'discoverables',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition> itemEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      itemGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      itemLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition> itemBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'item',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      itemStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      itemEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      itemContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'item',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition> itemMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'item',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      itemIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'item',
        value: '',
      ));
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterFilterCondition>
      itemIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'item',
        value: '',
      ));
    });
  }
}

extension DiscoverablesQueryObject
    on QueryBuilder<Discoverables, Discoverables, QFilterCondition> {}

extension DiscoverablesQueryLinks
    on QueryBuilder<Discoverables, Discoverables, QFilterCondition> {}

extension DiscoverablesQuerySortBy
    on QueryBuilder<Discoverables, Discoverables, QSortBy> {
  QueryBuilder<Discoverables, Discoverables, QAfterSortBy> sortByItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item', Sort.asc);
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterSortBy> sortByItemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item', Sort.desc);
    });
  }
}

extension DiscoverablesQuerySortThenBy
    on QueryBuilder<Discoverables, Discoverables, QSortThenBy> {
  QueryBuilder<Discoverables, Discoverables, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterSortBy> thenByItem() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item', Sort.asc);
    });
  }

  QueryBuilder<Discoverables, Discoverables, QAfterSortBy> thenByItemDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'item', Sort.desc);
    });
  }
}

extension DiscoverablesQueryWhereDistinct
    on QueryBuilder<Discoverables, Discoverables, QDistinct> {
  QueryBuilder<Discoverables, Discoverables, QDistinct>
      distinctByDiscoverables() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discoverables');
    });
  }

  QueryBuilder<Discoverables, Discoverables, QDistinct> distinctByItem(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'item', caseSensitive: caseSensitive);
    });
  }
}

extension DiscoverablesQueryProperty
    on QueryBuilder<Discoverables, Discoverables, QQueryProperty> {
  QueryBuilder<Discoverables, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Discoverables, List<String>, QQueryOperations>
      discoverablesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discoverables');
    });
  }

  QueryBuilder<Discoverables, String, QQueryOperations> itemProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'item');
    });
  }
}
