#ifndef GRAPHICS_COMMON_H_
#define GRAPHICS_COMMON_H_

#include <stdint.h>

#include "../../include/adt/vector2.h"
#include "../../include/adt/vector3.h"
#include "../../include/adt/vector4.h"
#include "../../include/utility/common.h"
#include "../../dep/SDL2-2.0.4/include/SDL.h"
#include "../../dep/Windows/SDL2_image-2.0.1/x86_64-w64-mingw32/include/SDL2/SDL_image.h"
#include "../../dep/SDL2-2.0.4/include/SDL_rect.h"



 extern cbool sdlIsInit;
  //static Clim_vector2u Clim_Static_DisplayResolutions[19];
  void initializeSDL(uint32_t flags);
  void initializeSDLWithEverything();

struct _colorui8{
  uint8_t r;
  uint8_t g;
  uint8_t b;
  uint8_t a;
};

  typedef struct _colorui8 Clim_colorui8;

Clim_colorui8 createColor(uint8_t r,uint8_t g, uint8_t b, uint8_t a);
uint32_t colorToUI32(Clim_colorui8 *color);

void logSDLError(const char * message);




#endif //Graphics_Common.h
