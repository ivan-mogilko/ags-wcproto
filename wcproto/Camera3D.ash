//-----------------------------------------------------------------------------
//
// 3D camera module, based on initial code by Khris.
//
//-----------------------------------------------------------------------------

#define focalLength 600.0

struct Camera3D {
  import static void Init();
  import static void Update(float speed, float yaw, float pitch, float roll);
};

import int SX, SY;
import Vec4 cam_pos, cam_dir, cam_up, cam_right;
import float totalRoll;
import Matrix viewProj;
