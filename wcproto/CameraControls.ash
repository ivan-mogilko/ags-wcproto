//-----------------------------------------------------------------------------
//
// Default camera controls module.
// Handles player input and moves/rotates camera.
//
//-----------------------------------------------------------------------------

struct CameraControls {
  import static void Init();
  import static void HandleInput();
};

import float speed;
import float yaw, pitch, roll;