#ifndef PHYSICSINTERSECTDATA_H_
#define PHYSICSINTERSECTDATA_H_
#include "../../include/utility/common.h"

#ifdef __cplusplus
 extern "C" {
#endif

struct _physicsIntersectData{
  const cbool doesInteract;
  const float distance;
};

typedef struct _physicsIntersectData Clim_physicsIntersectData;

#ifdef __cplusplus
 }
#endif


#endif //Physics Intersect data
