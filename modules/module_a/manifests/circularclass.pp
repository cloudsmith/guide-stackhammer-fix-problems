# A class can not inherit from itself
class egocentric inherits egocentric {}

# A class can not transitively inherit from itself
class child inherits mother {}

# A class can not transitively inherit from itself
class mother inherits child {}