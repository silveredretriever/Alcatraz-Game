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
	
	remove = function(_name, _amount) {
		for (var _iterate = array_length(_inventory); _iterate > 0; --_iterate) {
			if (_name == _inventory[array_length(_inventory) - _iterate].name) {
				if (_amount >= _inventory[array_length(_inventory) - _iterate].amount) {
					array_delete(_inventory, array_length(_inventory) - _iterate, 1);
					return;
				} else {
					_inventory[array_length(_inventory) - _iterate].amount -= _amount;
					return;
				}
			}
		}
	}
	
	has = function(_name, _amount) {
		for (var _iterate = array_length(_inventory); _iterate > 0; --_iterate) {
			if (_name == _inventory[array_length(_inventory) - _iterate].name) {
				if (_amount > _inventory[array_length(_inventory) - _iterate].amount) {
					return false;
				} else {
					return true;
				}
			}
		}
		return false;
	}
	
	count = function() {
		return array_length(_inventory);
	}
}