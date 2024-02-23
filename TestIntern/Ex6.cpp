#include <iostream>
using namespace std;

    float Calculate(float x){
        float remaining_water, water_per_day;

        for (int i = 1; i <= 7; i++){
            water_per_day = x * (1.0 / 3);
            x = x - water_per_day;
            cout << " Remaining Water Day " << i << "  " << x << "Litre" <<endl;
        }

        remaining_water = x;
        return remaining_water;

    }
int main(){

    cout <<" Water in Tank  =  5832 Liter \n";
    float remaining_water = Calculate(5832);
    cout << "Water Remaining in 1 week " << remaining_water <<" Liter " << endl;
    return 0;
    
}

