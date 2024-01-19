function Inventory() constructor {
	_inventory = [];
	
	add = function(_name, _sprite, _count) {
		array_push(_inventory, {
			name: _name,
			sprite: _sprite,
			amount: _count
		});
	}
	
	get = function(_position) {
		return _inventory[_position];
	}
	
	count = function() {
		return array_length(_inventory);
	}
}