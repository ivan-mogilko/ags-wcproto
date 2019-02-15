//-----------------------------------------------------------------------------
//
// Module handles creation, update and drawing of space objects.
//
//-----------------------------------------------------------------------------

#define MAX_SPACE_OBJECTS 100
#define MAX_PARTICLES     1000

struct SpaceObjects {
  import static void Init();
  import static void DrawAll(DrawingSurface *ds);
  
  /// Removes all space objects in the world
  import static void RemoveAllObjects();
  /// Adds a space object and assigns sprite to it; returns object's index or -1 if could not add one.
  import static int  AddObject(float x, float y, float z, float size, int sprite);
  
  /// Sets up space dust particles; returns actual maximal number of particles
  import static int  SetupSpaceDust(int max_count, int spawn_range, int min_size, int max_size, int grey_color1, int grey_color2);
};
