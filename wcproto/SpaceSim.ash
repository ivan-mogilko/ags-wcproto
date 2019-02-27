//-----------------------------------------------------------------------------
//
// Module sets up and works with custom space simulation.
//
//-----------------------------------------------------------------------------

// number of custom object types
#define OBJECT_TYPE_NUMBER 10
#define TYPE_TORPEDO 0
#define TORPEDO_SPEED 1000.0

// TODO: better API
struct SpaceObjectType
{
  float size;
  float lifetime;
  int sprite; // TODO: multiple sprites to support seeing an object from different sides
};

import SpaceObjectType SpSim_SOTypes[OBJECT_TYPE_NUMBER];



struct SpaceSim
{
  // Fires a missile using defined type preset
  import static int FireMissile(int type, float x, float y, float z, float vx, float vy, float vz);
};
