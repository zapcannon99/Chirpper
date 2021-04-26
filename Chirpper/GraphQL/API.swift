// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// input type for inserting data into table "Chirpper.Comments"
public struct Chirpper_Comments_insert_input: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - post
  ///   - replies
  ///   - author
  ///   - createdAt
  ///   - deleted
  ///   - id
  ///   - message
  ///   - points
  ///   - postId
  ///   - replyParent
  public init(post: Swift.Optional<Chirpper_Posts_obj_rel_insert_input?> = nil, replies: Swift.Optional<Chirpper_Replies_arr_rel_insert_input?> = nil, author: Swift.Optional<String?> = nil, createdAt: Swift.Optional<String?> = nil, deleted: Swift.Optional<Bool?> = nil, id: Swift.Optional<String?> = nil, message: Swift.Optional<String?> = nil, points: Swift.Optional<String?> = nil, postId: Swift.Optional<String?> = nil, replyParent: Swift.Optional<Chirpper_Replies_arr_rel_insert_input?> = nil) {
    graphQLMap = ["Post": post, "Replies": replies, "author": author, "created_at": createdAt, "deleted": deleted, "id": id, "message": message, "points": points, "post_id": postId, "replyParent": replyParent]
  }

  public var post: Swift.Optional<Chirpper_Posts_obj_rel_insert_input?> {
    get {
      return graphQLMap["Post"] as? Swift.Optional<Chirpper_Posts_obj_rel_insert_input?> ?? Swift.Optional<Chirpper_Posts_obj_rel_insert_input?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Post")
    }
  }

  public var replies: Swift.Optional<Chirpper_Replies_arr_rel_insert_input?> {
    get {
      return graphQLMap["Replies"] as? Swift.Optional<Chirpper_Replies_arr_rel_insert_input?> ?? Swift.Optional<Chirpper_Replies_arr_rel_insert_input?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Replies")
    }
  }

  public var author: Swift.Optional<String?> {
    get {
      return graphQLMap["author"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "author")
    }
  }

  public var createdAt: Swift.Optional<String?> {
    get {
      return graphQLMap["created_at"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created_at")
    }
  }

  public var deleted: Swift.Optional<Bool?> {
    get {
      return graphQLMap["deleted"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deleted")
    }
  }

  public var id: Swift.Optional<String?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var message: Swift.Optional<String?> {
    get {
      return graphQLMap["message"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "message")
    }
  }

  public var points: Swift.Optional<String?> {
    get {
      return graphQLMap["points"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var postId: Swift.Optional<String?> {
    get {
      return graphQLMap["post_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "post_id")
    }
  }

  public var replyParent: Swift.Optional<Chirpper_Replies_arr_rel_insert_input?> {
    get {
      return graphQLMap["replyParent"] as? Swift.Optional<Chirpper_Replies_arr_rel_insert_input?> ?? Swift.Optional<Chirpper_Replies_arr_rel_insert_input?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "replyParent")
    }
  }
}

/// input type for inserting object relation for remote table "Chirpper.Posts"
public struct Chirpper_Posts_obj_rel_insert_input: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - data
  ///   - onConflict: on conflict condition
  public init(data: Chirpper_Posts_insert_input, onConflict: Swift.Optional<Chirpper_Posts_on_conflict?> = nil) {
    graphQLMap = ["data": data, "on_conflict": onConflict]
  }

  public var data: Chirpper_Posts_insert_input {
    get {
      return graphQLMap["data"] as! Chirpper_Posts_insert_input
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }

  /// on conflict condition
  public var onConflict: Swift.Optional<Chirpper_Posts_on_conflict?> {
    get {
      return graphQLMap["on_conflict"] as? Swift.Optional<Chirpper_Posts_on_conflict?> ?? Swift.Optional<Chirpper_Posts_on_conflict?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "on_conflict")
    }
  }
}

/// input type for inserting data into table "Chirpper.Posts"
public struct Chirpper_Posts_insert_input: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - comments
  ///   - author
  ///   - createdAt
  ///   - deleted
  ///   - id
  ///   - message
  ///   - points
  ///   - title
  ///   - url
  public init(comments: Swift.Optional<Chirpper_Comments_arr_rel_insert_input?> = nil, author: Swift.Optional<String?> = nil, createdAt: Swift.Optional<String?> = nil, deleted: Swift.Optional<Bool?> = nil, id: Swift.Optional<String?> = nil, message: Swift.Optional<String?> = nil, points: Swift.Optional<String?> = nil, title: Swift.Optional<String?> = nil, url: Swift.Optional<String?> = nil) {
    graphQLMap = ["Comments": comments, "author": author, "created_at": createdAt, "deleted": deleted, "id": id, "message": message, "points": points, "title": title, "url": url]
  }

  public var comments: Swift.Optional<Chirpper_Comments_arr_rel_insert_input?> {
    get {
      return graphQLMap["Comments"] as? Swift.Optional<Chirpper_Comments_arr_rel_insert_input?> ?? Swift.Optional<Chirpper_Comments_arr_rel_insert_input?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Comments")
    }
  }

  public var author: Swift.Optional<String?> {
    get {
      return graphQLMap["author"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "author")
    }
  }

  public var createdAt: Swift.Optional<String?> {
    get {
      return graphQLMap["created_at"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created_at")
    }
  }

  public var deleted: Swift.Optional<Bool?> {
    get {
      return graphQLMap["deleted"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deleted")
    }
  }

  public var id: Swift.Optional<String?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var message: Swift.Optional<String?> {
    get {
      return graphQLMap["message"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "message")
    }
  }

  public var points: Swift.Optional<String?> {
    get {
      return graphQLMap["points"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var url: Swift.Optional<String?> {
    get {
      return graphQLMap["url"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "url")
    }
  }
}

/// input type for inserting array relation for remote table "Chirpper.Comments"
public struct Chirpper_Comments_arr_rel_insert_input: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - data
  ///   - onConflict: on conflict condition
  public init(data: [Chirpper_Comments_insert_input], onConflict: Swift.Optional<Chirpper_Comments_on_conflict?> = nil) {
    graphQLMap = ["data": data, "on_conflict": onConflict]
  }

  public var data: [Chirpper_Comments_insert_input] {
    get {
      return graphQLMap["data"] as! [Chirpper_Comments_insert_input]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }

  /// on conflict condition
  public var onConflict: Swift.Optional<Chirpper_Comments_on_conflict?> {
    get {
      return graphQLMap["on_conflict"] as? Swift.Optional<Chirpper_Comments_on_conflict?> ?? Swift.Optional<Chirpper_Comments_on_conflict?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "on_conflict")
    }
  }
}

/// on conflict condition type for table "Chirpper.Comments"
public struct Chirpper_Comments_on_conflict: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - constraint
  ///   - updateColumns
  ///   - where
  public init(constraint: Chirpper_Comments_constraint, updateColumns: [Chirpper_Comments_update_column], `where`: Swift.Optional<Chirpper_Comments_bool_exp?> = nil) {
    graphQLMap = ["constraint": constraint, "update_columns": updateColumns, "where": `where`]
  }

  public var constraint: Chirpper_Comments_constraint {
    get {
      return graphQLMap["constraint"] as! Chirpper_Comments_constraint
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "constraint")
    }
  }

  public var updateColumns: [Chirpper_Comments_update_column] {
    get {
      return graphQLMap["update_columns"] as! [Chirpper_Comments_update_column]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update_columns")
    }
  }

  public var `where`: Swift.Optional<Chirpper_Comments_bool_exp?> {
    get {
      return graphQLMap["where"] as? Swift.Optional<Chirpper_Comments_bool_exp?> ?? Swift.Optional<Chirpper_Comments_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }
}

/// unique or primary key constraints on table "Chirpper.Comments"
public enum Chirpper_Comments_constraint: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// unique or primary key constraint
  case commentsPkey
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "Comments_pkey": self = .commentsPkey
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .commentsPkey: return "Comments_pkey"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Chirpper_Comments_constraint, rhs: Chirpper_Comments_constraint) -> Bool {
    switch (lhs, rhs) {
      case (.commentsPkey, .commentsPkey): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Chirpper_Comments_constraint] {
    return [
      .commentsPkey,
    ]
  }
}

/// update columns of table "Chirpper.Comments"
public enum Chirpper_Comments_update_column: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// column name
  case author
  /// column name
  case createdAt
  /// column name
  case deleted
  /// column name
  case id
  /// column name
  case message
  /// column name
  case points
  /// column name
  case postId
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "author": self = .author
      case "created_at": self = .createdAt
      case "deleted": self = .deleted
      case "id": self = .id
      case "message": self = .message
      case "points": self = .points
      case "post_id": self = .postId
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .author: return "author"
      case .createdAt: return "created_at"
      case .deleted: return "deleted"
      case .id: return "id"
      case .message: return "message"
      case .points: return "points"
      case .postId: return "post_id"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Chirpper_Comments_update_column, rhs: Chirpper_Comments_update_column) -> Bool {
    switch (lhs, rhs) {
      case (.author, .author): return true
      case (.createdAt, .createdAt): return true
      case (.deleted, .deleted): return true
      case (.id, .id): return true
      case (.message, .message): return true
      case (.points, .points): return true
      case (.postId, .postId): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Chirpper_Comments_update_column] {
    return [
      .author,
      .createdAt,
      .deleted,
      .id,
      .message,
      .points,
      .postId,
    ]
  }
}

/// Boolean expression to filter rows from the table "Chirpper.Comments". All fields are combined with a logical 'AND'.
public struct Chirpper_Comments_bool_exp: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - post
  ///   - replies
  ///   - _and
  ///   - _not
  ///   - _or
  ///   - author
  ///   - createdAt
  ///   - deleted
  ///   - id
  ///   - message
  ///   - points
  ///   - postId
  ///   - replyParent
  public init(post: Swift.Optional<Chirpper_Posts_bool_exp?> = nil, replies: Swift.Optional<Chirpper_Replies_bool_exp?> = nil, _and: Swift.Optional<[Chirpper_Comments_bool_exp]?> = nil, _not: Swift.Optional<Chirpper_Comments_bool_exp?> = nil, _or: Swift.Optional<[Chirpper_Comments_bool_exp]?> = nil, author: Swift.Optional<String_comparison_exp?> = nil, createdAt: Swift.Optional<timestamptz_comparison_exp?> = nil, deleted: Swift.Optional<Boolean_comparison_exp?> = nil, id: Swift.Optional<uuid_comparison_exp?> = nil, message: Swift.Optional<String_comparison_exp?> = nil, points: Swift.Optional<numeric_comparison_exp?> = nil, postId: Swift.Optional<uuid_comparison_exp?> = nil, replyParent: Swift.Optional<Chirpper_Replies_bool_exp?> = nil) {
    graphQLMap = ["Post": post, "Replies": replies, "_and": _and, "_not": _not, "_or": _or, "author": author, "created_at": createdAt, "deleted": deleted, "id": id, "message": message, "points": points, "post_id": postId, "replyParent": replyParent]
  }

  public var post: Swift.Optional<Chirpper_Posts_bool_exp?> {
    get {
      return graphQLMap["Post"] as? Swift.Optional<Chirpper_Posts_bool_exp?> ?? Swift.Optional<Chirpper_Posts_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Post")
    }
  }

  public var replies: Swift.Optional<Chirpper_Replies_bool_exp?> {
    get {
      return graphQLMap["Replies"] as? Swift.Optional<Chirpper_Replies_bool_exp?> ?? Swift.Optional<Chirpper_Replies_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Replies")
    }
  }

  public var _and: Swift.Optional<[Chirpper_Comments_bool_exp]?> {
    get {
      return graphQLMap["_and"] as? Swift.Optional<[Chirpper_Comments_bool_exp]?> ?? Swift.Optional<[Chirpper_Comments_bool_exp]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_and")
    }
  }

  public var _not: Swift.Optional<Chirpper_Comments_bool_exp?> {
    get {
      return graphQLMap["_not"] as? Swift.Optional<Chirpper_Comments_bool_exp?> ?? Swift.Optional<Chirpper_Comments_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_not")
    }
  }

  public var _or: Swift.Optional<[Chirpper_Comments_bool_exp]?> {
    get {
      return graphQLMap["_or"] as? Swift.Optional<[Chirpper_Comments_bool_exp]?> ?? Swift.Optional<[Chirpper_Comments_bool_exp]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_or")
    }
  }

  public var author: Swift.Optional<String_comparison_exp?> {
    get {
      return graphQLMap["author"] as? Swift.Optional<String_comparison_exp?> ?? Swift.Optional<String_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "author")
    }
  }

  public var createdAt: Swift.Optional<timestamptz_comparison_exp?> {
    get {
      return graphQLMap["created_at"] as? Swift.Optional<timestamptz_comparison_exp?> ?? Swift.Optional<timestamptz_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created_at")
    }
  }

  public var deleted: Swift.Optional<Boolean_comparison_exp?> {
    get {
      return graphQLMap["deleted"] as? Swift.Optional<Boolean_comparison_exp?> ?? Swift.Optional<Boolean_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deleted")
    }
  }

  public var id: Swift.Optional<uuid_comparison_exp?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<uuid_comparison_exp?> ?? Swift.Optional<uuid_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var message: Swift.Optional<String_comparison_exp?> {
    get {
      return graphQLMap["message"] as? Swift.Optional<String_comparison_exp?> ?? Swift.Optional<String_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "message")
    }
  }

  public var points: Swift.Optional<numeric_comparison_exp?> {
    get {
      return graphQLMap["points"] as? Swift.Optional<numeric_comparison_exp?> ?? Swift.Optional<numeric_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var postId: Swift.Optional<uuid_comparison_exp?> {
    get {
      return graphQLMap["post_id"] as? Swift.Optional<uuid_comparison_exp?> ?? Swift.Optional<uuid_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "post_id")
    }
  }

  public var replyParent: Swift.Optional<Chirpper_Replies_bool_exp?> {
    get {
      return graphQLMap["replyParent"] as? Swift.Optional<Chirpper_Replies_bool_exp?> ?? Swift.Optional<Chirpper_Replies_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "replyParent")
    }
  }
}

/// Boolean expression to filter rows from the table "Chirpper.Posts". All fields are combined with a logical 'AND'.
public struct Chirpper_Posts_bool_exp: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - comments
  ///   - _and
  ///   - _not
  ///   - _or
  ///   - author
  ///   - createdAt
  ///   - deleted
  ///   - id
  ///   - message
  ///   - points
  ///   - title
  ///   - url
  public init(comments: Swift.Optional<Chirpper_Comments_bool_exp?> = nil, _and: Swift.Optional<[Chirpper_Posts_bool_exp]?> = nil, _not: Swift.Optional<Chirpper_Posts_bool_exp?> = nil, _or: Swift.Optional<[Chirpper_Posts_bool_exp]?> = nil, author: Swift.Optional<String_comparison_exp?> = nil, createdAt: Swift.Optional<timestamptz_comparison_exp?> = nil, deleted: Swift.Optional<Boolean_comparison_exp?> = nil, id: Swift.Optional<uuid_comparison_exp?> = nil, message: Swift.Optional<String_comparison_exp?> = nil, points: Swift.Optional<numeric_comparison_exp?> = nil, title: Swift.Optional<String_comparison_exp?> = nil, url: Swift.Optional<String_comparison_exp?> = nil) {
    graphQLMap = ["Comments": comments, "_and": _and, "_not": _not, "_or": _or, "author": author, "created_at": createdAt, "deleted": deleted, "id": id, "message": message, "points": points, "title": title, "url": url]
  }

  public var comments: Swift.Optional<Chirpper_Comments_bool_exp?> {
    get {
      return graphQLMap["Comments"] as? Swift.Optional<Chirpper_Comments_bool_exp?> ?? Swift.Optional<Chirpper_Comments_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "Comments")
    }
  }

  public var _and: Swift.Optional<[Chirpper_Posts_bool_exp]?> {
    get {
      return graphQLMap["_and"] as? Swift.Optional<[Chirpper_Posts_bool_exp]?> ?? Swift.Optional<[Chirpper_Posts_bool_exp]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_and")
    }
  }

  public var _not: Swift.Optional<Chirpper_Posts_bool_exp?> {
    get {
      return graphQLMap["_not"] as? Swift.Optional<Chirpper_Posts_bool_exp?> ?? Swift.Optional<Chirpper_Posts_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_not")
    }
  }

  public var _or: Swift.Optional<[Chirpper_Posts_bool_exp]?> {
    get {
      return graphQLMap["_or"] as? Swift.Optional<[Chirpper_Posts_bool_exp]?> ?? Swift.Optional<[Chirpper_Posts_bool_exp]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_or")
    }
  }

  public var author: Swift.Optional<String_comparison_exp?> {
    get {
      return graphQLMap["author"] as? Swift.Optional<String_comparison_exp?> ?? Swift.Optional<String_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "author")
    }
  }

  public var createdAt: Swift.Optional<timestamptz_comparison_exp?> {
    get {
      return graphQLMap["created_at"] as? Swift.Optional<timestamptz_comparison_exp?> ?? Swift.Optional<timestamptz_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "created_at")
    }
  }

  public var deleted: Swift.Optional<Boolean_comparison_exp?> {
    get {
      return graphQLMap["deleted"] as? Swift.Optional<Boolean_comparison_exp?> ?? Swift.Optional<Boolean_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "deleted")
    }
  }

  public var id: Swift.Optional<uuid_comparison_exp?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<uuid_comparison_exp?> ?? Swift.Optional<uuid_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var message: Swift.Optional<String_comparison_exp?> {
    get {
      return graphQLMap["message"] as? Swift.Optional<String_comparison_exp?> ?? Swift.Optional<String_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "message")
    }
  }

  public var points: Swift.Optional<numeric_comparison_exp?> {
    get {
      return graphQLMap["points"] as? Swift.Optional<numeric_comparison_exp?> ?? Swift.Optional<numeric_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "points")
    }
  }

  public var title: Swift.Optional<String_comparison_exp?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String_comparison_exp?> ?? Swift.Optional<String_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var url: Swift.Optional<String_comparison_exp?> {
    get {
      return graphQLMap["url"] as? Swift.Optional<String_comparison_exp?> ?? Swift.Optional<String_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "url")
    }
  }
}

/// Boolean expression to compare columns of type "String". All fields are combined with logical 'AND'.
public struct String_comparison_exp: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - _eq
  ///   - _gt
  ///   - _gte
  ///   - _ilike: does the column match the given case-insensitive pattern
  ///   - _in
  ///   - _iregex: does the column match the given POSIX regular expression, case insensitive
  ///   - _isNull
  ///   - _like: does the column match the given pattern
  ///   - _lt
  ///   - _lte
  ///   - _neq
  ///   - _nilike: does the column NOT match the given case-insensitive pattern
  ///   - _nin
  ///   - _niregex: does the column NOT match the given POSIX regular expression, case insensitive
  ///   - _nlike: does the column NOT match the given pattern
  ///   - _nregex: does the column NOT match the given POSIX regular expression, case sensitive
  ///   - _nsimilar: does the column NOT match the given SQL regular expression
  ///   - _regex: does the column match the given POSIX regular expression, case sensitive
  ///   - _similar: does the column match the given SQL regular expression
  public init(_eq: Swift.Optional<String?> = nil, _gt: Swift.Optional<String?> = nil, _gte: Swift.Optional<String?> = nil, _ilike: Swift.Optional<String?> = nil, _in: Swift.Optional<[String]?> = nil, _iregex: Swift.Optional<String?> = nil, _isNull: Swift.Optional<Bool?> = nil, _like: Swift.Optional<String?> = nil, _lt: Swift.Optional<String?> = nil, _lte: Swift.Optional<String?> = nil, _neq: Swift.Optional<String?> = nil, _nilike: Swift.Optional<String?> = nil, _nin: Swift.Optional<[String]?> = nil, _niregex: Swift.Optional<String?> = nil, _nlike: Swift.Optional<String?> = nil, _nregex: Swift.Optional<String?> = nil, _nsimilar: Swift.Optional<String?> = nil, _regex: Swift.Optional<String?> = nil, _similar: Swift.Optional<String?> = nil) {
    graphQLMap = ["_eq": _eq, "_gt": _gt, "_gte": _gte, "_ilike": _ilike, "_in": _in, "_iregex": _iregex, "_is_null": _isNull, "_like": _like, "_lt": _lt, "_lte": _lte, "_neq": _neq, "_nilike": _nilike, "_nin": _nin, "_niregex": _niregex, "_nlike": _nlike, "_nregex": _nregex, "_nsimilar": _nsimilar, "_regex": _regex, "_similar": _similar]
  }

  public var _eq: Swift.Optional<String?> {
    get {
      return graphQLMap["_eq"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_eq")
    }
  }

  public var _gt: Swift.Optional<String?> {
    get {
      return graphQLMap["_gt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gt")
    }
  }

  public var _gte: Swift.Optional<String?> {
    get {
      return graphQLMap["_gte"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gte")
    }
  }

  /// does the column match the given case-insensitive pattern
  public var _ilike: Swift.Optional<String?> {
    get {
      return graphQLMap["_ilike"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_ilike")
    }
  }

  public var _in: Swift.Optional<[String]?> {
    get {
      return graphQLMap["_in"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_in")
    }
  }

  /// does the column match the given POSIX regular expression, case insensitive
  public var _iregex: Swift.Optional<String?> {
    get {
      return graphQLMap["_iregex"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_iregex")
    }
  }

  public var _isNull: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_is_null"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_is_null")
    }
  }

  /// does the column match the given pattern
  public var _like: Swift.Optional<String?> {
    get {
      return graphQLMap["_like"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_like")
    }
  }

  public var _lt: Swift.Optional<String?> {
    get {
      return graphQLMap["_lt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lt")
    }
  }

  public var _lte: Swift.Optional<String?> {
    get {
      return graphQLMap["_lte"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lte")
    }
  }

  public var _neq: Swift.Optional<String?> {
    get {
      return graphQLMap["_neq"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_neq")
    }
  }

  /// does the column NOT match the given case-insensitive pattern
  public var _nilike: Swift.Optional<String?> {
    get {
      return graphQLMap["_nilike"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_nilike")
    }
  }

  public var _nin: Swift.Optional<[String]?> {
    get {
      return graphQLMap["_nin"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_nin")
    }
  }

  /// does the column NOT match the given POSIX regular expression, case insensitive
  public var _niregex: Swift.Optional<String?> {
    get {
      return graphQLMap["_niregex"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_niregex")
    }
  }

  /// does the column NOT match the given pattern
  public var _nlike: Swift.Optional<String?> {
    get {
      return graphQLMap["_nlike"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_nlike")
    }
  }

  /// does the column NOT match the given POSIX regular expression, case sensitive
  public var _nregex: Swift.Optional<String?> {
    get {
      return graphQLMap["_nregex"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_nregex")
    }
  }

  /// does the column NOT match the given SQL regular expression
  public var _nsimilar: Swift.Optional<String?> {
    get {
      return graphQLMap["_nsimilar"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_nsimilar")
    }
  }

  /// does the column match the given POSIX regular expression, case sensitive
  public var _regex: Swift.Optional<String?> {
    get {
      return graphQLMap["_regex"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_regex")
    }
  }

  /// does the column match the given SQL regular expression
  public var _similar: Swift.Optional<String?> {
    get {
      return graphQLMap["_similar"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_similar")
    }
  }
}

/// Boolean expression to compare columns of type "timestamptz". All fields are combined with logical 'AND'.
public struct timestamptz_comparison_exp: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - _eq
  ///   - _gt
  ///   - _gte
  ///   - _in
  ///   - _isNull
  ///   - _lt
  ///   - _lte
  ///   - _neq
  ///   - _nin
  public init(_eq: Swift.Optional<String?> = nil, _gt: Swift.Optional<String?> = nil, _gte: Swift.Optional<String?> = nil, _in: Swift.Optional<[String]?> = nil, _isNull: Swift.Optional<Bool?> = nil, _lt: Swift.Optional<String?> = nil, _lte: Swift.Optional<String?> = nil, _neq: Swift.Optional<String?> = nil, _nin: Swift.Optional<[String]?> = nil) {
    graphQLMap = ["_eq": _eq, "_gt": _gt, "_gte": _gte, "_in": _in, "_is_null": _isNull, "_lt": _lt, "_lte": _lte, "_neq": _neq, "_nin": _nin]
  }

  public var _eq: Swift.Optional<String?> {
    get {
      return graphQLMap["_eq"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_eq")
    }
  }

  public var _gt: Swift.Optional<String?> {
    get {
      return graphQLMap["_gt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gt")
    }
  }

  public var _gte: Swift.Optional<String?> {
    get {
      return graphQLMap["_gte"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gte")
    }
  }

  public var _in: Swift.Optional<[String]?> {
    get {
      return graphQLMap["_in"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_in")
    }
  }

  public var _isNull: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_is_null"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_is_null")
    }
  }

  public var _lt: Swift.Optional<String?> {
    get {
      return graphQLMap["_lt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lt")
    }
  }

  public var _lte: Swift.Optional<String?> {
    get {
      return graphQLMap["_lte"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lte")
    }
  }

  public var _neq: Swift.Optional<String?> {
    get {
      return graphQLMap["_neq"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_neq")
    }
  }

  public var _nin: Swift.Optional<[String]?> {
    get {
      return graphQLMap["_nin"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_nin")
    }
  }
}

/// Boolean expression to compare columns of type "Boolean". All fields are combined with logical 'AND'.
public struct Boolean_comparison_exp: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - _eq
  ///   - _gt
  ///   - _gte
  ///   - _in
  ///   - _isNull
  ///   - _lt
  ///   - _lte
  ///   - _neq
  ///   - _nin
  public init(_eq: Swift.Optional<Bool?> = nil, _gt: Swift.Optional<Bool?> = nil, _gte: Swift.Optional<Bool?> = nil, _in: Swift.Optional<[Bool]?> = nil, _isNull: Swift.Optional<Bool?> = nil, _lt: Swift.Optional<Bool?> = nil, _lte: Swift.Optional<Bool?> = nil, _neq: Swift.Optional<Bool?> = nil, _nin: Swift.Optional<[Bool]?> = nil) {
    graphQLMap = ["_eq": _eq, "_gt": _gt, "_gte": _gte, "_in": _in, "_is_null": _isNull, "_lt": _lt, "_lte": _lte, "_neq": _neq, "_nin": _nin]
  }

  public var _eq: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_eq"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_eq")
    }
  }

  public var _gt: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_gt"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gt")
    }
  }

  public var _gte: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_gte"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gte")
    }
  }

  public var _in: Swift.Optional<[Bool]?> {
    get {
      return graphQLMap["_in"] as? Swift.Optional<[Bool]?> ?? Swift.Optional<[Bool]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_in")
    }
  }

  public var _isNull: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_is_null"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_is_null")
    }
  }

  public var _lt: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_lt"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lt")
    }
  }

  public var _lte: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_lte"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lte")
    }
  }

  public var _neq: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_neq"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_neq")
    }
  }

  public var _nin: Swift.Optional<[Bool]?> {
    get {
      return graphQLMap["_nin"] as? Swift.Optional<[Bool]?> ?? Swift.Optional<[Bool]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_nin")
    }
  }
}

/// Boolean expression to compare columns of type "uuid". All fields are combined with logical 'AND'.
public struct uuid_comparison_exp: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - _eq
  ///   - _gt
  ///   - _gte
  ///   - _in
  ///   - _isNull
  ///   - _lt
  ///   - _lte
  ///   - _neq
  ///   - _nin
  public init(_eq: Swift.Optional<String?> = nil, _gt: Swift.Optional<String?> = nil, _gte: Swift.Optional<String?> = nil, _in: Swift.Optional<[String]?> = nil, _isNull: Swift.Optional<Bool?> = nil, _lt: Swift.Optional<String?> = nil, _lte: Swift.Optional<String?> = nil, _neq: Swift.Optional<String?> = nil, _nin: Swift.Optional<[String]?> = nil) {
    graphQLMap = ["_eq": _eq, "_gt": _gt, "_gte": _gte, "_in": _in, "_is_null": _isNull, "_lt": _lt, "_lte": _lte, "_neq": _neq, "_nin": _nin]
  }

  public var _eq: Swift.Optional<String?> {
    get {
      return graphQLMap["_eq"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_eq")
    }
  }

  public var _gt: Swift.Optional<String?> {
    get {
      return graphQLMap["_gt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gt")
    }
  }

  public var _gte: Swift.Optional<String?> {
    get {
      return graphQLMap["_gte"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gte")
    }
  }

  public var _in: Swift.Optional<[String]?> {
    get {
      return graphQLMap["_in"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_in")
    }
  }

  public var _isNull: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_is_null"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_is_null")
    }
  }

  public var _lt: Swift.Optional<String?> {
    get {
      return graphQLMap["_lt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lt")
    }
  }

  public var _lte: Swift.Optional<String?> {
    get {
      return graphQLMap["_lte"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lte")
    }
  }

  public var _neq: Swift.Optional<String?> {
    get {
      return graphQLMap["_neq"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_neq")
    }
  }

  public var _nin: Swift.Optional<[String]?> {
    get {
      return graphQLMap["_nin"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_nin")
    }
  }
}

/// Boolean expression to compare columns of type "numeric". All fields are combined with logical 'AND'.
public struct numeric_comparison_exp: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - _eq
  ///   - _gt
  ///   - _gte
  ///   - _in
  ///   - _isNull
  ///   - _lt
  ///   - _lte
  ///   - _neq
  ///   - _nin
  public init(_eq: Swift.Optional<String?> = nil, _gt: Swift.Optional<String?> = nil, _gte: Swift.Optional<String?> = nil, _in: Swift.Optional<[String]?> = nil, _isNull: Swift.Optional<Bool?> = nil, _lt: Swift.Optional<String?> = nil, _lte: Swift.Optional<String?> = nil, _neq: Swift.Optional<String?> = nil, _nin: Swift.Optional<[String]?> = nil) {
    graphQLMap = ["_eq": _eq, "_gt": _gt, "_gte": _gte, "_in": _in, "_is_null": _isNull, "_lt": _lt, "_lte": _lte, "_neq": _neq, "_nin": _nin]
  }

  public var _eq: Swift.Optional<String?> {
    get {
      return graphQLMap["_eq"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_eq")
    }
  }

  public var _gt: Swift.Optional<String?> {
    get {
      return graphQLMap["_gt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gt")
    }
  }

  public var _gte: Swift.Optional<String?> {
    get {
      return graphQLMap["_gte"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_gte")
    }
  }

  public var _in: Swift.Optional<[String]?> {
    get {
      return graphQLMap["_in"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_in")
    }
  }

  public var _isNull: Swift.Optional<Bool?> {
    get {
      return graphQLMap["_is_null"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_is_null")
    }
  }

  public var _lt: Swift.Optional<String?> {
    get {
      return graphQLMap["_lt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lt")
    }
  }

  public var _lte: Swift.Optional<String?> {
    get {
      return graphQLMap["_lte"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_lte")
    }
  }

  public var _neq: Swift.Optional<String?> {
    get {
      return graphQLMap["_neq"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_neq")
    }
  }

  public var _nin: Swift.Optional<[String]?> {
    get {
      return graphQLMap["_nin"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_nin")
    }
  }
}

/// Boolean expression to filter rows from the table "Chirpper.Replies". All fields are combined with a logical 'AND'.
public struct Chirpper_Replies_bool_exp: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - _and
  ///   - _not
  ///   - _or
  ///   - parentId
  ///   - replyId
  public init(_and: Swift.Optional<[Chirpper_Replies_bool_exp]?> = nil, _not: Swift.Optional<Chirpper_Replies_bool_exp?> = nil, _or: Swift.Optional<[Chirpper_Replies_bool_exp]?> = nil, parentId: Swift.Optional<uuid_comparison_exp?> = nil, replyId: Swift.Optional<uuid_comparison_exp?> = nil) {
    graphQLMap = ["_and": _and, "_not": _not, "_or": _or, "parent_id": parentId, "reply_id": replyId]
  }

  public var _and: Swift.Optional<[Chirpper_Replies_bool_exp]?> {
    get {
      return graphQLMap["_and"] as? Swift.Optional<[Chirpper_Replies_bool_exp]?> ?? Swift.Optional<[Chirpper_Replies_bool_exp]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_and")
    }
  }

  public var _not: Swift.Optional<Chirpper_Replies_bool_exp?> {
    get {
      return graphQLMap["_not"] as? Swift.Optional<Chirpper_Replies_bool_exp?> ?? Swift.Optional<Chirpper_Replies_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_not")
    }
  }

  public var _or: Swift.Optional<[Chirpper_Replies_bool_exp]?> {
    get {
      return graphQLMap["_or"] as? Swift.Optional<[Chirpper_Replies_bool_exp]?> ?? Swift.Optional<[Chirpper_Replies_bool_exp]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "_or")
    }
  }

  public var parentId: Swift.Optional<uuid_comparison_exp?> {
    get {
      return graphQLMap["parent_id"] as? Swift.Optional<uuid_comparison_exp?> ?? Swift.Optional<uuid_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "parent_id")
    }
  }

  public var replyId: Swift.Optional<uuid_comparison_exp?> {
    get {
      return graphQLMap["reply_id"] as? Swift.Optional<uuid_comparison_exp?> ?? Swift.Optional<uuid_comparison_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reply_id")
    }
  }
}

/// on conflict condition type for table "Chirpper.Posts"
public struct Chirpper_Posts_on_conflict: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - constraint
  ///   - updateColumns
  ///   - where
  public init(constraint: Chirpper_Posts_constraint, updateColumns: [Chirpper_Posts_update_column], `where`: Swift.Optional<Chirpper_Posts_bool_exp?> = nil) {
    graphQLMap = ["constraint": constraint, "update_columns": updateColumns, "where": `where`]
  }

  public var constraint: Chirpper_Posts_constraint {
    get {
      return graphQLMap["constraint"] as! Chirpper_Posts_constraint
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "constraint")
    }
  }

  public var updateColumns: [Chirpper_Posts_update_column] {
    get {
      return graphQLMap["update_columns"] as! [Chirpper_Posts_update_column]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update_columns")
    }
  }

  public var `where`: Swift.Optional<Chirpper_Posts_bool_exp?> {
    get {
      return graphQLMap["where"] as? Swift.Optional<Chirpper_Posts_bool_exp?> ?? Swift.Optional<Chirpper_Posts_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }
}

/// unique or primary key constraints on table "Chirpper.Posts"
public enum Chirpper_Posts_constraint: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// unique or primary key constraint
  case postsPkey
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "Posts_pkey": self = .postsPkey
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .postsPkey: return "Posts_pkey"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Chirpper_Posts_constraint, rhs: Chirpper_Posts_constraint) -> Bool {
    switch (lhs, rhs) {
      case (.postsPkey, .postsPkey): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Chirpper_Posts_constraint] {
    return [
      .postsPkey,
    ]
  }
}

/// update columns of table "Chirpper.Posts"
public enum Chirpper_Posts_update_column: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// column name
  case author
  /// column name
  case createdAt
  /// column name
  case deleted
  /// column name
  case id
  /// column name
  case message
  /// column name
  case points
  /// column name
  case title
  /// column name
  case url
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "author": self = .author
      case "created_at": self = .createdAt
      case "deleted": self = .deleted
      case "id": self = .id
      case "message": self = .message
      case "points": self = .points
      case "title": self = .title
      case "url": self = .url
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .author: return "author"
      case .createdAt: return "created_at"
      case .deleted: return "deleted"
      case .id: return "id"
      case .message: return "message"
      case .points: return "points"
      case .title: return "title"
      case .url: return "url"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Chirpper_Posts_update_column, rhs: Chirpper_Posts_update_column) -> Bool {
    switch (lhs, rhs) {
      case (.author, .author): return true
      case (.createdAt, .createdAt): return true
      case (.deleted, .deleted): return true
      case (.id, .id): return true
      case (.message, .message): return true
      case (.points, .points): return true
      case (.title, .title): return true
      case (.url, .url): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Chirpper_Posts_update_column] {
    return [
      .author,
      .createdAt,
      .deleted,
      .id,
      .message,
      .points,
      .title,
      .url,
    ]
  }
}

/// input type for inserting array relation for remote table "Chirpper.Replies"
public struct Chirpper_Replies_arr_rel_insert_input: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - data
  ///   - onConflict: on conflict condition
  public init(data: [Chirpper_Replies_insert_input], onConflict: Swift.Optional<Chirpper_Replies_on_conflict?> = nil) {
    graphQLMap = ["data": data, "on_conflict": onConflict]
  }

  public var data: [Chirpper_Replies_insert_input] {
    get {
      return graphQLMap["data"] as! [Chirpper_Replies_insert_input]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }

  /// on conflict condition
  public var onConflict: Swift.Optional<Chirpper_Replies_on_conflict?> {
    get {
      return graphQLMap["on_conflict"] as? Swift.Optional<Chirpper_Replies_on_conflict?> ?? Swift.Optional<Chirpper_Replies_on_conflict?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "on_conflict")
    }
  }
}

/// input type for inserting data into table "Chirpper.Replies"
public struct Chirpper_Replies_insert_input: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - parentId
  ///   - replyId
  public init(parentId: Swift.Optional<String?> = nil, replyId: Swift.Optional<String?> = nil) {
    graphQLMap = ["parent_id": parentId, "reply_id": replyId]
  }

  public var parentId: Swift.Optional<String?> {
    get {
      return graphQLMap["parent_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "parent_id")
    }
  }

  public var replyId: Swift.Optional<String?> {
    get {
      return graphQLMap["reply_id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "reply_id")
    }
  }
}

/// on conflict condition type for table "Chirpper.Replies"
public struct Chirpper_Replies_on_conflict: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - constraint
  ///   - updateColumns
  ///   - where
  public init(constraint: Chirpper_Replies_constraint, updateColumns: [Chirpper_Replies_update_column], `where`: Swift.Optional<Chirpper_Replies_bool_exp?> = nil) {
    graphQLMap = ["constraint": constraint, "update_columns": updateColumns, "where": `where`]
  }

  public var constraint: Chirpper_Replies_constraint {
    get {
      return graphQLMap["constraint"] as! Chirpper_Replies_constraint
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "constraint")
    }
  }

  public var updateColumns: [Chirpper_Replies_update_column] {
    get {
      return graphQLMap["update_columns"] as! [Chirpper_Replies_update_column]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "update_columns")
    }
  }

  public var `where`: Swift.Optional<Chirpper_Replies_bool_exp?> {
    get {
      return graphQLMap["where"] as? Swift.Optional<Chirpper_Replies_bool_exp?> ?? Swift.Optional<Chirpper_Replies_bool_exp?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "where")
    }
  }
}

/// unique or primary key constraints on table "Chirpper.Replies"
public enum Chirpper_Replies_constraint: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// unique or primary key constraint
  case repliesPkey
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "Replies_pkey": self = .repliesPkey
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .repliesPkey: return "Replies_pkey"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Chirpper_Replies_constraint, rhs: Chirpper_Replies_constraint) -> Bool {
    switch (lhs, rhs) {
      case (.repliesPkey, .repliesPkey): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Chirpper_Replies_constraint] {
    return [
      .repliesPkey,
    ]
  }
}

/// update columns of table "Chirpper.Replies"
public enum Chirpper_Replies_update_column: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// column name
  case parentId
  /// column name
  case replyId
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "parent_id": self = .parentId
      case "reply_id": self = .replyId
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .parentId: return "parent_id"
      case .replyId: return "reply_id"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Chirpper_Replies_update_column, rhs: Chirpper_Replies_update_column) -> Bool {
    switch (lhs, rhs) {
      case (.parentId, .parentId): return true
      case (.replyId, .replyId): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Chirpper_Replies_update_column] {
    return [
      .parentId,
      .replyId,
    ]
  }
}

public final class GetCommentQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getComment($id: uuid!) {
      Chirpper_Comments(where: {id: {_eq: $id}}) {
        __typename
        id
        author
        created_at
        deleted
        message
        points
        post_id
        Replies {
          __typename
          reply_id
        }
        replyParent {
          __typename
          parent_id
        }
      }
    }
    """

  public let operationName: String = "getComment"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Chirpper_Comments", arguments: ["where": ["id": ["_eq": GraphQLVariable("id")]]], type: .nonNull(.list(.nonNull(.object(ChirpperComment.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(chirpperComments: [ChirpperComment]) {
      self.init(unsafeResultMap: ["__typename": "query_root", "Chirpper_Comments": chirpperComments.map { (value: ChirpperComment) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "Chirpper.Comments"
    public var chirpperComments: [ChirpperComment] {
      get {
        return (resultMap["Chirpper_Comments"] as! [ResultMap]).map { (value: ResultMap) -> ChirpperComment in ChirpperComment(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: ChirpperComment) -> ResultMap in value.resultMap }, forKey: "Chirpper_Comments")
      }
    }

    public struct ChirpperComment: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Chirpper_Comments"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("created_at", type: .nonNull(.scalar(String.self))),
          GraphQLField("deleted", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("message", type: .nonNull(.scalar(String.self))),
          GraphQLField("points", type: .nonNull(.scalar(String.self))),
          GraphQLField("post_id", type: .scalar(String.self)),
          GraphQLField("Replies", type: .nonNull(.list(.nonNull(.object(Reply.selections))))),
          GraphQLField("replyParent", type: .nonNull(.list(.nonNull(.object(ReplyParent.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, author: String, createdAt: String, deleted: Bool, message: String, points: String, postId: String? = nil, replies: [Reply], replyParent: [ReplyParent]) {
        self.init(unsafeResultMap: ["__typename": "Chirpper_Comments", "id": id, "author": author, "created_at": createdAt, "deleted": deleted, "message": message, "points": points, "post_id": postId, "Replies": replies.map { (value: Reply) -> ResultMap in value.resultMap }, "replyParent": replyParent.map { (value: ReplyParent) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var author: String {
        get {
          return resultMap["author"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "author")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["created_at"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "created_at")
        }
      }

      public var deleted: Bool {
        get {
          return resultMap["deleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "deleted")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var points: String {
        get {
          return resultMap["points"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "points")
        }
      }

      public var postId: String? {
        get {
          return resultMap["post_id"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "post_id")
        }
      }

      /// An array relationship
      public var replies: [Reply] {
        get {
          return (resultMap["Replies"] as! [ResultMap]).map { (value: ResultMap) -> Reply in Reply(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Reply) -> ResultMap in value.resultMap }, forKey: "Replies")
        }
      }

      /// An array relationship
      public var replyParent: [ReplyParent] {
        get {
          return (resultMap["replyParent"] as! [ResultMap]).map { (value: ResultMap) -> ReplyParent in ReplyParent(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: ReplyParent) -> ResultMap in value.resultMap }, forKey: "replyParent")
        }
      }

      public struct Reply: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Replies"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("reply_id", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(replyId: String) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Replies", "reply_id": replyId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var replyId: String {
          get {
            return resultMap["reply_id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "reply_id")
          }
        }
      }

      public struct ReplyParent: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Replies"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("parent_id", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(parentId: String) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Replies", "parent_id": parentId])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var parentId: String {
          get {
            return resultMap["parent_id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "parent_id")
          }
        }
      }
    }
  }
}

public final class DownVoteCommentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation downVoteComment($id: uuid!) {
      update_Chirpper_Comments(where: {id: {_eq: $id}}, _inc: {points: -1}) {
        __typename
        returning {
          __typename
          id
          points
        }
      }
    }
    """

  public let operationName: String = "downVoteComment"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["mutation_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("update_Chirpper_Comments", arguments: ["where": ["id": ["_eq": GraphQLVariable("id")]], "_inc": ["points": -1]], type: .object(UpdateChirpperComment.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateChirpperComments: UpdateChirpperComment? = nil) {
      self.init(unsafeResultMap: ["__typename": "mutation_root", "update_Chirpper_Comments": updateChirpperComments.flatMap { (value: UpdateChirpperComment) -> ResultMap in value.resultMap }])
    }

    /// update data of the table: "Chirpper.Comments"
    public var updateChirpperComments: UpdateChirpperComment? {
      get {
        return (resultMap["update_Chirpper_Comments"] as? ResultMap).flatMap { UpdateChirpperComment(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "update_Chirpper_Comments")
      }
    }

    public struct UpdateChirpperComment: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Chirpper_Comments_mutation_response"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("returning", type: .nonNull(.list(.nonNull(.object(Returning.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(returning: [Returning]) {
        self.init(unsafeResultMap: ["__typename": "Chirpper_Comments_mutation_response", "returning": returning.map { (value: Returning) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// data from the rows affected by the mutation
      public var returning: [Returning] {
        get {
          return (resultMap["returning"] as! [ResultMap]).map { (value: ResultMap) -> Returning in Returning(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Returning) -> ResultMap in value.resultMap }, forKey: "returning")
        }
      }

      public struct Returning: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Comments"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("points", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String, points: String) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Comments", "id": id, "points": points])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var points: String {
          get {
            return resultMap["points"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "points")
          }
        }
      }
    }
  }
}

public final class UpVoteCommentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation upVoteComment($id: uuid!) {
      update_Chirpper_Comments(where: {id: {_eq: $id}}, _inc: {points: 1}) {
        __typename
        returning {
          __typename
          id
          points
        }
      }
    }
    """

  public let operationName: String = "upVoteComment"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["mutation_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("update_Chirpper_Comments", arguments: ["where": ["id": ["_eq": GraphQLVariable("id")]], "_inc": ["points": 1]], type: .object(UpdateChirpperComment.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateChirpperComments: UpdateChirpperComment? = nil) {
      self.init(unsafeResultMap: ["__typename": "mutation_root", "update_Chirpper_Comments": updateChirpperComments.flatMap { (value: UpdateChirpperComment) -> ResultMap in value.resultMap }])
    }

    /// update data of the table: "Chirpper.Comments"
    public var updateChirpperComments: UpdateChirpperComment? {
      get {
        return (resultMap["update_Chirpper_Comments"] as? ResultMap).flatMap { UpdateChirpperComment(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "update_Chirpper_Comments")
      }
    }

    public struct UpdateChirpperComment: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Chirpper_Comments_mutation_response"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("returning", type: .nonNull(.list(.nonNull(.object(Returning.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(returning: [Returning]) {
        self.init(unsafeResultMap: ["__typename": "Chirpper_Comments_mutation_response", "returning": returning.map { (value: Returning) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// data from the rows affected by the mutation
      public var returning: [Returning] {
        get {
          return (resultMap["returning"] as! [ResultMap]).map { (value: ResultMap) -> Returning in Returning(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Returning) -> ResultMap in value.resultMap }, forKey: "returning")
        }
      }

      public struct Returning: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Comments"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("points", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String, points: String) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Comments", "id": id, "points": points])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var points: String {
          get {
            return resultMap["points"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "points")
          }
        }
      }
    }
  }
}

public final class CreateCommentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation createComment($comment: Chirpper_Comments_insert_input!) {
      insert_Chirpper_Comments(objects: [$comment]) {
        __typename
        returning {
          __typename
          author
          created_at
          deleted
          id
          message
          points
          post_id
          replyParent {
            __typename
            parent_id
          }
        }
      }
    }
    """

  public let operationName: String = "createComment"

  public var comment: Chirpper_Comments_insert_input

  public init(comment: Chirpper_Comments_insert_input) {
    self.comment = comment
  }

  public var variables: GraphQLMap? {
    return ["comment": comment]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["mutation_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("insert_Chirpper_Comments", arguments: ["objects": [GraphQLVariable("comment")]], type: .object(InsertChirpperComment.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertChirpperComments: InsertChirpperComment? = nil) {
      self.init(unsafeResultMap: ["__typename": "mutation_root", "insert_Chirpper_Comments": insertChirpperComments.flatMap { (value: InsertChirpperComment) -> ResultMap in value.resultMap }])
    }

    /// insert data into the table: "Chirpper.Comments"
    public var insertChirpperComments: InsertChirpperComment? {
      get {
        return (resultMap["insert_Chirpper_Comments"] as? ResultMap).flatMap { InsertChirpperComment(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "insert_Chirpper_Comments")
      }
    }

    public struct InsertChirpperComment: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Chirpper_Comments_mutation_response"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("returning", type: .nonNull(.list(.nonNull(.object(Returning.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(returning: [Returning]) {
        self.init(unsafeResultMap: ["__typename": "Chirpper_Comments_mutation_response", "returning": returning.map { (value: Returning) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// data from the rows affected by the mutation
      public var returning: [Returning] {
        get {
          return (resultMap["returning"] as! [ResultMap]).map { (value: ResultMap) -> Returning in Returning(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Returning) -> ResultMap in value.resultMap }, forKey: "returning")
        }
      }

      public struct Returning: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Comments"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("author", type: .nonNull(.scalar(String.self))),
            GraphQLField("created_at", type: .nonNull(.scalar(String.self))),
            GraphQLField("deleted", type: .nonNull(.scalar(Bool.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
            GraphQLField("points", type: .nonNull(.scalar(String.self))),
            GraphQLField("post_id", type: .scalar(String.self)),
            GraphQLField("replyParent", type: .nonNull(.list(.nonNull(.object(ReplyParent.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(author: String, createdAt: String, deleted: Bool, id: String, message: String, points: String, postId: String? = nil, replyParent: [ReplyParent]) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Comments", "author": author, "created_at": createdAt, "deleted": deleted, "id": id, "message": message, "points": points, "post_id": postId, "replyParent": replyParent.map { (value: ReplyParent) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var author: String {
          get {
            return resultMap["author"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "author")
          }
        }

        public var createdAt: String {
          get {
            return resultMap["created_at"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "created_at")
          }
        }

        public var deleted: Bool {
          get {
            return resultMap["deleted"]! as! Bool
          }
          set {
            resultMap.updateValue(newValue, forKey: "deleted")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }

        public var points: String {
          get {
            return resultMap["points"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "points")
          }
        }

        public var postId: String? {
          get {
            return resultMap["post_id"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "post_id")
          }
        }

        /// An array relationship
        public var replyParent: [ReplyParent] {
          get {
            return (resultMap["replyParent"] as! [ResultMap]).map { (value: ResultMap) -> ReplyParent in ReplyParent(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: ReplyParent) -> ResultMap in value.resultMap }, forKey: "replyParent")
          }
        }

        public struct ReplyParent: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Chirpper_Replies"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("parent_id", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(parentId: String) {
            self.init(unsafeResultMap: ["__typename": "Chirpper_Replies", "parent_id": parentId])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var parentId: String {
            get {
              return resultMap["parent_id"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "parent_id")
            }
          }
        }
      }
    }
  }
}

public final class GetNPostsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getNPosts($count: Int!) {
      Chirpper_Posts(order_by: {created_at: desc}, limit: $count) {
        __typename
        author
        deleted
        created_at
        id
        points
        title
        url
        Comments_aggregate {
          __typename
          aggregate {
            __typename
            count
          }
        }
      }
    }
    """

  public let operationName: String = "getNPosts"

  public var count: Int

  public init(count: Int) {
    self.count = count
  }

  public var variables: GraphQLMap? {
    return ["count": count]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Chirpper_Posts", arguments: ["order_by": ["created_at": "desc"], "limit": GraphQLVariable("count")], type: .nonNull(.list(.nonNull(.object(ChirpperPost.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(chirpperPosts: [ChirpperPost]) {
      self.init(unsafeResultMap: ["__typename": "query_root", "Chirpper_Posts": chirpperPosts.map { (value: ChirpperPost) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "Chirpper.Posts"
    public var chirpperPosts: [ChirpperPost] {
      get {
        return (resultMap["Chirpper_Posts"] as! [ResultMap]).map { (value: ResultMap) -> ChirpperPost in ChirpperPost(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: ChirpperPost) -> ResultMap in value.resultMap }, forKey: "Chirpper_Posts")
      }
    }

    public struct ChirpperPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Chirpper_Posts"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("deleted", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("created_at", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("points", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("url", type: .nonNull(.scalar(String.self))),
          GraphQLField("Comments_aggregate", type: .nonNull(.object(CommentsAggregate.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(author: String, deleted: Bool, createdAt: String, id: String, points: String, title: String, url: String, commentsAggregate: CommentsAggregate) {
        self.init(unsafeResultMap: ["__typename": "Chirpper_Posts", "author": author, "deleted": deleted, "created_at": createdAt, "id": id, "points": points, "title": title, "url": url, "Comments_aggregate": commentsAggregate.resultMap])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var author: String {
        get {
          return resultMap["author"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "author")
        }
      }

      public var deleted: Bool {
        get {
          return resultMap["deleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "deleted")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["created_at"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "created_at")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var points: String {
        get {
          return resultMap["points"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "points")
        }
      }

      public var title: String {
        get {
          return resultMap["title"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var url: String {
        get {
          return resultMap["url"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "url")
        }
      }

      /// An aggregate relationship
      public var commentsAggregate: CommentsAggregate {
        get {
          return CommentsAggregate(unsafeResultMap: resultMap["Comments_aggregate"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "Comments_aggregate")
        }
      }

      public struct CommentsAggregate: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Comments_aggregate"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("aggregate", type: .object(Aggregate.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(aggregate: Aggregate? = nil) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Comments_aggregate", "aggregate": aggregate.flatMap { (value: Aggregate) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var aggregate: Aggregate? {
          get {
            return (resultMap["aggregate"] as? ResultMap).flatMap { Aggregate(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "aggregate")
          }
        }

        public struct Aggregate: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Chirpper_Comments_aggregate_fields"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("count", type: .nonNull(.scalar(Int.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(count: Int) {
            self.init(unsafeResultMap: ["__typename": "Chirpper_Comments_aggregate_fields", "count": count])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var count: Int {
            get {
              return resultMap["count"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "count")
            }
          }
        }
      }
    }
  }
}

public final class GetPostQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query getPost($id: uuid!) {
      Chirpper_Posts(where: {id: {_eq: $id}}) {
        __typename
        author
        deleted
        created_at
        id
        message
        points
        title
        url
        Comments(order_by: {created_at: asc}) {
          __typename
          id
          Replies {
            __typename
            reply_id
          }
        }
      }
    }
    """

  public let operationName: String = "getPost"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["query_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("Chirpper_Posts", arguments: ["where": ["id": ["_eq": GraphQLVariable("id")]]], type: .nonNull(.list(.nonNull(.object(ChirpperPost.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(chirpperPosts: [ChirpperPost]) {
      self.init(unsafeResultMap: ["__typename": "query_root", "Chirpper_Posts": chirpperPosts.map { (value: ChirpperPost) -> ResultMap in value.resultMap }])
    }

    /// fetch data from the table: "Chirpper.Posts"
    public var chirpperPosts: [ChirpperPost] {
      get {
        return (resultMap["Chirpper_Posts"] as! [ResultMap]).map { (value: ResultMap) -> ChirpperPost in ChirpperPost(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: ChirpperPost) -> ResultMap in value.resultMap }, forKey: "Chirpper_Posts")
      }
    }

    public struct ChirpperPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Chirpper_Posts"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.scalar(String.self))),
          GraphQLField("deleted", type: .nonNull(.scalar(Bool.self))),
          GraphQLField("created_at", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("message", type: .scalar(String.self)),
          GraphQLField("points", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("url", type: .nonNull(.scalar(String.self))),
          GraphQLField("Comments", arguments: ["order_by": ["created_at": "asc"]], type: .nonNull(.list(.nonNull(.object(Comment.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(author: String, deleted: Bool, createdAt: String, id: String, message: String? = nil, points: String, title: String, url: String, comments: [Comment]) {
        self.init(unsafeResultMap: ["__typename": "Chirpper_Posts", "author": author, "deleted": deleted, "created_at": createdAt, "id": id, "message": message, "points": points, "title": title, "url": url, "Comments": comments.map { (value: Comment) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var author: String {
        get {
          return resultMap["author"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "author")
        }
      }

      public var deleted: Bool {
        get {
          return resultMap["deleted"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "deleted")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["created_at"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "created_at")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var message: String? {
        get {
          return resultMap["message"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }

      public var points: String {
        get {
          return resultMap["points"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "points")
        }
      }

      public var title: String {
        get {
          return resultMap["title"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var url: String {
        get {
          return resultMap["url"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "url")
        }
      }

      /// An array relationship
      public var comments: [Comment] {
        get {
          return (resultMap["Comments"] as! [ResultMap]).map { (value: ResultMap) -> Comment in Comment(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Comment) -> ResultMap in value.resultMap }, forKey: "Comments")
        }
      }

      public struct Comment: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Comments"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("Replies", type: .nonNull(.list(.nonNull(.object(Reply.selections))))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String, replies: [Reply]) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Comments", "id": id, "Replies": replies.map { (value: Reply) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// An array relationship
        public var replies: [Reply] {
          get {
            return (resultMap["Replies"] as! [ResultMap]).map { (value: ResultMap) -> Reply in Reply(unsafeResultMap: value) }
          }
          set {
            resultMap.updateValue(newValue.map { (value: Reply) -> ResultMap in value.resultMap }, forKey: "Replies")
          }
        }

        public struct Reply: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Chirpper_Replies"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("reply_id", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(replyId: String) {
            self.init(unsafeResultMap: ["__typename": "Chirpper_Replies", "reply_id": replyId])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var replyId: String {
            get {
              return resultMap["reply_id"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "reply_id")
            }
          }
        }
      }
    }
  }
}

public final class DownVotePostMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation downVotePost($id: uuid!) {
      update_Chirpper_Posts(where: {id: {_eq: $id}}, _inc: {points: -1}) {
        __typename
        returning {
          __typename
          id
          points
        }
      }
    }
    """

  public let operationName: String = "downVotePost"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["mutation_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("update_Chirpper_Posts", arguments: ["where": ["id": ["_eq": GraphQLVariable("id")]], "_inc": ["points": -1]], type: .object(UpdateChirpperPost.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateChirpperPosts: UpdateChirpperPost? = nil) {
      self.init(unsafeResultMap: ["__typename": "mutation_root", "update_Chirpper_Posts": updateChirpperPosts.flatMap { (value: UpdateChirpperPost) -> ResultMap in value.resultMap }])
    }

    /// update data of the table: "Chirpper.Posts"
    public var updateChirpperPosts: UpdateChirpperPost? {
      get {
        return (resultMap["update_Chirpper_Posts"] as? ResultMap).flatMap { UpdateChirpperPost(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "update_Chirpper_Posts")
      }
    }

    public struct UpdateChirpperPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Chirpper_Posts_mutation_response"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("returning", type: .nonNull(.list(.nonNull(.object(Returning.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(returning: [Returning]) {
        self.init(unsafeResultMap: ["__typename": "Chirpper_Posts_mutation_response", "returning": returning.map { (value: Returning) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// data from the rows affected by the mutation
      public var returning: [Returning] {
        get {
          return (resultMap["returning"] as! [ResultMap]).map { (value: ResultMap) -> Returning in Returning(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Returning) -> ResultMap in value.resultMap }, forKey: "returning")
        }
      }

      public struct Returning: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Posts"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("points", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String, points: String) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Posts", "id": id, "points": points])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var points: String {
          get {
            return resultMap["points"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "points")
          }
        }
      }
    }
  }
}

public final class UpVotePostMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation upVotePost($id: uuid!) {
      update_Chirpper_Posts(where: {id: {_eq: $id}}, _inc: {points: 1}) {
        __typename
        returning {
          __typename
          id
          points
        }
      }
    }
    """

  public let operationName: String = "upVotePost"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["mutation_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("update_Chirpper_Posts", arguments: ["where": ["id": ["_eq": GraphQLVariable("id")]], "_inc": ["points": 1]], type: .object(UpdateChirpperPost.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateChirpperPosts: UpdateChirpperPost? = nil) {
      self.init(unsafeResultMap: ["__typename": "mutation_root", "update_Chirpper_Posts": updateChirpperPosts.flatMap { (value: UpdateChirpperPost) -> ResultMap in value.resultMap }])
    }

    /// update data of the table: "Chirpper.Posts"
    public var updateChirpperPosts: UpdateChirpperPost? {
      get {
        return (resultMap["update_Chirpper_Posts"] as? ResultMap).flatMap { UpdateChirpperPost(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "update_Chirpper_Posts")
      }
    }

    public struct UpdateChirpperPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Chirpper_Posts_mutation_response"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("returning", type: .nonNull(.list(.nonNull(.object(Returning.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(returning: [Returning]) {
        self.init(unsafeResultMap: ["__typename": "Chirpper_Posts_mutation_response", "returning": returning.map { (value: Returning) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// data from the rows affected by the mutation
      public var returning: [Returning] {
        get {
          return (resultMap["returning"] as! [ResultMap]).map { (value: ResultMap) -> Returning in Returning(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Returning) -> ResultMap in value.resultMap }, forKey: "returning")
        }
      }

      public struct Returning: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Posts"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
            GraphQLField("points", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String, points: String) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Posts", "id": id, "points": points])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var points: String {
          get {
            return resultMap["points"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "points")
          }
        }
      }
    }
  }
}

public final class CreatePostMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation createPost($post: Chirpper_Posts_insert_input!) {
      insert_Chirpper_Posts(objects: [$post]) {
        __typename
        returning {
          __typename
          id
        }
      }
    }
    """

  public let operationName: String = "createPost"

  public var post: Chirpper_Posts_insert_input

  public init(post: Chirpper_Posts_insert_input) {
    self.post = post
  }

  public var variables: GraphQLMap? {
    return ["post": post]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["mutation_root"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("insert_Chirpper_Posts", arguments: ["objects": [GraphQLVariable("post")]], type: .object(InsertChirpperPost.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertChirpperPosts: InsertChirpperPost? = nil) {
      self.init(unsafeResultMap: ["__typename": "mutation_root", "insert_Chirpper_Posts": insertChirpperPosts.flatMap { (value: InsertChirpperPost) -> ResultMap in value.resultMap }])
    }

    /// insert data into the table: "Chirpper.Posts"
    public var insertChirpperPosts: InsertChirpperPost? {
      get {
        return (resultMap["insert_Chirpper_Posts"] as? ResultMap).flatMap { InsertChirpperPost(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "insert_Chirpper_Posts")
      }
    }

    public struct InsertChirpperPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Chirpper_Posts_mutation_response"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("returning", type: .nonNull(.list(.nonNull(.object(Returning.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(returning: [Returning]) {
        self.init(unsafeResultMap: ["__typename": "Chirpper_Posts_mutation_response", "returning": returning.map { (value: Returning) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// data from the rows affected by the mutation
      public var returning: [Returning] {
        get {
          return (resultMap["returning"] as! [ResultMap]).map { (value: ResultMap) -> Returning in Returning(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Returning) -> ResultMap in value.resultMap }, forKey: "returning")
        }
      }

      public struct Returning: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Chirpper_Posts"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: String) {
          self.init(unsafeResultMap: ["__typename": "Chirpper_Posts", "id": id])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: String {
          get {
            return resultMap["id"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }
      }
    }
  }
}
