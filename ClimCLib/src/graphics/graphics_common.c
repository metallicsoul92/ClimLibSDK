#include "../../include/graphics/graphics_common.h"
#include <stdio.h>
//Display Resolutions
/*static Clim_vector2u Clim_Static_DisplayResolutions[19] = {
  {800,600},{1024,600},{1024,768},
  {1152,865},{1280,720},{1280,800},
  {1280,1024},{1360,768},{1366,768},
  {1440,900},{1600,900},{1680,1050},
  {1920,1080},{1920,1200},{2560,1440},
  {2560,1600},{3840,2160},{1536,864},
};
*/

  cbool sdlIsInit = FALSE;

void initializeSDL(uint32_t flags){
  if(sdlIsInit != FALSE){
    printf("Warning, SDL is already initialized\n");
    printf("SEEN FROM: graphics_common.c line 16: initializeSDL\n");
  }
  SDL_Init(flags);
  sdlIsInit = TRUE;
}
void initializeSDLWithEverything(){
  if(sdlIsInit !=FALSE){
    printf("Warning, SDL is already initialized\n");
    printf("SEEN FROM: graphics_common.c line 24: initializeSDLWithEverything\n");
  }
  SDL_Init(SDL_INIT_EVERYTHING);
  sdlIsInit = TRUE;
}

Clim_colorui8 createColor(uint8_t r,uint8_t g, uint8_t b, uint8_t a){
  Clim_colorui8 temp;
  temp.r = r;
  temp.g = g;
  temp.b = b;
  temp.a = a;

  return temp;
}



uint32_t colorToUI32(Clim_colorui8 *color){
  uint32_t color32;
  color32 = color->r | (color->g << 8) | (color->b <<16) | (color->a << 24);
  return color32;
}

void logSDLError(const char * message){
  printf("%s error: %s\n",message,SDL_GetError());
}
