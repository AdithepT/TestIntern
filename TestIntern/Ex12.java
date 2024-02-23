public class Ex12 {
        public static void main(String[] args) {
            double batPrice; // ไม้ตี
            double ballPrice; // ลูกบอล
    
            // ราคารวม ไม้ตี และ ลูกบอล
            double total = 1.10;
    
            // หาค่าของลูกบอล
            ballPrice = (total - 1) / 2;
    
            // หาค่าของไม้ตี
            batPrice = ballPrice + 1;
    
            // แสดงผลลัพธ์
            System.out.println("Ball Price: " + ballPrice + " $");
            System.out.println("Bat Price: " + batPrice + " $");
        }
    }

