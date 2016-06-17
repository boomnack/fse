Warning: any event function that takes 'key' means a key in terms of the keymap.
The default keymap is:
keymap = {
  attack = 'z',
  item = 'x',
  interact = 'c',
  jump = 'space',
  up = 'up',
  down = 'down',
  left = 'left',
  right = 'right',
  menu = 'escape',
}

The following is a list of commands that can used in events:

getEntity(name) -- Returns the entity that has 'name', if it exists.
freezeEntity(entity) -- Disables the update function of 'entity'
unfreezeEntity(entity) -- Enables the update function of 'entity'

getEntities() -- Returns a table containing all current entities.
freezeEntities() -- Disables the update function of all entities.
unfreezeEntities() -- Enables the update function of all entities.

addMessage(text) -- Adds a line of text to the message box.
clearMessage() -- Clears any text off the message box.
showMessage() -- Make the message box visible (automatically called by
    addMessage).
hideMessage() -- Hide the message box.

endEvent(evNum) -- If evNum is not passed, end the current event. Otherwise, end
    event at index evNum.
sleep(time) -- Pause the event for 'time' seconds.

warp(map, x, y) -- Warp the player to 'map' at pixel coordinates 'x' and 'y'.
    Warning: will end the currently running event!
move(entity, x, y, time) -- Move 'entity' by x & y pixels over 'time' seconds.
moveTo(entity, x, y, time) -- Move 'entity' to position x,y over 'time' seconds.

waitFor(key) -- Pause the event until user presses key. 'key' defaults to
    interact, which is the c key.
down(key) -- Returns whether or not the given key is down.
battle(enemies) -- Starts a battle against 'enemies'. enemies should be a table
    of strings containing the names of enemies to battle, i.e. battle({ 'slug' })
