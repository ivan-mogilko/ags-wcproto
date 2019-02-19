//-----------------------------------------------------------------------------
//
// Default camera controls module.
// Handles player input and moves/rotates camera.
//
//-----------------------------------------------------------------------------

#define MAX_SPEED 15000.0
#define SPEED_STEP 200.0

struct CameraControls {
  import static void Init(int space_object);
  import static void HandleInput();
  import static void Update(float dt);
};

import float speed;
