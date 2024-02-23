public class Ex6 {

    public static float calculate(float x) {
        float remainingWater, waterPerDay;

        for (int i = 1; i <= 7; i++) {
            waterPerDay = x * (1.0f / 3);
            x = x - waterPerDay;
            System.out.println("Remaining Water Day " + i + "  " + x + " Litre");
        }

        remainingWater = x;
        return remainingWater;
    }

    public static void main(String[] args) {
        System.out.println("Water in Tank  =  5832 Liter");
        float remainingWater = calculate(5832);
        System.out.println("Water Remaining in 1 week " + remainingWater + " Liter");
    }
}