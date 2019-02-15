//-----------------------------------------------------------------------------
//
// 3D camera module, based on initial code by Khris.
//
//-----------------------------------------------------------------------------

#define focalLength 600.0

struct Camera3D {
  import static void Init();
  import static void Update(float speed, float yaw, float pitch, float roll);
  /// Converts 3D position into 2D representation on screen, returns TRUE if point is visible.
  /// Arguments:
  ///  - pos[]: 4 floats defining position (x,y,z,w)
  ///  - size: original size of the object
  /// Conversion result is stored in screenPos, screenSize and screenRot.
  import static bool ToScreen(float pos[], float size);
};

import int SX, SY;
import Vec4 cam_pos, cam_dir, cam_up, cam_right;
import float totalRoll;
import Matrix viewProj;

// The means to store latest coordinates transformation from 3D to 2D screen
// (this is made for speed, of coding and execution)
import int screenPos[2]; // x,y pos
import int screenSize;   // 2D size
import int screenRot;    // 2D angle in rads
