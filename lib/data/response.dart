import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
  // BaseResponse({this.status, this.message}); // todo: uncertain
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numberOfNotification")
  int? numOfNotification;

  CustomerResponse({this.id, this.name, this.numOfNotification});

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ContactsResponse {
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phone")
  String? phoneNO;
  @JsonKey(name: "link")
  String? link;

  ContactsResponse({this.email, this.phoneNO, this.link});
  factory ContactsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ContactsResponseToJson(this);
}

@JsonSerializable()
class AuthenticationResponse extends BaseResponse {
  @JsonKey(name: "customer")
  CustomerResponse? customerResponse;
  @JsonKey(name: "contacts")
  ContactsResponse? contactsResponse;

  AuthenticationResponse({this.customerResponse, this.contactsResponse});

  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}
