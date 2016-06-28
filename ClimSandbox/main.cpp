#include <QCoreApplication>
#include <include/ClimCLib.h>


extern void initializeSDLWithEverything();


int main(int argc, char *argv[])
{
  QCoreApplication a(argc, argv);

  initializeSDLWithEverything();
  Clim_window *window = (Clim_window*) malloc(sizeof(Clim_window));
  Clim_renderer *render1 = (Clim_renderer*)malloc(sizeof(Clim_renderer*));

  Clim_vector2u Clim_Static_DisplayResolutions[19] = {
      {800,600},{1024,600},{1024,768},
      {1152,865},{1280,720},{1280,800},
      {1280,1024},{1360,768},{1366,768},
      {1440,900},{1600,900},{1680,1050},
      {1920,1080},{1920,1200},{2560,1440},
      {2560,1600},{3840,2160},{1536,864},
    };

  Clim_vector2u resolution;
     resolution = Clim_Static_DisplayResolutions[1];


  createWindowWithVec2(window,"Clim Fourth test",resolution);
      createRenderer(render1,window,CLIM_2D);
  return a.exec();
}
