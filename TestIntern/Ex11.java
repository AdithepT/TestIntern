public class Ex11 {
    public static void main(String[] args) {
        int machines = 5;
        int productionPerMachine = 5;
        int targetProduction = 100;

        // คำนวณเวลาที่ใช้ในการผลิต 1 ชิ้น
        int timePerItem = 5 / productionPerMachine;

        // คำนวณเวลาที่ใช้ในการผลิตทั้งหมด
        int totalProductionTime = timePerItem * targetProduction;

        // คำนวณเวลาที่ใช้ในการให้เครื่องจักร 100 เครื่อง
        int totalTimeFor100Machines = totalProductionTime / machines;

        System.out.println("100 machine: " + totalTimeFor100Machines + " minute");
    }
}
