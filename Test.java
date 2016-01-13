class Test {
    public static void main(String[] args) {
        for (int i = 1; i <= 10; i++) {
            System.out.println("Hello world " + i);

            try { Thread.sleep(1000);
            } catch (Exception e) { System.out.println("Exception caught: " + e);
            }
} } }