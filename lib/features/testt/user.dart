class User {
	String? name;
	int? age;
	dynamic car;

	User({this.name, this.age, this.car});

	factory User.fromNameJohnAge30CarNull(Map<String, dynamic> json) => User(
				name: json['name'] as String?,
				age: json['age'] as int?,
				car: json['car'] as dynamic,
			);

	Map<String, dynamic> toNameJohnAge30CarNull() => {
				'name': name,
				'age': age,
				'car': car,
			};
}
