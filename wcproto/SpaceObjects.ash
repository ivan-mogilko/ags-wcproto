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
  import static void UpdateAll(float dt);
  
  /// Removes all space objects in the world
  import static void RemoveAllObjects();
  /// Adds a space object and assigns sprite to it; returns object's index or -1 if could not add one.
  import static int  AddObject(float x, float y, float z, float size, int sprite);
  import static void RemoveObject(int obj);
  
  /// Sets up space dust particles; returns actual maximal number of particles
  import static int  SetupSpaceDust(int max_count, int spawn_range, int min_size, int max_size, int grey_color1, int grey_color2);
};

// TODO: exported these for the sake of simplicity at the moment.
// Must figure out a good API to connect different layers of abstraction for space objects!
import Vec4 SO_point[MAX_SPACE_OBJECTS];
import Vec4 SO_vel[MAX_SPACE_OBJECTS];
import Vec4 SO_dir[MAX_SPACE_OBJECTS];
// TODO: maybe "up" and "right" vectors with simplier value meaning rotation around "dir"?
// and calculate necessary vectors from "dir" and that value.
import Vec4 SO_up[MAX_SPACE_OBJECTS];
import Vec4 SO_right[MAX_SPACE_OBJECTS];
import Vec4 SO_angvel[MAX_SPACE_OBJECTS]; // angular velocity in rad/sec; relative to local axes!
// object lifetime, set <0 for endless life
import float SO_lifetime[MAX_SPACE_OBJECTS];
