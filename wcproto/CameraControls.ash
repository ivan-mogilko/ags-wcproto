//-----------------------------------------------------------------------------
//
// Default camera controls module.
// Handles player input and moves/rotates camera.
//
//-----------------------------------------------------------------------------

struct CameraControls {
  import static void Init(int space_object);
  import static void HandleInput();
  import static void Update();
};

import float speed;
import float yaw, pitch, roll;