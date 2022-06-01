public class PrimitiveDataTypeDemo2 {
    //creating a method
    public void PrintBasicDataType() {
        //method body
    //data type  variable    value
        string batchName = 'Falcons';
        integer totalCandidates = 140;
        boolean isAdminCompleted = true;

        system.debug('batch name is ' + batchName);
        system.debug('total # of students: ' + totalCandidates);
        system.debug('Admin Completed? ' + isAdminCompleted);
        //decimal
        Decimal decValue = 27.34;
        system.debug('Decimal: ' + decValue);
        Long longValue = 23546851179L;
        system.debug('long: ' + longValue);

       //boss object
        object obj = 'This is a string';
        object obj2 = 10;

        system.debug('object 1 :'+ obj);
        system.debug('object 2:' + obj2);
       //id
        id id1 = '0018c00002Ewf8cAAB';
        system.debug('id' + id1);


    }
}
