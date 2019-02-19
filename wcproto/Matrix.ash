//-----------------------------------------------------------------------------
//
// Matrix44 and Vector4 module, originally written by Khris.
//
//-----------------------------------------------------------------------------

/// Makes a crossproduct of two vec3
import float[] Cross(float a[], float b[]);
/// Makes a crossproduct of two vec3 defined by separate components
import float[] CrossSix(float a0, float a1, float a2, float b0, float b1, float b2);

/// 4x4 Matrix
struct Matrix {
  float c[16];
  import float[] Get();
  import void Set(float c[]);
  import void Identity();
  import void Translate(float x, float y, float z);
  import void RotateX(float a);
  import void RotateY(float a);
  import void RotateZ(float a);
  import void InverseRot();
  import void Quaternion(float a, float b, float c, float d);
  import void createFromDirUp(float z[], float y[]);
  
  import void Perspective(float f, float aspect, float zNear, float zFar);
  
  import float[] NewMultiplyV(float v[]);
  import float[] NewMultiplyM(float c[]);
  
  import void CreateFromUnity(float x[], float y[], float z[]);
  
  import String ToString();
};

/// 4-component Vector
struct Vec4 {
  float x, y, z, w;
  import bool IsZero();
  import float Length();
  import void Normalize();
  import float[] Get();
  import int[] Get2D();
  import void Set(float c[]);
  import void SetXYZ(float x, float y, float z);
  import void SetXYZW(float x, float y, float z, float w);
  import void Add(float x, float y, float z);
  import void Cross(float a[], float b[]);
  import void Scale(float f);
  import String ToString();
};
