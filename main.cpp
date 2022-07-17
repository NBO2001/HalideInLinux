#include "iostream"
#include "Halide.h"
#include "halide_image_io.h"

using namespace std;
using namespace Halide;
using namespace Halide::Tools;

int main(int argc, char **argv){

    // Load Image
    Buffer<uint8_t> input = load_image("imgs/spy.png");

    Func bright;
    Var x,y,c;
    Expr value = input(x,y,c);

    value = cast<float>(value);

    value = value * 2.5f;

    value = min(value, 255.0f);

    value = cast<uint8_t>(value);

    bright(x,y,c) = value;    

    
    Halide::Buffer<uint8_t> output =
        bright.realize({input.width(), input.height(), input.channels()});

    save_image(output, "output/spyB.png");

    cout << "Sucesso" << endl;
    return 0;
}
