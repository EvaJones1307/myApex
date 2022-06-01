public class PrimitiveDataTypeDemo {
    public void PrintBasicDataType() {
        string batchName = 'Falcons';
        integer totalCandidates = 140;
        boolean isAdminCompleted = true;
        system.debug('batch name is ' + batchName);
        system.debug('total # of students: ' + totalCandidates);
        system.debug('Admin Completed? ' + isAdminCompleted);
        Decimal decValue = 27.34;
        system.debug('Decimal: ' + decValue);
        Long longValue = 235468579L;
        system.debug('long: ' + longValue);
    }
}