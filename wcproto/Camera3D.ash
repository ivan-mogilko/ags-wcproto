//-----------------------------------------------------------------------------
//
// 3D camera module, based on initial code by Khris.
//
//-----------------------------------------------------------------------------

#define focalLength 600.0

// 3D -> 2D conversion result
struct TransformResult
{
  int pos[2]; // x,y pos
  int size;   // 2D size
  int rot;    // 2D angle in rads
};

struct Camera3D {
  import static void Init();
  import static void UpdateTransforms();
  /// Converts 3D position into 2D representation on screen, returns TRUE if point is visible.
  /// Arguments:
  ///  - pos[]: 4 floats defining position (x,y,z,w)
  ///  - size: original size of the object
  /// Conversion result is stored in screenPos, screenSize and screenRot.
  import static bool ToScreen(float pos[], float size);
};

import int SX, SY;
import Vec4 cam_pos;
import Vec4 cam_dir, cam_up, cam_right;
import float camera_roll; // used for sprite rotation
import Matrix viewProj;

// The means to store latest coordinates transformation from 3D to 2D screen
// (this is made for speed, of coding and execution)
import TransformResult scr_pos;
