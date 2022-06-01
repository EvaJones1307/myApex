public class NumberRecords {
    public static void numNum() {
        List<Integer> numbers = new List<Integer>();
        numbers.add(2);
        numbers.add(6);
        numbers.add(12);
        numbers.add(57);
        numbers.add(68);

        system.debug(numbers);
        system.debug('Is 12 present in the list ?==> ' + numbers.contains(12));

    }
}
